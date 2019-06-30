#!/bin/sh

tar cf - bigfile1.dat bigfile2.dat | pv | gzip > archive.tar.gz
