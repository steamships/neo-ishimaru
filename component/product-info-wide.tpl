<!-- product-info-wide.tpl ▼ -->
<{if $tpl_name == "product"}>
<!-- 商品情報 -->
<div id="product-info" class="align-items-start col-12">


	<div class="row">

		<!-- 商品カルーセルナビボタン -->
		<div class="col-lg-3 d-none d-lg-block">
			<!-- PC用サムネイルナビ -->
			<div id="product-info-img-thumbs" class="row g-1">
				<div class="col-6">
					<img src="<{$product.img_url}>" data-bs-target="#product-info-img" data-bs-slide-to="0">
				</div>
				<{foreach from=$otherimg key=k item=img}><{if $img.url != ''}>
				<div class="col-6">
					<img src="<{$img.url}>" data-bs-target="#product-info-img" data-bs-slide-to="<{$k+1}>">
				</div>
				<{/if}><{/foreach}>
			</div>
		</div><!-- /.col-lg3 -->

		<!-- 商品画像 -->
		<div id="product-info-img" class="carousel slide col-lg-5 ps-lg-3 pe-lg-2 px-0 mb-1" data-bs-ride="carousel" data-bs-interval="false">
			<!-- カルーセル -->
			<div id="product-info-img-inner" class="carousel-inner">
				<div class="carousel-item active">
					<img src="<{$product.img_url}>" class="d-block w-100">
				</div>
				<{foreach from=$otherimg item=img}><{if $img.url != ''}>
				<div class="carousel-item">
					<img src="<{$img.url}>" class="d-block w-100">
				</div>
				<{/if}><{/foreach}>
			</div>

			<!-- SP用矢印ナビ -->
			<div id="product-info-img-nav" class="carousel-control d-lg-none">
				<a class="carousel-control-prev" href="#product-info-img" role="button" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</a>
				<a class="carousel-control-next" href="#product-info-img" role="button" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</a>
			</div>
		</div>

		<!-- 商品詳細 -->
		<div id="product-info-detail" class="col-lg-4 NotoSerifL">
			<!-- 商品タイトル -->
			<h2 class="fs-5 fw-bold lh-lg mb-1"><{$product.name}></h2>

			<!-- 価格・定価 -->
			<div id="product-info-detail-prices">
				<div id="product-info-detail-prices-sales">
					<span class="fs-4 fw-bold my-1 d-inline-block"><{$product.sales}></span>
					<{* 割引商品の場合 *}>
					<{if $members_login_flg == true && $product.discount_flg == true}>
					<span class="badge bg-danger ms-1"><{$product.discount_rate}>OFF</span>
					<div class="text-secondary small">
						通常価格：<{$product.regular_price}>
					</div>
					<{/if}>
				</div>
				<{if $product.price_disp}>
				<div id="product-info-detail-prices-price" class="text-secondary small">
					定価：<{$product.price}>
				</div>
				<{/if}>
			</div>

			<!-- 簡易説明 -->
			<{if $product.simple_explain != ""}>
			<div id="product-info-detail-simple-explain" class="small my-1">
				<{$product.simple_explain}>
			</div>
			<{/if}>

			<!-- カート周り -->
			<div id="product-info-detail-cart" class="my-1">
				<!-- 購入フォーム -->
				<form name="product_form" method="post" action="<{$cart_url}>">
					<div class="d-grid gap-1">

						<!-- オプション情報 -->
						<{if $opt_url != ""}>
						<div id="product-info-detail-cart-options">
							<{if $option_output_mode}>
							<{* 表形式 *}>
							<div id="product-info-detail-cart-options-table">
								<{$option_table}>
							</div>
							<div id="product-info-detail-cart-options-select">
								<{section name=num loop=$option}>
								<p><{$option[num].name}></p>
								<select name="<{$option[num].select_name}>" class="form-control bg-white border-primary">
								<{html_options values=$option_value[num].id output=$option_value[num].name selected=$key}>
								</select>
								<{/section}>
							</div>
							<{else}>
							<{* セレクトメニュー *}>
							<div id="product-info-detail-cart-options-select" class="d-grid gap-1">
								<{section name=num loop=$option}>
								<p><{$option[num].name}></p>
								<select name="<{$option[num].select_name}>" class="form-control bg-white border-primary">
								<{html_options values=$option_value[num].id output=$option_value[num].name selected=$key}>
								</select>
								<{/section}>
							</div>
							<{/if}>
						</div>
						<{/if}>

						<!-- 基本的な販売可能商品の在庫 -->
						<{if !$shop_stop_flg && $product.soldout_flg == 0 && !$product.login_sale_flg}>
						<div id="product-info-detail-cart-unit" class="d-grid gap-1">
							<label class="form-label col-3">
								<div>数量</div>
								<input id="hoge" class="form-control bg-white border-primary" type="number" name="product_num" value="<{$product.init_num}>" />
							</label>
							<{if $product.stock_disp}>
							<div id="product-info-detail-cart-unit-stock">
								在庫：<{$product.stock_str}>
							</div>
							<{/if}>
						</div>
						<{/if}>

						<!-- カートボタン -->
						<div class="d-grid gap-1">
						<{if $product.soldout_flg == 0 && !$shop_stop_flg && !$product.login_sale_flg}>
							<button class="btn btn-lg btn-primary p-1" type="submit">
								<!-- <i class="bi bi-cart-plus-fill"></i>　-->カートに入れる
							</button>
						<{else}>
							<{if $product.soldout_flg}>
							<button class="btn btn-lg btn-primary p-1" type="button" disabled="disabled">
								<i class="bi bi-x-circle"></i> 売り切れ
							</button>
							<{elseif $product.login_sale_flg}>
							<button class="btn btn-lg btn-primary p-1" type="button" disabled="disabled">
								<i class="bi bi-x-circle"></i> 会員のみ購入できます
							s</button>
							<{/if}>
						<{/if}>
						<{if $shop_stop_flg}>
							<button class="btn btn-lg btn-primary p-1" type="button" disabled="disabled">
								<i class="bi bi-x-circle"></i> 休止中
							</button>
						<{/if}>
						</div>

						<!-- 注意書きリンク -->
						<ul class="list-unstyled p-1 border border-primary">
							<li>
								<a class="text-decoration-none small" href="<{$sk_url}>#return">
									<i class="bi bi-check-circle-fill"></i>　返品について
								</a>
							</li>
							<li>
								<a class="text-decoration-none small" href="<{$sk_url}>#info">
									<i class="bi bi-check-circle-fill"></i>　特定商取引法に基づく表記
								</a>
							</li>
							<li>
								<a class="text-decoration-none small" href="<{$privacy_url}>">
									<i class="bi bi-check-circle-fill"></i>　プライバシーポリシー
								</a>
							</li>
							<{if $opt_url != ""}>
							<li>
								<a class="text-decoration-none small" href="<{$opt_url}>">
									<i class="bi bi-check-circle-fill"></i>　オプションの値段詳細
								</a>
							</li>
							<{/if}>
							<li>
								<a class="text-decoration-none small" href="<{$prod_inq_url}>">
									<i class="bi bi-check-circle-fill"></i>　この商品について問い合わせる
								</a>
							</li>
							<li>
								<a class="text-decoration-none small" href="<{$keep_shopping_url}>">
									<i class="bi bi-check-circle-fill"></i>　買い物を続ける
								</a>
							</li>
						</ul>

					</div><!-- /.p-product-form -->
				</form>
			</div>
		</div>


	</div><!-- /.row -->

</div>
<{/if}>
<!-- product-info-wide.tpl ▲ -->
