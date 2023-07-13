shell 脚本中的换行符

在Shell脚本中，可以使用换行符\n来插入换行符。例如：
echo "Hello, world!\nWelcome to Shell scripting!"
在上面的示例中，使用\n插入了一个换行符，将输出分为两行。

可以使用反斜杠\来将命令分成多行。例如：
echo "This is a very long line \
that spans multiple lines \
but is treated as a single command."
在上面的示例中，使用反斜杠将单个命令分成三行。当Shell读取脚本时，它将这三行组合成单个命令，并将其视为单行命令。

另外，如果您使用文本编辑器编写Shell脚本，建议在文本编辑器中设置正确的换行符。在Unix或Linux系统中，换行符通常是\n，而在Windows系统中，换行符通常是\r\n。如果您的文本编辑器设置不正确，则可能会导致Shell脚本无法正常工作。
