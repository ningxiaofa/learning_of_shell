#!/bin/bash

# 检查参数个数
if [ $# -eq 0 ]; then
  param="option1"  # 设置默认值
else
  param=$1
fi

# 根据参数值执行不同的逻辑
if [ "$param" = "option1" ]; then
  echo "执行选项1的逻辑"
  # 在此处添加选项1的具体逻辑

elif [ "$param" = "option2" ]; then
  echo "执行选项2的逻辑"
  # 在此处添加选项2的具体逻辑

else
  echo "无效的参数: $param"
  exit 1

fi