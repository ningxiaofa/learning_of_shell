shell脚本 判断是否存在 如果不存在,则创建目录 封装为函数

以下是一个Shell函数的示例，用于检查目录是否存在，如果不存在则创建目录：
function create_directory_if_not_exists {
  # 检查目录是否存在
  if [ ! -d "$1" ]; then
    # 如果目录不存在，则创建目录
    mkdir -p "$1"
    echo "创建目录 $1"
  else
    echo "目录 $1 已存在"
  fi
}
该函数将目录路径作为参数传递，并使用-d选项检查该目录是否存在。如果目录不存在，则使用mkdir -p命令创建目录。-p选项表示如果目录的上级目录不存在，则一并创建。如果目录已经存在，则输出一条消息表示目录已存在。

您可以在您的Shell脚本中使用该函数来检查并创建目录，例如：

# 调用函数创建目录
create_directory_if_not_exists "/path/to/directory"
在上面的示例中，函数将检查/path/to/directory目录是否存在，如果不存在，则创建该目录。



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