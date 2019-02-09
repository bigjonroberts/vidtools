#!/bin/bash
find . -type f -name '*.MTS' -exec echo "file {}" >> files_to_process \;
docker run -it --rm -v $(pwd):/vids jrottenberg/ffmpeg -safe 0 -f concat -i /vids/files_to_process -vcodec copy -an /vids/merged.MP4

