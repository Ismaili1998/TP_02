#!/bin/bash

n=1
while (( n <= 10 )); do
  echo $n
  (( n++ ))  #  incrémenter par 1
done
