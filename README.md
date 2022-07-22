# アプリケーション名
献立ランダムアプリ

# アプリケーション概要
料理を登録し、献立として登録した料理をランダムに表示することができる。
# URL
https://kondate-37427.herokuapp.com/    
# ID/Pass  
・ID:cooking  
・pass:2222
# テスト用アカウント
・メールアドレス：cook@com  
・パスワード：a12345
# 利用方法
## 料理登録
1.トップページ（一覧ページ）のヘッダーからユーザー新規登録またはログインを行う  
2.料理登録ボタンから、料理の内容（料理画像・料理名・カテゴリー・材料（任意））を登録する
## 献立リスト表示
1.トップページに献立リストとして登録した料理がランダム表示される  
2.ランダムボタンを押す度に、献立リストが入れ替わる
# アプリケーションを作成した背景
数日毎に献立を考えてくれている自身の妻や、主婦の方の負担を減らしたい。
献立を考えるためには、自分の作ることのできる料理を思い出し、リスト化する必要がある。
この作業を面倒に感じている方も多いのではないだろうか。
この課題を、プログラミングの力で解決できるのではないかと考え、作成した。
# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1UR9DD2WO1-waoPM30F4Ey6nfHtSKaI3y_M5lSEKrWBY/edit#gid=982722306)
# 実装した機能についての画像やGIFおよびその説明
・ランダムボタンを押すと、献立リストが入れ替わる。
[![Image from Gyazo](https://i.gyazo.com/f954b32796f65d202d9971f1f9b5b3c2.gif)](https://gyazo.com/f954b32796f65d202d9971f1f9b5b3c2)

・材料リストを押すと、料理ごとの材料リストが表示される
[![Image from Gyazo](https://i.gyazo.com/49d7ccb2099371e02cf25a07d905f5fe.gif)](https://gyazo.com/49d7ccb2099371e02cf25a07d905f5fe)

・マイページを押すと、自身が登録した全ての料理が表示される
[![Image from Gyazo](https://i.gyazo.com/1f2cc01a778b83b9ca7ae25ea8653183.gif)](https://gyazo.com/1f2cc01a778b83b9ca7ae25ea8653183)

# 実装予定の機能
・献立リストのランダム表示件数を、任意の件数に変更できる機能  
・献立リストの中から任意の料理だけをシャッフルできる機能  
・カテゴリーをクリックすると、同じカテゴリーの料理を表示する機能
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/36b4ab330c9f1c9d48fddd77d7352cda.png)](https://gyazo.com/36b4ab330c9f1c9d48fddd77d7352cda)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/b5871a41d25044054376e111c0c67040.png)](https://gyazo.com/b5871a41d25044054376e111c0c67040)
# 開発環境
・フロントエンド：HTML, CSS, jQuery, bootstrap   
・サーバーサイド：Ruby  
・フレームワーク：Ruby on Rails  
・テキストエディタ：Visual Studio Code  
・タスク管理：GitHub
# ローカルでの動作方法
以下のコマンドを順に実行。  
% git clone https://github.com/kazuhiro-na/kondate.git  
% cd kondate  
% bundle indtall  
% yarn install
# 工夫したポイント
献立を考える手間を省くことを第一に考えてあるため、シンプルで簡単に扱えることを優先した。  
ランダムに表示かつ、自身の登録した料理のみを表示を組み合わせる点に少しばかり苦労した。  
ランダム表示に使うRANDはもちろんだが、指定したidを取り出すためのwhereメソッドを扱うことにも慣れていなかったため、これらを理解するために時間をかけた。