<{*商品一覧テンプレート*}>

	<div id="product_list" class="row">
		<{foreach from=$productlist item=v}>
		<a href="<{$v.link_url}>" class="d-block col-6 col-lg-4 text-decoration-none product_list-item mb-1">
			<p><img src="<{$v.img_url}>" class="img-fluid product_list-item-img mb-1"></p>
			<p class="product_list-item-name NotoSerifSB fs-20px"><{$v.name}></p>
			<p class="product_list-item-price NotoSerifSB fs-20px">¥<span class="fs-26px"><{$v.price}></span></p>
		</a>
		<{/foreach}>
	</div><!-- /.row -->

</section>
