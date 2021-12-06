	<link href="https://img.shop-pro.jp/tmpl_js/86/slick.css" rel="stylesheet" type="text/css">
	<link href="https://img.shop-pro.jp/tmpl_js/86/slick-theme.css" rel="stylesheet" type="text/css">

	<div class="p-product">
	<!-- パンくずリスト -->
	<div class="c-breadcrumbs u-container">
		<ul class="c-breadcrumbs-list">
		<li class="c-breadcrumbs-list__item">
			<a href="<{$home_url}>">
			ホーム
			</a>
		</li>
		<{if $bid_name != ""}>
		<li class="c-breadcrumbs-list__item">
			<a href="<{$bid_link}>">
			<{$bid_name}>
			</a>
		</li>
		<{/if}>
		<{if $sid_name != ""}>
		<li class="c-breadcrumbs-list__item">
			<a href="<{$sid_link}>">
			<{$sid_name}>
			</a>
		</li>
		<{/if}>
		</ul>
	</div><!-- /.c-breadcrumbs -->
	<!-- //パンくずリスト -->
	<{if $product.id != ""}>
	<div class="p-product u-container">
		<form name="product_form" method="post" action="<{$cart_url}>">
		<div class="p-product-main">
			<!-- 商品画像 -->
			<div class="p-product-img">
			<div class="p-product-img__main js-images-slider">
				<div class="p-product-img__main-item">
				<{if $product.img_url != ""}>
				<img src="<{$product.img_url}>" alt="<{$productlist[num].name|escape:'html'}>" />
				<{else}>
				<img src="https://img.shop-pro.jp/tmpl_img/86/no-image.jpg" alt="<{$productlist[num].name|escape:'html'}>" />
				<{/if}>
				</div>
				<{if $otherimg_num != 0}>
				<{section name=num loop=$otherimg}>
				<{if $otherimg[num].url != ""}>
				<div class="p-product-img__main-item">
					<img src="<{$otherimg[num].url}>" alt="<{$productlist[num].name|escape:'html'}>" />
				</div>
				<{/if}>
				<{/section}>
				<{/if}>
			</div>
			<{if $otherimg_num != 0}>
			<div class="p-product-img__thumb">
				<div class="u-overflow-slide">
				<ul class="p-product-thumb-list">
					<{if $product.img_url != ""}>
					<li class="p-product-thumb-list__item">
					<div class="p-product-thumb-list__img">
						<img src="<{$product.img_url}>" alt="<{$productlist[num].name|escape:'html'}>" />
					</div>
					</li>
					<{/if}>
					<{section name=num loop=$otherimg}>
					<{if $otherimg[num].url != ""}>
					<li class="p-product-thumb-list__item">
						<div class="p-product-thumb-list__img">
						<img src="<{$otherimg[num].url}>" alt="<{$productlist[num].name|escape:'html'}>" />
						</div>
					</li>
					<{/if}>
					<{/section}>
				</ul>
				</div>
			</div>
			<{/if}>
			</div>
			<!-- // 商品画像 -->
			<!-- 商品情報 -->
			<div class="p-product-info">
			<h2 class="p-product-info__ttl">
				<{$product_name}>
			</h2>
			<!-- 型番 -->
			<div class="p-product-info__id">
				<{$product.model}>
			</div>
			<!-- //型番 -->
			<!-- 価格・定価 -->
			<div class="p-product-price">
				<{if $members_login_flg == true && $product.discount_flg == true}>
				<div class="p-product-price__sell">
				<span><{$product.sales}></span>
				<span><{$product.discount_rate}>OFF</span>
				</div>
				<{else}>
				<div class="p-product-price__sell">
				<{$product.sales}>
				</div>
				<{/if}>
				<{if $members_login_flg == true && $product.discount_flg == true}>
				<div class="p-product-price__normal">
				通常価格：<{$product.regular_price}>
				</div>
				<{/if}>
				<{if $product.price_disp}>
				<div class="p-product-price__list-price">
				定価：<{$product.price}>
				</div>
				<{/if}>
			</div>
			<!-- // 価格・定価 -->
			<!-- オプション情報 -->
			<{if $opt_url != ""}>
			<div class="p-product-option">
				<{if $option_output_mode}>
				<{* 表形式 *}>
				<div class="p-product-option-tbl" id="prd-opt-table">
				<{$option_table}>
				</div>
				<div class="p-product-option-select" id="prd-opt-select">
				<{section name=num loop=$option}>
				<div class="p-product-option-select__box">
					<div class="p-product-option-select__ttl">
					<{$option[num].name}>
					</div>
					<select name="<{$option[num].select_name}>" class="product_cart_select">
					<{html_options values=$option_value[num].id output=$option_value[num].name selected=$key}>
					</select>
				</div>
				<{/section}>
				</div>
				<{else}>
				<{* セレクトメニュー *}>
				<div class="p-product-option-select">
				<{section name=num loop=$option}>
				<div class="p-product-option-select__box">
					<div class="p-product-option-select__ttl">
					<{$option[num].name}>
					</div>
					<select name="<{$option[num].select_name}>" class="product_cart_select">
					<{html_options values=$option_value[num].id output=$option_value[num].name selected=$key}>
					</select>
				</div>
				<{/section}>
				</div>
				<{/if}>
			</div><!-- /.p-product-option -->
			<{/if}>
			<!-- // オプション情報 -->
			<!-- 名入れ設定 -->
			<{if $product.product_text_titles}>
			<div class="p-product-name">
				<{foreach from=$product.product_text_titles key=key item=val}>
				<div class="p-product-name__ttl">
				<{$val|escape}>
				</div>
				<div class="p-product-name__body">
				<input type="text" name="product_text[<{$key|escape}>]" value="" />
				</div>
				<{/foreach}>
			</div>
			<{/if}>
			<!-- //名入れ設定 -->
			<!-- 購入フォーム -->
			<div class="p-product-form">
				<{if !$shop_stop_flg && $product.soldout_flg == 0 && !$product.login_sale_flg}>
				<div class="p-product-form-stock">
				<div class="p-product-form-stock__input">
					<input type="text" name="product_num" value="<{$product.init_num}>" />
					<span class="p-product-form-stock__unit"><{$product.unit}></span>
				</div>
				<{if $product.stock_disp}>
				<div class="p-product-form-stock__stock">
					在庫：<{$product.stock_str}>
				</div>
				<{/if}>
				</div>
				<{/if}>
				<div class="p-product-form-btn">
				<div class="p-product-form-btn__cart">
				<{if $product.soldout_flg == 0 && !$shop_stop_flg && !$product.login_sale_flg}>
					<{if $is_enable_async_cart_in_pc}>
					<button type="submit" class="c-btn-cart">
						<i class="c-icon-cart"></i>カートに入れる
					</button>
					<{else}>
					<div class="disable_cartin">
						<button class="c-btn-cart" type="submit">
						<i class="c-icon-cart"></i>カートに入れる
						</button>
					</div>
					<{/if}>
					<p class="p-product-form__error-message stock_error"></p>
					<{else}>
					<{if $product.soldout_flg}>
					<button class="c-btn-cart is-soldout" type="button" disabled="disabled">
						SOLD OUT
					</button>
					<{elseif $product.login_sale_flg}>
					<div class="c-btn-cart is-membersonly">
						<i class="c-icon-cart"></i>会員のみ購入できます
					</div>
					<{/if}>
				<{/if}>
				<{if $shop_stop_flg}>
					<button class="c-btn-cart is-disabled" type="button" disabled="disabled">
					休止中
					</button>
				<{/if}>
				</div>
				</div><!-- /.p-product-form-btn -->
			</div><!-- /.p-product-form -->
			<!-- // 購入フォーム -->
			<!-- 商品用ソーシャルボタン -->
			<ul class="p-product-sns-list">
				<li class="p-product-sns-list__item">
				<{* line *}><{$line_button}>
				</li>
				<li class="p-product-sns-list__item">
				<{* Facebook_like *}><{facebook_like layout="button_count" width=110 action="like"}>
				</li>
				<li class="p-product-sns-list__item">
				<{* twitter *}><{twitter_tweet}>
				</li>
			</ul>
			<!-- // 商品用ソーシャルボタン -->
			<ul class="p-product-link-list">
				<li class="p-product-link-list__item">
				<a href="<{$sk_url}>#return">返品について</a>
				</li>
				<li class="p-product-link-list__item">
				<a href="<{$sk_url}>#info">特定商取引法に基づく表記</a>
				</li>
				<{if $opt_url != ""}>
				<li class="p-product-link-list__item">
				<a href="<{$opt_url}>">オプションの値段詳細</a>
				</li>
				<{/if}>
				<li class="p-product-link-list__item">
				<a href="<{$prod_inq_url}>">この商品について問い合わせる</a>
				</li>
				<li class="p-product-link-list__item">
				<a href="<{$keep_shopping_url}>">買い物を続ける</a>
				</li>
			</ul>
			</div><!-- /.p-product-info -->
		</div><!-- /.p-product-main -->
		<!-- // 商品情報・カート -->
		<div class="p-product-detail">
			<!-- 商品説明 -->
			<div class="p-product-explain">
			<h3 class="p-product__ttl">
				DETAIL
			</h3>
			<div class="p-product-explain__body">
				<{$product.explain}>
			</div>
			</div>
			<!-- //商品説明 -->
			<div class="p-product-other">
			<!-- 組合せ購入 -->
			<{if $together_product_num != 0}>
			<div class="p-product-recommend">
				<h3 class="p-product__ttl">
				RECOMMENDED ITEM
				</h3>
				<ul class="p-product-recommend-list">
				<{section name=num loop=$together_product}>
					<li class="p-product-recommend-list__item">
					<div class="p-product-recommend-list__img">
						<a href="<{$together_product[num].link_url}>">
						<{if $together_product[num].img_url != ""}>
							<img src="<{$together_product[num].img_url}>" alt="<{$together_product[num].name|escape:'html'}>" class="together_product_list_img show item_img" />
						<{else}>
							<img src="https://img.shop-pro.jp/tmpl_img/76/noimage.png" alt="<{$together_product[num].name|escape:'html'}>" class="together_product_list_img show item_img" />
						<{/if}>
						</a>
					</div>
					<div class="p-product-recommend-list__ttl">
						<a href="<{$together_product[num].link_url}>">
						<{$together_product[num].name}>
						</a>
					</div>
					<{if !$together_product[num].soldout_flg}>
					<div class="p-product-recommend-list__price<{if $members_login_flg && $together_product[num].discount_flg}> is-discount<{/if}>">
						<{* 販売価格（ログイン時は会員価格） *}>
						<{$together_product[num].price}>
						<{* 割引率（ログイン時、通常販売価格と会員価格が異なる場合のみ） *}>
						<{if $members_login_flg && $together_product[num].discount_flg}><{$together_product[num].discount_rate}>OFF<{/if}>
					</div>
					<{* 通常販売価格（ログイン時、通常販売価格と会員価格が異なる場合のみ） *}>
					<{if $members_login_flg && $together_product[num].discount_flg}>
					<div class="p-product-recommend-list__price is-strikethrough">
						<{$together_product[num].regular_price}>
					</div>
					<{/if}>
					<{else}>
					<{* 売り切れの表記 *}>
					<div class="p-product-recommend-list__price is-soldout">
						SOLD OUT
					</div>
					<{/if}>
					<{* 簡易説明文 *}>
					<{if $together_product[num].s_expl != ""}>
					<div class="p-product-recommend-list__expl">
						<{$together_product[num].s_expl}>
					</div>
					<{/if}>
					</li>
				<{/section}>
				</ul>
			</div>
			<{/if}>
			<!-- //組合せ購入 -->
			<!-- レビュー -->
			<{if $review_use_flg}>
			<div class="p-product-review">
				<h3 class="p-product__ttl">
				REVIEW
				</h3>
				<{section name=num loop=$reviewlist}>
				<div class="p-product-review__item">
				<div class="p-product-review__heading">
					<div class="p-product-review__rates">
					<{section name=star start=0 loop=$review_star_num step=1}>
					<{if $reviewlist[num].star > $smarty.section.star.index}>
					<svg class="p-product-review__rate is-color" role="img" aria-hidden="true"><use xlink:href="#star"></use></svg>
					<{else}>
					<svg class="p-product-review__rate" role="img" aria-hidden="true"><use xlink:href="#star"></use></svg>
					<{/if}>
					<{/section}>
					</div>
					<{if $reviewlist[num].title != ""}>
					<div class="p-product-review__ttl">
					<{$reviewlist[num].title}>
					</div>
					<{/if}>
					<ul class="p-product-review-info">
					<li class="p-product-review-info__item is-type">
						<{if $reviewlist[num].nickname != ""}><{$reviewlist[num].nickname}> <{/if}>
						<{if $reviewlist[num].nendai != ""}> <{$reviewlist[num].nendai}> <{/if}>
						<{if $reviewlist[num].sex != ""}> <{$reviewlist[num].sex}> <{/if}>
					</li>
					<li class="p-product-review-info__item is-date">
						<{$reviewlist[num].date}>
					</li>
					</ul>
				</div>
				<{if $reviewlist[num].img_url != ""}>
				<div class="p-product-review__img">
					<img src="<{$reviewlist[num].img_url}>" />
				</div>
				<{/if}>
				<div class="p-product-review__body">
					<{$reviewlist[num].comment}>
				</div>
				<!-- ショップからの返信コメント-->
				<{if $reviewlist[num].res_date != ""}>
				<div class="p-product-review-reply">
					<div class="p-product-review-reply__ttl">
					ショップからのコメント
					</div>
					<div class="p-product-review-reply__body">
					<{$reviewlist[num].res_comment}>
					</div>
					<div class="p-product-review-reply__date">
					<{$reviewlist[num].res_date}>
					</div>
				</div>
				<{/if}>
				</div>
				<{/section}>
				<div class="p-product-review__btn">
				<a href="<{$review_send_url}>" class="c-btn is-arrow">
					WRITE REVIEW
				</a>
				</div>
			</div><!-- /.p-product-review -->
			<{/if}>
			<!-- //レビュー -->
			</div><!-- /.p-product-other -->
		</div><!-- /.p-product-detail -->
		<{$product.info}>
		</form>
	<{else}>
		<{if $product.hide_flg == true}>
		<div class="p-product u-container">
		<p class="mar_t_50 txt_c txt_18">この商品を閲覧するにはログインが必要です。</p>
		</div>
		<{else}>
		<div class="p-product u-container">
		<p class="mar_t_50 txt_c txt_18">現在、この商品は扱っておりません。</p>
		</div>
		<{/if}>
	<{/if}>
	</div>
	<{* ↓↓ デバイスサイズ変更時にオプション選択フォームの表示切替に使用 ↓↓ *}>
	<{if $option_output_mode}>
	<div class="hide">
		<div class="prd-opt-select">
		<{section name=num loop=$option}>
		<div class="p-product-option-select__box">
			<div class="p-product-option-select__ttl">
			<{$option[num].name}>
			</div>
			<select name="<{$option[num].select_name}>" class="product_cart_select">
			<{html_options values=$option_value[num].id output=$option_value[num].name selected=$key}>
			</select>
		</div>
		<{/section}>
		</div>
		<div class="prd-opt-table">
		<{$option_table}>
		</div>
	</div>
	<{/if}>

	<script src="https://img.shop-pro.jp/tmpl_js/86/slick.min.js"></script>

	<script type="text/javascript">
	$(document).on("ready", function() {
	var slider = ".js-images-slider";
	var thumbnailItem = ".p-product-thumb-list__item";

	$(thumbnailItem).each(function() {
		var index = $(thumbnailItem).index(this);
		$(this).attr("data-index",index);
	});

	$(slider).on('init',function(slick) {
		var index = $(".slide-item.slick-slide.slick-current").attr("data-slick-index");
		$(thumbnailItem+'[data-index="'+index+'"]').addClass("is-current");
	});

	$(slider).slick( {
		autoplay: false,
		arrows: true,
		infinite: true
	});

	$(thumbnailItem).on('click',function() {
		var index = $(this).attr("data-index");
		$(slider).slick("slickGoTo",index,false);
	});

	$(slider).on('beforeChange',function(event,slick, currentSlide,nextSlide){
		$(thumbnailItem).each(function() {
		$(this).removeClass("is-current");
		});
		$(thumbnailItem+'[data-index="'+nextSlide+'"]').addClass("is-current");
	});
	});
	</script>
