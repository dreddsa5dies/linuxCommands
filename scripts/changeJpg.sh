#!/bin/bash
# переименовывание и сжатие файлов

i=1
for EXP in *.JPG; do
mv -v "${EXP}" "${EXP}.jpg"
done
for FILE in *.jpg; do
mv -v "${FILE}" "${i}.jpg"
i=$((i+1))
done
jpegoptim -m50 *.jpg
exit 0
