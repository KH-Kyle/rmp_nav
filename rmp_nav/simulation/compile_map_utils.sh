#!/usr/bin/env bash

g++ -O3 -Wall -fPIC -shared -std=c++11 \
    map_utils.cpp \
    -o map_utils_cpp.so \
    -static-libstdc++ \
    -Wl,-rpath,"\$ORIGIN" \
    $(python3 -m pybind11 --includes) \
    $@
