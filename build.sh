#!/bin/bash

pushd stm32plus
scons mode=fast mcu=f1mdvl hse=8000000
popd

pushd manokapanel_src
mkdir build
pushd build
cmake ..
cmake --build . -j
popd
popd