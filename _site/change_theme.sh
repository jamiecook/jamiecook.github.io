#!/bin/bash

THEME=$1
THEME_DIR=themes/${THEME}

for i in _data _layouts _includes _sass _templates css scripts; do
  [ -L $i ] && rm $i
  [ -d ${THEME_DIR}/$i ] && ln -s ${THEME_DIR}/${i} .
done
