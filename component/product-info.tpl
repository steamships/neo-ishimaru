<!-- 商品情報 -->
<div class="row align-items-end">
	<!-- 商品画像 -->
	<div class="col-lg-7">
		<img src="<{$product.img_url}>">
	</div><!-- /.collg-6 -->

	<div class="col-lg-5">
		<!-- 商品タイトル -->
		<h2><{$product.name}></h2>

		<!-- 商品価格 -->
		<{if $members_login_flg && $product.discount_flg}>
		<div class="p-cart-form__price c-product-info__price c-product-info__price--discount">
			<{if $option_price.max != $option_price.min}>
			<{$option_price.min}> &#12316; <{$option_price.max}>
			<{else}>
			<{$product.sales}>
			<{/if}>

			<{$product.discount_rate}>OFF
		</div>
		<div class="p-cart-form__regular-price c-product-info__regular-price">
			<{$product.regular_price}>
		</div>
		<{else}>
		<div class="p-cart-form__price c-product-info__price">
			<{if $option_price.max != $option_price.min}>
			<{$option_price.min}> &#12316; <{$option_price.max}>
			<{else}>
			<{$product.sales}>
			<{/if}>

		</div>
		<{/if}>

		<!-- ポイント -->
		<!-- 簡易説明 -->
		<{if $product.simple_explain != ""}>
		<div>
			<{$product.simple_explain}>
		</div>
		<{/if}>
		<!-- カート -->
	</div><!-- /.col-6 -->
</div><!-- /.row -->
