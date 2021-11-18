<{*商品一覧テンプレート*}>
<h1>商品一覧</h1>

<{foreach from=$productlist item=v}>
	<a href="<{$v.link_url}>">
		<p><{$v.name}></p>
		<p><img src="<{$v.img_url}>"></p>
	</a>
<{/foreach}>
