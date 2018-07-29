#/bin/bash
find . -type f -name '*.MOV' -exec echo "file {}" >> files_to_process \;
ffmpeg -safe 0 -f concat -i files_to_process -vcodec copy -an merged.MP4

