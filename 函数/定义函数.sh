shell 函数如何返回值

在Shell脚本中，可以使用return命令从函数中返回一个整数值。例如：

# 定义一个简单的函数，计算两个数的和
sum() {
  a=$1
  b=$2
  return $(($a + $b))
}

# 调用函数，并将结果保存在变量中
result=$(sum 2 3)

# 输出结果
echo "The sum is: $result"
在上述示例中，sum函数计算两个数的和，并使用return命令返回结果。在主程序中，我们调用sum函数，并将结果保存在result变量中。然后使用echo命令输出结果。

请注意，return命令只能返回整数值。如果您需要返回字符串或其他类型的数据，可以将其保存在变量中，并在函数结束时打印出来。例如：

bash
Copy
# 定义一个简单的函数，返回一个字符串
greet() {
  name=$1
  echo "Hello, $name!"
}

# 调用函数，并输出结果
greet "John"
在上述示例中，greet函数返回一个字符串，使用echo命令在函数内部打印出来。在主程序中，我们调用greet函数，并在函数内部打印出了字符串。