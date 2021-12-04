<{*商品一覧テンプレート*}>

	<div class="row">
		<{foreach from=$productlist item=v}>
		<a href="<{$v.link_url}>" class="d-block col-lg-4 text-decoration-none">
			<p><img src="<{$v.img_url}>" class="img-fluid"></p>
			<p><{$v.name}></p>
		</a>
		<{/foreach}>
	</div><!-- /.row -->

</section>
