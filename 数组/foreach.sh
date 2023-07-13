#!/bin/bash

# 定义一个数组
my_array=("apple" "banana" "cherry" "date")

# 遍历数组中的每个元素
for item in "${my_array[@]}"
do
  echo $item
done


# 定义一个数组
my_array=("apple" "banana" "cherry" "date")

# 遍历数组中的每个元素的索引和值
for i in "${!my_array[@]}"
do
  echo "Index $i: ${my_array[$i]}"
done

# 执行
# /bin/bash 数组/foreach.sh
# 或者
# bash 数组/foreach.sh
# ➜  learning_of_shell git:(main) ✗ bash 数组/foreach.sh
# apple
# banana
# cherry
# date
# Index 0: apple
# Index 1: banana
# Index 2: cherry
# Index 3: date
# ➜  learning_of_shell git:(main) ✗ 

