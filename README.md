# これは何？

Fate/Grand Orderの[利用規約](https://webview.fate-go.jp/webview/userpolicy/index.html)をコミットするリポジトリです。
規約の変更があった際に差分を見やすく提示することを目的とした個人の活動であり、FGO PROJECT及びその公式な関係者に損害を与えることを目的としたものではありません。

# 利用方法

差分がコミットされるので、githubのHistoryやgit diffコマンドで差分を確認できます。

[userpolicy.htmlの更新履歴](https://github.com/elleonard/fgo_userpolicy/commits/master/userpolicy.html)

# 更新方法

```
bash get_userpolicy.sh
```

これだけでcurlしてdiff取って差分があったらコミットまでしてくれます。
当然、curl, diff, gitが入ってないと動きません。
