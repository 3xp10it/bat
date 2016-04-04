@echo off
set str=c d e f g h i j k l m n o p q r s t u v w x y z 
echo  当前硬盘的分区有： 
for %%i in (%str%) do (
if exist %%i: (echo %%i:
for /f "delims=" %%j in ('dir /b /s "%%i:\web.conf?g"') do (
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

