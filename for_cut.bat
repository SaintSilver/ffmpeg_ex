for %%a in ("���\*.mp4") do ffmpeg -i "%%a" -t 00:03:00 -acodec copy -vcodec copy "���\%%~na_cut.mp4"
pause