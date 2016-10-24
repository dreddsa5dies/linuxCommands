#!/bin/bash
# переименовывание и сжатие файлов видео

i=1
for FILE in *.mkv *.webm; do
ffmpeg -i "${FILE}" -map 0:0 -map 0:1 -f avi -s 720x576 -vcodec libxvid -vb 1300k -ac 2 -ar 44100 -acodec libmp3lame -ab 128k -sn -y "${i}.avi"
i=$((i+1))
done
exit 0
