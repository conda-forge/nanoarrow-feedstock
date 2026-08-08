@echo on

mkdir build
cd build

cmake %CMAKE_ARGS% ^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DNANOARROW_IPC=ON ^
    -DNANOARROW_IPC_WITH_ZSTD=ON ^
    -DNANOARROW_IPC_WITH_LZ4=ON ^
    -DNANOARROW_BUILD_TESTS=OFF ^
    ..
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
