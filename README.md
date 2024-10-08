# Alkali: Portable and High-Performance SmartNIC Programs with Alkali

## Building - Building MLIR

```sh
git apply patches/translateToCpp.patch
mkdir llvm-project/build && cd llvm-project/build
cmake -G Ninja ../llvm \
 -DLLVM_ENABLE_PROJECTS="mlir;clang" \
 -DLLVM_TARGETS_TO_BUILD="AArch64;AMDGPU;ARM;AVR;BPF;Hexagon;Lanai;LoongArch;Mips;MSP430;NVPTX;PowerPC;RISCV;Sparc;SystemZ;VE;WebAssembly;X86;XCore" \
 -DLLVM_ENABLE_ASSERTIONS=ON \
 -DCMAKE_BUILD_TYPE=Release 
cd .. &&  ninja -C build/
```

## Install the external dependencies

```sh
# current z3 version is Z3 4.8.7
sudo apt install libz3-dev
```

## Building - Alkali Compiler Build

This setup assumes that you have built LLVM and MLIR. To build Alkali compiler, run
```sh
mkdir build && cd build
 cmake -G Ninja .. \
    -DLLVM_EXTERNAL_LIT=$PWD/../llvm-project/build/bin/llvm-lit \
    -DMLIR_DIR=$PWD/../llvm-project/build/lib/cmake/mlir \
    -DCLANG_DIR=$PWD/../llvm-project/build/lib/cmake/clang \
    -DCMAKE_BUILD_TYPE=DEBUG
cd .. &&  ninja -C build/
```
This will generate Alkali compiler binary in ./build/bin/ep2c

## Run Alkali Example

After `ep2c` is built, you run example with
```sh
bash run_fpga_cut.sh nfchainnew.ep2
```
This will compile the NFChain example for FPGA NICs. The optimized Alkali IR can be found in ./fpga_split_out/nfchainnew.ep2/tmpopt.mlir , and the generated Verilog code can be found in ./fpga_split_out/nfchainnew.ep2. It transforms the original RTC handler into pipeline and data-parallel FPGA code.


Similarly, if you want to compile the NFChain example for Agilio NICs, run:
```sh
bash  run_netronome_cut.sh nfchainnew.ep2
```
The generated Agilio Micro C code can be found in ./outs-netronome/out-netronome-nfchainnew.

Additional applications can be found in ./tests/.
