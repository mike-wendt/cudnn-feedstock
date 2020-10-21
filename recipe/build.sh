#!/bin/bash

mkdir -p $PREFIX/include
cp include/cudnn*.h $PREFIX/include/

mkdir -p $PREFIX/lib
cp lib64/libcudnn*.so.8.0.4 $PREFIX/lib/
LIBS=`ls $PREFIX/lib/`
for LIB in $LIBS ; do
  LIB_NAME=`echo $LIB | tr '.' ' ' | awk '{ print $1 }'`
  echo "creating symlinks for $LIB_NAME"
  ln -s $PREFIX/lib/$LIB_NAME.so.8.0.4 $PREFIX/lib/$LIB_NAME.so.8
  ln -s $PREFIX/lib/$LIB_NAME.so.8 $PREFIX/lib/$LIB_NAME.so
done
