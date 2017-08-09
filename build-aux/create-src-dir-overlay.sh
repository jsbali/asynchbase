#!/usr/bin/env bash
# Creates directory structure overlay on top of original source directories so
# that the overlay matches Java package hierarchy.

if [ ! -d src-main ]; then
  (cd src && ln -s ../build/src/org/hbase/async/generated)  
  mkdir -p src-main/src/main/java/org/hbase
  (cd src-main/src/main/java/org/hbase && ln -s ../../../../../../src async)
fi

if [ ! -d src-main/src/test ]; then
  mkdir -p src-main/src/test/java/org/hbase
  (cd src-main/src/test/java/org/hbase && ln -s ../../../../../../test async)
fi
