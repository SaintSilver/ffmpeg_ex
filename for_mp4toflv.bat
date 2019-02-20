for %%a in ("경로\*.mp4") do ffmpeg -i "%%a" -vcodec copy -ar 22050 "경로\%%~na.flv"
pause