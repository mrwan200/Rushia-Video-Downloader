@echo off
cls

echo "Extracting..."

cd ./bin
tar -xf tools.zip
cd ..

echo "Rushia Video Downloader"
echo "Please setup free space before download all video"

PAUSE

echo "Please wait to 1 - 5 hours to download completed."

set YT_URL="https://www.youtube.com/playlist?list=UUl_gCybOJRIgOXw6Qb4qJzQ"

"bin/yt-dlp.exe" %YT_URL% --concurrent-fragments 5 -f bv+ba/b --ffmpeg-location=./bin/ffmpeg.exe --paths=./videos

echo "Download completed!"
echo "Thank you. And Goodbye :')"

PAUSE
