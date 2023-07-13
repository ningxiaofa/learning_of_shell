
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