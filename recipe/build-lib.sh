#!/bin/bash
set -exuo pipefail

mkdir -p build
cd build

cmake ${CMAKE_ARGS} \
    -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DNANOARROW_IPC=ON \
    -DNANOARROW_IPC_WITH_ZSTD=ON \
    -DNANOARROW_IPC_WITH_LZ4=ON \
    -DNANOARROW_BUILD_TESTS=OFF \
    ..

ninja install
