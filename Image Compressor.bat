@echo off
setlocal enabledelayedexpansion

REM Set the quality level for compression (0-100)
set "quality=75"

REM Loop through all image files in the current directory
for %%i in (*.jpg *.jpeg *.png *.gif) do (
    echo Compressing %%i...
    magick "%%i" -quality !quality! "%%~ni%%~xi"
)

echo Compression complete!
pause
