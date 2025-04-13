#!/bin/bash


src_dir=$1
des_dir=$2

syncfun () {

src_dir=$1
des_dir=$2

sudo find  ./$src_dir/* -type f ! -name  "config.json" -exec cp  {} ./$des_dir/data \;
}

syncfun "$src_dir" "$des_dir" 

echo " this a test"
