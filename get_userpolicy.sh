#!/bin/bash

url="https://webview.fate-go.jp/webview/userpolicy/index.html"
date=`date --iso`

curl $url > tmp.html
diff userpolicy.html tmp.html > diff_$date
if [ -s diff_$date ]; then
  echo "差分が見つかりました"
  cat diff_$date

  git add userpolicy.html
  git commit -m $date
  git push origin master
else
  echo "差分は見つかりませんでした"
  rm diff_$date
fi
rm tmp.html
