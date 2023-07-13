shell 脚本中判断数组为空

在Shell脚本中，可以使用变量的长度来判断数组是否为空。例如：

bash
Copy
# 定义一个空数组
my_array=()

# 判断数组是否为空
if [ ${#my_array[@]} -eq 0 ]; then
  echo "The array is empty."
else
  echo "The array is not empty."
fi
在上面的示例中，使用${#my_array[@]}获取数组的长度。如果数组的长度为0，则表示该数组为空。

shell脚本中获取文件列表 去掉后缀名

在Shell脚本中，可以使用ls命令获取当前目录下的文件列表，并使用awk命令去掉文件名的后缀名。例如：

bash
Copy
# 获取当前目录下的所有文件列表
file_list=$(ls)

# 去掉文件名的后缀名
file_list=$(echo "$file_list" | awk -F. '{print $1}')

# 输出文件列表
echo "$file_list"
在上述示例中，首先使用ls命令获取当前目录下的所有文件列表，并将其保存在file_list变量中。然后使用awk命令对file_list变量进行处理，去掉每个文件名的后缀名。

awk命令使用-F选项指定字段分隔符。在本例中，我们将.作为字段分隔符。然后使用{print $1}打印每个文件名的第一个字段，即去掉文件名的后缀名。

如果您只想获取当前目录下的普通文件名（而不包括目录和符号链接等其他类型的文件），则可以使用find命令结合awk命令来实现。例如：

bash
Copy
# 获取当前目录下的所有普通文件列表
file_list=$(find . -type f -printf '%f\n')

# 去掉文件名的后缀名
file_list=$(echo "$file_list" | awk -F. '{print $1}')

# 输出文件列表
echo "$file_list"
在上述示例中，find命令查找当前目录及其子目录中的所有普通文件，并使用-printf选项打印文件名。然后使用awk命令去掉每个文件名的后缀名。