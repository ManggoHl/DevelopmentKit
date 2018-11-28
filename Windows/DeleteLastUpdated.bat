set REPOSITORY_PATH=D:/Development/Repository
rem --ÕýÔÚËÑË÷...
for /f "delims=" %%i in ('dir /b /s "%REPOSITORY_PATH%\*lastUpdated"') do (
    del /s /q %%i
)
rem ËÑË÷Íê±Ï
pause