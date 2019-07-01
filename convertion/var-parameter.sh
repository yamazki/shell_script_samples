#!/bin/sh

cp Largefile.tar.gz ${TMPDIR:=/tmp}
cd $TMPDIR
tar xzf Largefile.tar.gz

printf "Extract files to $TMPDIR \n"
