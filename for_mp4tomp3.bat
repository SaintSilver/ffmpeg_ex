for %%a in ("���\*.mp4") do ffmpeg -i "%%a" -y -b 500k "���\%%~na.mp3"
pause