# neo-ishimaru
ネオ石丸ECサイト

## 開発はじめるとき

### git clone後

Composerのインストール

- [Composerインストール](https://mebee.info/2020/06/02/post-10844/)

以下neo-ishimaruディレクトリ

- ライブラリのインストール

 ```
composer install
 ```

- npmのインストール　

 ```
npm install
 ```
- 開発時はコマンドでnpm-run-all、watch webpackさせる

 ```
npm run start
 ```
- 開発

### dockersで開発するとき
- htmlディレクトリにgit clone

___ 

## Bootstrap
基本的にBootstrapのしきたりに従う

[Bootstrap ドキュメント](https://getbootstrap.jp/docs/5.0/getting-started/introduction/)

[Bootstrap Github](https://github.com/twbs/bootstrap)

**カンプ案**
- https://docs.google.com/document/d/1L28CuERK-olqOlyWj4ejhrOfjrNeq0XDYlc7Cd3hIaA/edit#bookmark=id.5p9v28etefoq


**デザインカンプ**
- [211112_ishimaru_top_o.pdf](https://github.com/steamships/neo-ishimaru/files/7535952/211112_ishimaru_top_o.pdf)
- [211112_ishimaru_top-header_o.pdf](https://github.com/steamships/neo-ishimaru/files/7535954/211112_ishimaru_top-header_o.pdf)
- [211129_商品詳細ページ.pdf](https://github.com/steamships/neo-ishimaru/files/7640441/211129_.pdf)
- [211129_ブランド別_九州産黒毛和牛.pdf](https://github.com/steamships/neo-ishimaru/files/7640445/211129_._.pdf)


**カラーコード・フォント指示**
- [211115_カラーデータ_o.pdf](https://github.com/steamships/neo-ishimaru/files/7535955/211115_._o.pdf)
- [211115_サイズ表記データ_o.pdf](https://github.com/steamships/neo-ishimaru/files/7535956/211115_._o.pdf)

**部位チャート資料**
https://docs.google.com/document/d/1pnBMNIPXVfo3NFqcfWiYmmOkrvE8kia9u_9mNuDqkJQ/edit

___ 

## 画像のwebp化 / convertWebp.shについて

aseetsディレクトリ内でsh convertWebp.shを実行

jpg/pngファイルをwebpファイルに変換する


参考
https://casualweb.info/blog/obtain-category-id/
https://mihune-web.com/ecshop/colorme/colorme_customize/grobalnavi/
