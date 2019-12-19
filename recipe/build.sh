#!/bin/bash

mkdir -p $PREFIX/include
cp include/cudnn.h $PREFIX/include/

mkdir -p $PREFIX/lib
cp lib64/libcudnn.so.7.6.5 $PREFIX/lib/
ln -s $PREFIX/lib/libcudnn.so.7.6.5 $PREFIX/lib/libcudnn.so.7
ln -s $PREFIX/lib/libcudnn.so.7 $PREFIX/lib/libcudnn.so
