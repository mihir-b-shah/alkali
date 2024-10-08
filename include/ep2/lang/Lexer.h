//===- Lexer.h - Lexer for the Toy language -------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements a simple Lexer for the Toy language.
//
//===----------------------------------------------------------------------===//

#ifndef EP2_LEXER_H
#define EP2_LEXER_H

#include "llvm/ADT/StringRef.h"
#include "llvm/Support/raw_ostream.h"

#include <memory>
#include <string>
#include <queue>

namespace ep2 {

/// Structure definition a location in a file.
struct Location {
  std::shared_ptr<std::string> file; ///< filename.
  int line;                          ///< line number.
  int col;                           ///< column number.
};

// List of Token returned by the lexer.
enum Token : int {
  tok_semicolon = ';',
  tok_parenthese_open = '(',
  tok_parenthese_close = ')',
  tok_bracket_open = '{',
  tok_bracket_close = '}',
  tok_angle_bracket_open = '<',
  tok_angle_bracket_close = '>',
  tok_sbracket_open = '[',
  tok_sbracket_close = ']',
  tok_colon = ':',
  tok_dot = '.',
  tok_eq = '=',

  tok_eof = -1,

  // commands
  tok_return = -2,
  tok_var = -3,
  tok_def = -4,
  tok_struct = -5,
  tok_event = -6,
  tok_handler = -7,
  tok_controller = -8,
  tok_generate = -9,
  tok_extern = -10,
  tok_global = -11,
  tok_scope = -12,

  tok_if = -13,
  tok_else = -14,

  // cmp ops
  tok_cmp_eq = -40,
  tok_cmp_le = -41,
  tok_cmp_ge = -42,

  // primary
  tok_identifier = -56,
  tok_number = -57,
};

/// The Lexer is an abstract base class providing all the facilities that the
/// Parser expects. It goes through the stream one token at a time and keeps
/// track of the location in the file for debugging purpose.
/// It relies on a subclass to provide a `readNextLine()` method. The subclass
/// can proceed by reading the next line from the standard input or from a
/// memory mapped file.
class Lexer {
public:
  /// Create a lexer for the given filename. The filename is kept only for
  /// debugging purpose (attaching a location to a Token).
  Lexer(std::string filename)
      : lastLocation(
            {std::make_shared<std::string>(std::move(filename)), 0, 0}) {}
  virtual ~Lexer() = default;

  /// Look at the current token in the stream.
  Token getCurToken() { return curTok; }

  /// Move to the next token in the stream and return it.
  Token getNextToken() { return curTok = getTok(false); }

  Token peekNextToken() { return getTok(true); }

  /// Move to the next token in the stream, asserting on the current token
  /// matching the expectation.
  inline void checkConsume(Token token) {
    if (getCurToken() != token)
      llvm::errs() << "Parse error (" << getLastLocation().line << ", "
                   << getLastLocation().col << "): expected '" << token
                   << "' but has Token " << getCurToken() << "\n";
    consume(token);
  }

  inline void consume(Token tok) {
    assert(tok == curTok && "consume Token mismatch expectation");
    getNextToken();
  }

  /// Return the current identifier (prereq: getCurToken() == tok_identifier)
  llvm::StringRef getId() {
    assert(curTok == tok_identifier);
    return getIdentiferStr();
  }

  /// Return the current number (prereq: getCurToken() == tok_number)
  double getValue() {
    assert(curTok == tok_number);
    return numVal;
  }

  /// Return the location for the beginning of the current token.
  Location getLastLocation() { return lastLocation; }

  // Return the current line in the file.
  int getLine() { return curLineNum; }

  // Return the current column in the file.
  int getCol() { return curCol; }

private:
  /// Delegate to a derived class fetching the next line. Returns an empty
  /// string to signal end of file (EOF). Lines are expected to always finish
  /// with "\n"
  virtual llvm::StringRef readNextLine() = 0;

  /// Return the next character from the stream. This manages the buffer for the
  /// current line and request the next line buffer to the derived class as
  /// needed.
  int getNextChar() {
    // The current line buffer should not be empty unless it is the end of file.
    if (curLineBuffer.empty())
      return EOF;
    ++curCol;
    auto nextchar = curLineBuffer.front();
    curLineBuffer = curLineBuffer.drop_front();
    if (curLineBuffer.empty())
      curLineBuffer = readNextLine();
    if (nextchar == '\n') {
      ++curLineNum;
      curCol = 0;
    }
    return nextchar;
  }

  std::queue<std::pair<Token,std::string>> tokens{};

  llvm::StringRef getIdentiferStr() {
    if (tokens.empty())
      return identifierStr;
    else
      return tokens.front().second;
  }

  Token getTok(bool peek) {
    Token tok;
    if (tokens.empty()) {
      auto str = identifierStr;
      tok = getTokInput();
      if (peek)
        tokens.push({tok, str});
    } else {
      tok = tokens.front().first;
      if (!peek)
        tokens.pop();
    }
    return tok;
  }

  ///  Return the next token from standard input.
  Token getTokInput() {
    // Skip any whitespace.
    while (isspace(lastChar))
      lastChar = Token(getNextChar());

    // Save the current location before reading the token characters.
    lastLocation.line = curLineNum;
    lastLocation.col = curCol;

    // Identifier: [a-zA-Z][a-zA-Z0-9_]*
    if (isalpha(lastChar)) {
      identifierStr = (char)lastChar;
      while (isalnum((lastChar = Token(getNextChar()))) || lastChar == '_')
        identifierStr += (char)lastChar;

      if (identifierStr == "return")
        return tok_return;
      if (identifierStr == "def")
        return tok_def;
      if (identifierStr == "struct")
        return tok_struct;
      if (identifierStr == "var")
        return tok_var;
      if (identifierStr == "event")
        return tok_event;
      if (identifierStr == "handler")
        return tok_handler;
      if (identifierStr == "controller")
        return tok_controller;
      if (identifierStr == "generate")
        return tok_generate;
      if (identifierStr == "extern")
        return tok_extern;
      if (identifierStr == "global")
        return tok_global;
      if (identifierStr == "scope")
        return tok_scope;
      if (identifierStr == "if")
        return tok_if;
      if (identifierStr == "else")
        return tok_else;
      return tok_identifier;
    }

    // Number: [0-9] ([0-9.])*
    if (isdigit(lastChar)) {
      std::string numStr;
      do {
        numStr += lastChar;
        lastChar = Token(getNextChar());
      } while (isdigit(lastChar) || lastChar == '.');

      numVal = strtod(numStr.c_str(), nullptr);
      return tok_number;
    }

    if (lastChar == '#') {
      // Comment until end of line.
      do {
        lastChar = Token(getNextChar());
      } while (lastChar != EOF && lastChar != '\n' && lastChar != '\r');

      if (lastChar != EOF)
        return getTok(false);
    }

    // Check for end of file.  Don't eat the EOF.
    if (lastChar == EOF)
      return tok_eof;
    
    // Check for '==', '<=', '>='
    if (lastChar == '=' || lastChar == '<' || lastChar == '>') {
      Token curTok = Token(lastChar);
      lastChar = Token(getNextChar());
      if (lastChar != '=')
        return curTok;
      
      // eat '='
      lastChar = Token(getNextChar());
      switch (curTok) {
        case '=': return tok_cmp_eq;
        case '<': return tok_cmp_le;
        case '>': return tok_cmp_ge;
        default: assert(false && "unreachable in generate cmp op");
      }
    }

    // Otherwise, just return the character as its ascii value.
    Token thisChar = Token(lastChar);
    lastChar = Token(getNextChar());
    return thisChar;
  }

  /// The last token read from the input.
  Token curTok = tok_eof;

  /// Location for `curTok`.
  Location lastLocation;

  /// If the current Token is an identifier, this string contains the value.
  std::string identifierStr;

  /// If the current Token is a number, this contains the value.
  double numVal = 0;

  /// The last value returned by getNextChar(). We need to keep it around as we
  /// always need to read ahead one character to decide when to end a token and
  /// we can't put it back in the stream after reading from it.
  Token lastChar = Token(' ');

  /// Keep track of the current line number in the input stream
  int curLineNum = 0;

  /// Keep track of the current column number in the input stream
  int curCol = 0;

  /// Buffer supplied by the derived class on calls to `readNextLine()`
  llvm::StringRef curLineBuffer = "\n";
};

/// A lexer implementation operating on a buffer in memory.
class LexerBuffer final : public Lexer {
public:
  LexerBuffer(const char *begin, const char *end, std::string filename)
      : Lexer(std::move(filename)), current(begin), end(end) {}

private:
  /// Provide one line at a time to the Lexer, return an empty string when
  /// reaching the end of the buffer.
  llvm::StringRef readNextLine() override {
    auto *begin = current;
    while (current <= end && *current && *current != '\n')
      ++current;
    if (current <= end && *current)
      ++current;
    llvm::StringRef result{begin, static_cast<size_t>(current - begin)};
    return result;
  }
  const char *current, *end;
};
} // namespace toy

#endif // EP2_LEXER_H
