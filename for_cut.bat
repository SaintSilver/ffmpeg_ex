for %%a in ("경로\*.mp4") do ffmpeg -i "%%a" -t 00:03:00 -acodec copy -vcodec copy "경로\%%~na_cut.mp4"
pause