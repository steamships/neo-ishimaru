<{*商品一覧テンプレート*}>
<h1 class="fw-bold text-center my-4">商品一覧</h1>
<div class="container">
  <div class="row">
	<{foreach from=$productlist item=v}>
	<a href="<{$v.link_url}>" class="d-block col-sm-4 text-decoration-none">
		<p><img src="<{$v.img_url}>" class="img-fluid"></p>
		<p><{$v.name}></p>
	</a>
	<{/foreach}>
  </div>
</div>

<div class="container">

</div>