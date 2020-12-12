#!/bin/bash

#Variables

work_dir=$1


#Commands to perform

echo "Directory to change file names: $work_dir"

[ "$work_dir" == "" ] && { echo "Directory not provided"; exit 1; }
[ ! -d "$work_dir" ]  && { echo "Directory $work_dir not found."; exit 1; }

cd "$work_dir"

ls

for file in *
do
  mv "$file" "${file%.*}.$(date +"%Y%m%d")" &> /dev/null
done

ls

#End of script
