#!/bin/sh

set -e

rm -rf build
mkdir build
cd build

cmake -LAH  \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DBUILD_EASYLOGGINGPP=OFF \
  -DBUILD_EXAMPLES=OFF \
  -DBUILD_GRAPHICAL_EXAMPLES=OFF \
  -DCMAKE_BUILD_TYPE=Release \
..

cmake --build . --target all

cmake --build . --target install
