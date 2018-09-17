运行gdb：很多命令缩写就是其首字母
gdb 程序名
gdb --args 程序名 传入参数

相关命令：	当运行一次某命令后，再次按回车，将执行上一个命令
list 查看10行代码，以当前行代码为中心
list n 	查看指定行数n代码
list - 		查看当前行之前的代码
list n,m 	查看n到m行代码

break		设置断点
break + n	在第n行设置断点
break + 函数名	断点设置在指定函数上
break xxx if hh 设置条件断点，即当hh为真时才会在xxx断点处停止
	break main if argc > 1
	break 180 if(string == NULL && i<0)
	break test.c:23 if(x&y) == 1
info breakpoints	查看断点信息
disable + n 失效n断点 n为断点编号，可由info breakpoints查看
enable + n 使能断点
delete + n 删除n断点
clear + x 删除 x处断点 此处x为断点的行号

run	执行程序
continue	继续运行程序

print	+ 变量名 	查看命令值
print + 变量 = n 	给变量赋值
print/t		二进制输出
print/x		十六进制
print/d		十进制默认
display + 变量名 	每次断点停止时都打印该变量的值
whatis +变量名 	显示变量类型
watch + 变量名		当变量改变值时停止

next 单步执行，不进入函数体内部
step 单步执行，进入函数体内部

quit 	退出，退出gdb
finish		退出本次调试

shell clear 	清屏


core文件：主要是用作当程序崩溃时产生错误文件
ulimit -c 	查看是否自动生成文件   为0不自动
ulimit -c unlimited  设置自动生成core文件

gdb ./程序  core.xxx  调试core文件，恢复到core崩溃时刻






