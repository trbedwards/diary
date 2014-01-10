#!/bin/bash

# parameters
entries_dir="$HOME/Dropbox/diary_entries"

# make entries directory and cd to it
mkdir -p ${entries_dir}
cd ${entries_dir}

# create date and title
date=`date`
title=`date "+%y-%m-%d"`
file="${title}.txt"

# check file exists. if it does, create new version
i=1
while [ -e "${file}" ]; do 
  i=`expr $i + 1`
  file="${title}_${i}.txt"
done

# create new file
echo ${file}
echo "${date}" > ${file}
echo "" >> ${file}
echo "" >> ${file}

# open file
vi + ${file}
