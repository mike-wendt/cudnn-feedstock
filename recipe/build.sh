#!/bin/bash

mkdir -p $PREFIX/include
cp include/cudnn.h $PREFIX/include/

mkdir -p $PREFIX/lib
cp lib64/libcudnn.so.8.0.0 $PREFIX/lib/
ln -s $PREFIX/lib/libcudnn.so.8.0.0 $PREFIX/lib/libcudnn.so.8
ln -s $PREFIX/lib/libcudnn.so.8 $PREFIX/lib/libcudnn.so
