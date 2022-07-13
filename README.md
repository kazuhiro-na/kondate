# アプリケーション名
献立ランダムアプリ

# アプリケーション概要
料理を登録し、献立として登録した料理をランダムに表示することができる。
# URL
https://kondate-37427.herokuapp.com/  
# テスト用アカウント
・メールアドレス：  
・パスワード：
# 利用方法
## 料理登録
1.トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う  
2.料理登録ボタンから、料理の内容（料理画像・料理名・カテゴリー（任意）・材料（任意））を登録する
## 献立リスト表示
1.トップページに献立リストとして登録した料理がランダム表示される
# アプリケーションを作成した背景
いつも支えてくれる妻に、プログラミングで何か恩返しができないかと考えた。毎週献立を考えてくれているが、それを自動化できれば妻の負担が軽減できるのではと考え、献立ランダムアプリを開発することにした。
# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1UR9DD2WO1-waoPM30F4Ey6nfHtSKaI3y_M5lSEKrWBY/edit#gid=982722306)
# 実装した機能についての画像やGIFおよびその説明
・ランダムボタンを押すと、献立リストが入れ替わる。
[![Image from Gyazo](https://i.gyazo.com/5ea04994b7d5b43e48c721557a0c47b6.gif)](https://gyazo.com/5ea04994b7d5b43e48c721557a0c47b6)
# 実装予定の機能
現在、登録した料理をランダムに表示する機能を実装中。  
今後は料理の表示数を選べる機能や、ランダムに作成された献立リストの中の1つだけをシャッフルできる機能を実装予定。
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/36b4ab330c9f1c9d48fddd77d7352cda.png)](https://gyazo.com/36b4ab330c9f1c9d48fddd77d7352cda)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/b5871a41d25044054376e111c0c67040.png)](https://gyazo.com/b5871a41d25044054376e111c0c67040)
# 開発環境
・フロントエンド：HTML, CSS, jQuery  
・サーバーサイド：Ruby  
・フレームワーク：Ruby on Rails  
# ローカルでの動作方法
# 工夫したポイント