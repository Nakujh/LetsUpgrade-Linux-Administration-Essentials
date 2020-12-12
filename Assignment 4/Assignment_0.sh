#!/bin/bash
echo "Username         : $USERNAME"
echo "Date             : $(date +"%m-%d-%y")"
echo "Time             : $(date +"%T")"
echo "Working Directory: $(pwd)"
count="$(ls | wc -l)"
echo "Files count      : $count"
biggest_file="$(du -hsx * | sort -rh | head -1)"
echo "Biggest file     : $biggest_file"
