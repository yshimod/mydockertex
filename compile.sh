#!/bin/bash

IMGNAME="vge018sy/mydockertex"

TEX_FILE=`echo $1 | sed "s/\.tex\$//"`
docker run --rm -v $PWD:/workdir $IMGNAME uplatex -synctex=1 -interaction=nonstopmode $TEX_FILE.tex
docker run --rm -v $PWD:/workdir $IMGNAME dvipdfmx $TEX_FILE.dvi
