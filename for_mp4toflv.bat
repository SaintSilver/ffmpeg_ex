for %%a in ("���\*.mp4") do ffmpeg -i "%%a" -vcodec copy -ar 22050 "���\%%~na.flv"
pause