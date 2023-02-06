#!/usr/bin/env bash

while read i; do
  brew install $i
done <brew-packages

