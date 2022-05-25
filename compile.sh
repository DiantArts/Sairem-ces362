#!/bin/sh

clear && rm -rf ./.build/ ./RandomDir/CMakeCache.txt ./RandomDir/CMakeFiles/

BUILD_DIR='.build'
TOOLCHAIN_DIR='.toolchain'

export CXX=g++-11

printf "Configuring cmake...\n"
# cmake -S . -B ${BUILD_DIR}
cmake \
    -S . \
    -B ${BUILD_DIR} \
    -G Ninja \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_C_COMPILER_LAUNCHER=ccache \
    -D CMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -D ENABLE_COVERAGE=false \
    -D ENABLE_UNIT_TESTING=false \
    -D RUN_UNIT_TESTS=false \
    -D ENABLE_TESTING=false

printf "Compiling...\n"
cmake --build ${BUILD_DIR} --config Release --parallel 8

printf "Running...\n"
${BUILD_DIR}/sources/xrn
ctest --test-dir .build -C Release
#gcovr -j 8 --delete --root ./ --print-summary --xml-pretty --xml .build/coverage.xml . --gcov-executable 'gcov'
cd .build
gcovr --gcov-executable gcov -r ..
cd -
