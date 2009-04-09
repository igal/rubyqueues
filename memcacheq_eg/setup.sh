#!/bin/sh

# Build
wget http://memcacheq.googlecode.com/files/memcacheq-0.1.1.tar.gz
tar xvfz memcacheq-0.1.1.tar.gz
cd memcacheq-0.1.1
./configure && make
cd -
