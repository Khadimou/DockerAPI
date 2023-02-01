#!/bin/bash

echo `expr $1 "*" $1`
let "a = $1 ** 2"
echo "carre = $a "
