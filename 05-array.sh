#!/bin/bash

#index starts from 0,size is 3
fruits=("apple" "kiwi" "orange")

echo "first fruits is: ${fruits[0]}"
echo "second fruits is: ${fruits[1]}"
echo "third fruits is: ${fruits[2]}"
echo "First fruit is: ${FRUITS[@]}"