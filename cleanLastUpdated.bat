set REPOSITORY_PATH=D:\Development\Repository
rem ��������...
for /f "delims=" %%i in ('dir /b /s "%REPOSITORY_PATH%\*lastUpdated"') do (
    del /s /q %%i
)
rem �������
pause