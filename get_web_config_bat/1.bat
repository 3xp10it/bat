@echo off
goto :main
����ע�ͣ�(for /f "delims="������Ϊȡ��Ĭ�ϵ��Կո�ȷ�����Ϊ�ָ��
dir /s ʵ����linux�е�find���ܣ�for /r path %%i in (web.conf?g) do ... Ҳ����ʵ��find���ܣ������Լ�ʵ��ʱ����for /r path ...�е�pathֻ����һ������·���������Ǳ����������Ͳ��ܱ���ȫ��������)
:main
set str=c d e f g h i j k l m n o p q r s t u v w x y z 
echo  ��ǰӲ�̵ķ����У� 
for %%i in (%str%) do (
if exist %%i: (echo %%i:
for /f "delims=" %%j in ('dir /b /s "%%i:\web.conf?g"') do (
echo *****filepath***** >> tmp.txt
echo %%j >> tmp.txt
type "%%j" >> tmp.txt
echo. >> tmp.txt
echo ---------------------------- >> tmp.txt
echo ���������ķָ��� >> tmp.txt
echo ---------------------------- >> tmp.txt
echo. >> tmp.txt
)
)
)
