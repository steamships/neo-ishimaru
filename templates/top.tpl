<{* 普通の変数 *}>
<p><{$hello}></p>

<p><{$today}></p>

<{* 予約変数 *}>
<dl>
	<dt>現在のタイムスタンプ
	<dd><{$smarty.now}>

	<dt>現在のタイムスタンプに日数追加
	<dd>現在注文すると<{(($smarty.now)+24*60*60*3)|date_format:'%Y年%m月%d日'}>までに発送。

	<dt>現在処理中のテンプレートファイル名
	<dd><{$smarty.template}>

	<dt>Smarty version
	<dd><{$smarty.version}>
<dl>

<{* 配列を逆順でループ(step=-1だから) *}>
<ul>
<{section name=i loop=$animal step=-1}>
	<li><{$animal[i]}>
<{/section}>
</ul>

<a href="./?p=cate">商品一覧</a>
