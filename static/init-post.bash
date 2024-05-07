#!/bin/bash

function fill {
  echo ---
  echo layout: post
  echo title: $2
  echo category: [ee, pcb]
  echo comments: false
  echo ---
  echo
  echo ## Rev 1.0.0
  echo
  echo - 初始版本
  echo
  echo ---
  echo
  echo "[物料清单和安装位置](/static/$1/bom/ibom/html)"
  echo
}

for d in */
do
  # remove the trail slash, ref https://stackoverflow.com/questions/9018723/what-is-the-simplest-way-to-remove-a-trailing-slash-from-each-parameter
  d=$(echo $d | sed 's:/*$::')
  echo processing $d
  grep $d generated-list.log
  if [ $? -eq 0 ]
  then
    echo already processed
    continue
  fi
  prefix=${d:0:5}
  yyyymmdd=${d:6:8}
  yyyy=${yyyymmdd:0:4}
  mm=${yyyymmdd:4:2}
  dd=${yyyymmdd:6:2}
  title=${d:15}
  # echo filename $yyyy-$mm-$dd-$title.markdown
  mkdir -p ../tmp
  rm ../tmp/$yyyy-$mm-$dd-$title.markdown
  echo $d >> generated-list.log
  # echo d: $d
  # echo t: $title
  fill $d $title > ../tmp/$yyyy-$mm-$dd-$title.markdown
done

echo done
