for %%a in ("경로\*.mp4") do ffmpeg -i "%%a" -y -b 500k "경로\%%~na.mp3"
pause