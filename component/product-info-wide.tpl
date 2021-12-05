<!-- product-info-wide.tpl ▼ -->
<{if $tpl_name == "product"}>
<!-- 商品情報 -->
<div id="product-info" class="align-items-start col-12">
	<div class="row">

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
		<div id="product-info-img" class="carousel slide col-lg-5 ps-lg-3" data-bs-ride="carousel" data-bs-interval="false">
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

		<div id="product-info-detail" class="col-lg-4 NotoSerifL">
			<!-- 商品タイトル -->
			<h2 class="fs-5 fw-bold lh-lg mb-2"><{$product.name}></h2>

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
			<div class="small">
				<{$product.simple_explain}>
			</div>
			<{/if}>
			<!-- カート -->
			<div class="p-cart-form__option">
			<{if $layout_type == 1 || $option_cartin_buttons_arrow_flag == false}>
				<form name="product_form" method="post" action="<{$cart_url}>">
				<{* オプション情報 *}>
				<{if $opt_url != ""}>
				<{if $option_output_mode}>
				<{* 表形式 *}>
				<div class="c-form__unit">
					<div class="c-form__unit-label">
					<{if $option|@count == 1}>
					<{section name=num loop=$option}>
					<{$option[num].name}>
					<{/section}>
					<{else}>
					オプション
					<{/if}>
					</div>
					<div class="c-form__unit-body">
					<div class="p-option-table c-table-wrap">
						<{$option_table}>
					</div>
					</div>
				</div>
				<{else}>
				<{* セレクトメニュー *}>
				<{section name=num loop=$option}>
				<div class="c-form__unit">
					<div class="c-form__unit-label">
					<{$option[num].name}>
					</div>
					<div class="c-form__unit-body">
					<div class="p-cart-form__option-select c-select">
						<select name="<{$option[num].select_name}>" class="c-select__value">
						<option value="">選択してください</option>
						<{html_options values=$option_value[num].id output=$option_value[num].name selected=$key}>
						</select>
						<svg class="c-select__icon" role="img" aria-hidden="true"><use xlink:href="#angle-down"></use></svg>
					</div>
					</div>
				</div>
				<{/section}>
				<{/if}>
				<{/if}>
				<{* オプション情報 *}>

				<{* 名入れ機能 *}>
				<{if $product.product_text_titles}>
				<{foreach from=$product.product_text_titles key=key item=val}>
				<div class="c-form__unit">
					<div class="c-form__unit-label">
					<{$val|escape}>
					</div>
					<div class="c-form__unit-body">
					<input type="text" name="product_text[<{$key|escape}>]" value="" class="c-input-text" />
					</div>
				</div>
				<{/foreach}>
				<{/if}>
				<{* // 名入れ機能 *}>

				<{* パスワード制限 *}>
				<{if $product.password_field}>
				<div class="c-form__unit">
					<div class="c-form__unit-label">
					パスワードを入力してください
					</div>
					<div class="c-form__unit-body p-cart-form__password-input">
					<{$product.password_field}>
					</div>
				</div>
				<{/if}>
				<{* // パスワード制限 *}>

				<{if !$shop_stop_flg && $product.soldout_flg == 0 && !$product.login_sale_flg}>
				<div class="c-form__unit">
					<div class="c-form__unit-label c-form__unit-label--fix-margin">
					購入数
					</div>
					<div class="c-form__unit-body">
					<input type="text" name="product_num" value="<{$product.init_num}>" class="c-input-text p-cart-form__add-cart-num" />
					<div class="p-cart-form__add-num-wrap">
						<a href="<{$num_up_url}>" class="p-cart-form__add-num p-cart-form__add-num--up">
						<svg role="img" aria-hidden="true"><use xlink:href="#angle-up"></use></svg>
						</a>
						<a href="<{$num_dw_url}>" class="p-cart-form__add-num p-cart-form__add-num--down">
						<svg role="img" aria-hidden="true"><use xlink:href="#angle-down"></use></svg>
						</a>
					</div>
					<{$product.unit}>
					</div>
				</div>
				<{/if}>

				<div class="p-cart-form__button-wrap">
					<{if $product.soldout_flg == 0 && !$shop_stop_flg && !$product.login_sale_flg}>
					<{if $is_enable_async_cart_in_pc}>
					<button type="submit" class="p-cart-form__add-cart-button c-button c-button--solid cart_in_async">
					カートに入れる
					</button>
					<{else}>
					<div class="disable_cartin">
					<button type="submit" class="p-cart-form__add-cart-button c-button c-button--solid">
						カートに入れる
					</button>
					</div>
					<{/if}>
					<p class="p-cart-form__error-message stock_error"></p>
					<{else}>
					<div>
					<{if $product.soldout_flg}>
					<button type="button" class="p-cart-form__add-cart-button c-button c-button--solid is-disabled" disabled>
						SOLD OUT
					</button>
					<{elseif $product.login_sale_flg}>
					<button type="submit" class="p-cart-form__add-cart-button c-button c-button--solid is-disabled" disabled>
						会員のみ購入できます
					</button>
					<{/if}>
					</div>
					<{/if}>
				</div>
				<{$product.info}>
				</form>
			<{else}>
				<{$option_cartin_buttons}>
			<{/if}>

			</div>
		</div><!-- /.col-6 -->
	</div><!-- /.row -->
</div>
<{/if}>
<!-- product-info-wide.tpl ▲ -->
