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


macOS中查看执行shell脚本的程序
在macOS中，您可以使用以下命令来查看执行shell脚本的程序：
#!/bin/sh
echo $0
将上述脚本保存为一个文件（例如test.sh），然后使用以下命令运行它：
sh test.sh
这将打印出执行该脚本的程序的路径，例如/bin/sh。

请注意，脚本中的第一行#!/bin/sh是一个特殊的注释，它告诉操作系统要使用哪个程序来执行脚本。在这种情况下，它指定使用/bin/sh来执行脚本。因此，上述命令将使用/bin/sh来执行脚本，并打印出该路径。

实践
➜  assist_test git:(main) ✗ which sh
/bin/sh
➜  assist_test git:(main) ✗ which bash
/bin/bash
➜  assist_test git:(main) ✗ 
