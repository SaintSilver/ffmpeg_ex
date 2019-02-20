# ffmpeg_ex
ffmpeg 간단한 예제 모음.<br>
[ffmpeg 포스팅](https://kutar37.tistory.com/entry/ffmpeg-%EC%89%AC%EC%9A%B4-%EB%8F%99%EC%98%81%EC%83%81%ED%8E%B8%EC%A7%91%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8)

---
### 입력시간까지 자르기
```
ffmpeg -i "경로\파일명.mp4" -t 00:32:22 -acodec copy -vcodec copy "경로\파일명.mp4"
```
### mp4 -> flv 인코딩
```
ffmpeg -i "경로\파일명.mp4" -vcodec copy -ar 22050 "경로\파일명.flv"
```
### mp4 -> mp3 인코딩
```
ffmpeg -y -i "경로\파일명.mp4" -b 500k "경로\파일명.mp3"
```
---

### 반복문 ( 입력시간까지 자르기, 파일명 원본파일명_cut)
```
for %%a in ("경로\*.mp4") do ffmpeg -i "%%a" -t 00:03:00 -acodec copy -vcodec copy "경로\%%~na_cut.mp4"
```
### 반복문( mp4 -> flv 인코딩, 파일명 원본과 동일처리)
```
for %%a in ("경로\*.mp4") do ffmpeg -i "%%a" -vcodec copy -ar 22050 "경로\%%~na.flv"
```
### 반복문 ( mp4 -> mp3 인코딩, 파일명 원본과 동일처리, 덮어쓰기 묻지 않기)
```
for %%a in ("경로\*.mp4") do ffmpeg -i "%%a" -y -b 500k "경로\%%~na.mp3"
```