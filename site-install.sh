#!/bin/bash

if [ -d "./master" ]; then
  echo "master/ directory already exists.  Exiting..."
  exit 1
fi

if [ -d "./src" ]; then
  echo "src/ directory already exists.  Exiting..."
  exit 1
fi


echo "Creating master/ directory with master branch"
( set -x ; git clone git@github.com:radgrad/radgrad.github.io.git master; cd master; git checkout master; cd ..)

echo ""
echo "Creating src/ directory with src branch"
( set -x ; git clone git@github.com:radgrad/radgrad.github.io.git src; cd src; git checkout src; git branch -u origin/src; cd ..)

echo ""
echo "master/ and src/ directories created."


