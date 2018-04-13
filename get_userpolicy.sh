#!/bin/bash

url="https://webview.fate-go.jp/webview/userpolicy/index.html"
date=`date --iso`

curl $url > tmp.html
diff userpolicy.html tmp.html > diff_${date}_html

if [ -s diff_${date}_html ]; then
  echo "差分が見つかりました"
  cat diff_${date}_html

  cat tmp.html | sed -e 's/<[^>]*>//g' | sed -e 's/^[ \t]+//g' > tmp.txt
  diff userpolicy.txt tmp.txt > diff_$date

  rm tmp*

  git add userpolicy.html
  git commit -m $date
  git push origin master
else
  echo "差分は見つかりませんでした"
  rm diff_${date}_html
  rm tmp.html
fi
