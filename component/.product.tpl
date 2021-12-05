<{* オプションごとのカートボタン 表示設定 *}>
<{assign var="layout_type" value="1"}>
<div class="p-layout-container">
<{if $product.id != ""}>
<div class="c-topic-path">
	<ul class="c-topic-path__list">
	<li class="c-topic-path__item">
		<a href="<{$home_url}>">ホーム</a>
	</li>
	<{if $bid_name != ""}>
	<li class="c-topic-path__item">
		<svg role="img" aria-hidden="true"><use xlink:href="#angle-right"></use></svg>
		<a href="<{$bid_link}>"><{$bid_name}></a>
	</li>
	<{/if}>
	<{if $sid_name != ""}>
	<li class="c-topic-path__item">
		<svg role="img" aria-hidden="true"><use xlink:href="#angle-right"></use></svg>
		<a href="<{$sid_link}>"><{$sid_name}></a>
	</li>
	<{/if}>
	</ul>
	<{section name=cnt loop=$group_breadcrumb_list}>
	<ul class="c-topic-path__list">
	<li class="c-topic-path__item c-topic-path__item--hidden">
		<a href="<{$home_url}>">ホーム</a>
	</li>
	<{section name=num loop=$group_breadcrumb_list[cnt].group_breadcrumb}>
	<li class="c-topic-path__item">
		<svg role="img" aria-hidden="true"><use xlink:href="#angle-right"></use></svg>
		<a href="<{$group_breadcrumb_list[cnt].group_breadcrumb[num].link_url}>">
		<{$group_breadcrumb_list[cnt].group_breadcrumb[num].name}>
		</a>
	</li>
	<{/section}>
	</ul>
	<{/section}>
</div>

<{* クイックカートイン *}>
<div class="cart_in_modal cart_modal__close" style="display: none;">
	<div class="cart_in_modal__outline not_bubbling">
	<label class="cart_modal__close cart_in_modal__close-icon">
	</label>
	<p class="cart_in_modal__heading">
		こちらの商品が<br class="sp-br">カートに入りました
	</p>
	<div class="cart_in_modal__detail">
		<{if $product.img_url != ""}>
		<div class="cart_in_modal__image-wrap">
		<img src="<{$product.img_url}>" alt="<{$productlist[num].name}>" class="cart_in_modal__image" />
		</div>
		<{/if}>
		<p class="cart_in_modal__name">
		<{$product_name}>
		</p>
	</div>
	<div class="cart_in_modal__button-wrap">
		<button class="cart_view_with_async cart_in_modal__button cart_in_modal__button--solid">かごの中身を見る</button>
		<p class="cart_modal__close cart_in_modal__text-link">ショッピングを続ける</p>
	</div>
	</div>
</div>
<div class="cart_in_error_modal cart_in_error__close" style="display: none;">
	<div class="cart_in_modal__outline not_bubbling">
	<label class="cart_in_error__close cart_in_modal__close-icon">
	</label>
	<p class="cart_in_error_message cart_in_error_modal__heading"></p>
	<div class="cart_in_modal__button-wrap">
		<button class="cart_in_error__close cart_in_modal__button cart_in_modal__button--solid">ショッピングを続ける</button>
	</div>
	</div>
</div>
<{* // クイックカートイン *}>

<div class="p-product-wrap">
	<div class="p-product-heading js-product-fix">
	<div class="theiaStickySidebar">
		<{if $product.img_url != "" || $otherimg_num > 0 || $product.simple_explain != ""}>
		<div class="p-product-heading__unit">
		<{* 商品写真・サムネイルクリックで切り替え *}>
		<{if $product.img_url != "" || $otherimg_num > 0}>
		<div class="p-large-image">
			<div class="p-large-image__image-wrap c-image-wrap">
			<div class="c-image-box js-thumbnail-set">
				<{if $product.img_url != ""}>
				<img src="<{$product.img_url}>" alt="<{$productlist[num].name}>" class="c-image-box__image js-lazyload" />
				<{else}>
				<span class="c-image-box__image c-image-box__image--noimage">No Image</span>
				<{/if}>
			</div>
			</div>
		</div>
		<{if $otherimg_num > 0}>
		<ul class="p-thumbnail-list">
			<{if $product.img_url != ""}>
			<li class="p-thumbnail-list__unit">
			<div class="p-thumbnail-list__image-wrap c-image-wrap c-image-wrap--link is-current js-thumbnail-select" data-image-url="<{$product.img_url}>">
				<span class="c-image-box">
				<img src="<{$product.img_url}>" class="c-image-box__image js-lazyload" />
				</span>
			</div>
			</li>
			<{/if}>
			<{section name=num loop=$otherimg}>
			<{if $otherimg[num].url != "" && $smarty.section.num.iteration < 10}>
			<li class="p-thumbnail-list__unit">
			<div class="p-thumbnail-list__image-wrap c-image-wrap c-image-wrap--link js-thumbnail-select" data-image-url="<{$otherimg[num].url}>">
				<span class="c-image-box">
				<img src="<{$otherimg[num].url}>" class="c-image-box__image js-lazyload" />
				</span>
			</div>
			</li>
			<{/if}>
			<{/section}>
		</ul>
		<{if $otherimg_num > 9}>
		<div class="p-view-product-images">
			<a href="#product-images">すべて見る</a>
		</div>
		<{/if}>
		<{/if}>
		<{/if}>
		<{* // 商品写真・サムネイルクリックで切り替え *}>

		<{* 簡易説明文 *}>
		<{if $product.simple_explain != ""}>
		<div class="p-short-description">
			<{$product.simple_explain}>
		</div>
		<{/if}>
		<{* // 簡易説明文 *}>
		</div>
		<{/if}>

		<div id="cart-form" class="p-product-heading__unit">
		<div class="p-cart-form">
			<div class="p-cart-form__info">
			<div class="p-cart-form__name">
				<{$product_name}>
			</div>

			<{* 販売価格（ログイン時は会員価格） *}>
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
			<{* // 販売価格（ログイン時は会員価格） *}>

			<{* 定価 *}>
			<{if $product.price_disp && $product.price != $product.sales}>
			<div class="p-cart-form__list-price">
				定価&nbsp;<{$product.price}>
			</div>
			<{/if}>
			<{* // 定価 *}>

			<{* 付与ポイント *}>
			<{if $product.shoppoint > 0}>
			<div class="p-cart-form__point">
				<span>
				<{$product.shoppoint}>
				</span>
				ポイント還元
			</div>
			<{/if}>
			<{* // 付与ポイント *}>

			<{* お気に入り追加ボタン *}>
			<div class="p-product-fav-item">
				<button type="button" <{favorite_button_attribute added_class="is-added" product_id=$product.id}>>
				<svg role="img" aria-hidden="true"><use xlink:href="#heart"></use></svg>
				お気に入り
				</button>
			</div>
			<{* // お気に入り追加ボタン *}>

			<{* 在庫状況 *}>
			<{if $product.stock_disp}>
			<div class="p-cart-form__stock">
				<{$product.stock_str}>
			</div>
			<{/if}>
			<{* // 在庫状況 *}>

			<{* オプション詳細情報 *}>
			<{if $opt_url != ""}>
			<div>
				<span class="p-view-option-info c-button c-button--border c-button--sm js-view-option-info">
				<svg class="c-button__icon" role="img" aria-hidden="true"><use xlink:href="#info-circle"></use></svg>
				各オプションの詳細情報
				</span>
				<div id="js-option-info" class="p-price-table is-hidden">
				<{if $option|@count > 1}>
				<div class="p-price-table__heading-wrap">
					<div class="p-price-table__heading">
					<{$option_tree[0].op_name}>
					</div>
					<div class="p-price-table__heading">
					<{$option_tree[0].data[0].op_name}>
					</div>
				</div>
				<{/if}>
				<dl class="p-price-table__body">
					<{foreach from=$option_tree item=op2_row}>
					<dt class="p-price-table__name">
					<{if $op2_row.name != ""}>
					<{$op2_row.name}>
					<{else}>
					<{$op2_row.data[0].op_name}>
					<{/if}>
					</dt>
					<dd>
					<ul>
						<{foreach from=$op2_row.data item=op1_row}>
						<li>
						<div class="p-price-table__name">
							<{$op1_row.name}>
						</div>
						<{if $option_price.max != $option_price.min}>
						<{if $members_login_flg && $op1_row.discount_flg}>
						<div class="c-product-info__price c-product-info__price--discount">
							<{$op1_row.sales}><{$op1_row.discount_rate}>
						</div>
						<div class="c-product-info__regular-price">
							<{$op1_row.regular_price}>
						</div>
						<{else}>
						<div class="c-product-info__price">
							<{$op1_row.sales}>
						</div>
						<{/if}>
						<{/if}>
						<{if $op1_row.soldout_flg}>
						<div class="c-product-info__soldout">
							SOLD OUT
						</div>
						<{/if}>
						<{if $op1_row.stock_disp}>
						<div class="p-price-table__stock">
							<{$op1_row.stock_str}>
						</div>
						<{/if}>
						</li>
						<{/foreach}>
					</ul>
					</dd>
					<{/foreach}>
				</dl>
				</div>
			</div>

			<{/if}>
			<{* // オプション詳細情報 *}>
			</div>
			<{* 購入カート *}>
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
					<svg class="c-button__icon" role="img" aria-hidden="true">
						<use xlink:href="#shopping-cart"></use>
					</svg>
					カートに入れる
					</button>
					<{else}>
					<div class="disable_cartin">
					<button type="submit" class="p-cart-form__add-cart-button c-button c-button--solid">
						<svg class="c-button__icon" role="img" aria-hidden="true"><use xlink:href="#shopping-cart"></use></svg>
						カートに入れる
					</button>
					</div>
					<{/if}>
					<p class="p-cart-form__error-message stock_error"></p>
					<{else}>
					<div>
					<{if $product.soldout_flg}>
					<button type="button" class="p-cart-form__add-cart-button c-button c-button--solid is-disabled" disabled>
						<svg class="c-button__icon" role="img" aria-hidden="true"><use xlink:href="#shopping-cart"></use></svg>
						SOLD OUT
					</button>
					<{elseif $product.login_sale_flg}>
					<button type="submit" class="p-cart-form__add-cart-button c-button c-button--solid is-disabled" disabled>
						<svg class="c-button__icon" role="img" aria-hidden="true"><use xlink:href="#shopping-cart"></use></svg>
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
			<{* //購入カート *}>
			<ul class="p-cart-form__link-list">
			<li>
				<a href="<{$sk_url}>#return">返品について</a>
			</li>
			<li>
				<a href="<{$sk_url}>#info">特定商取引法に基づく表記</a>
			</li>
			</ul>
		</div>
		</div>
	</div>
	</div>


	<div class="p-product-body">
	<div class="p-product-body-inner">
		<{if $product.model != ""}>
		<div class="p-product-body__model">
		<{$product.model}>
		</div>
		<{/if}>

		<div class="p-product-body__name">
		<{$product_name}>
		</div>

		<{* ソーシャル共有ボタン *}>
		<ul class="p-product-body__share-buttons">
		<li>
			<{line_button}>
		</li>
		<li>
			<{twitter_tweet}>
		</li>
		<li>
			<{facebook_like layout="button_count" width=100}>
		</li>
		</ul>
		<{* // ソーシャル共有ボタン *}>

		<{if $review_use_flg}>
		<div class="p-product-body__review-link">
		<a href="#review">
			<span><{$review_item_num}></span>
			件のレビュー
		</a>
		</div>
		<{/if}>

		<{* 販売価格（ログイン時は会員価格） *}>
		<{if $members_login_flg && $product.discount_flg}>
		<div class="p-product-body__price p-product-body__price--discount">
		<{if $option_price.max != $option_price.min}>
		<{$option_price.min}> &#12316; <{$option_price.max}>
		<{else}>
		<{$product.sales}>
		<{/if}>

		<{$product.discount_rate}>OFF
		</div>
		<div class="p-product-body__regular-price">
		<{$product.regular_price}>
		</div>
		<{else}>
		<div class="p-product-body__price">
		<{if $option_price.max != $option_price.min}>
		<{$option_price.min}> &#12316; <{$option_price.max}>
		<{else}>
		<{$product.sales}>
		<{/if}>

		</div>
		<{/if}>
		<{* // 販売価格（ログイン時は会員価格） *}>

		<{* 付与ポイント *}>
		<{if $product.shoppoint > 0}>
		<div class="p-product-body__point">
		<span><{$product.shoppoint}></span>
		ポイント還元
		</div>
		<{/if}>
		<{* // 付与ポイント *}>

		<{* 商品説明文 *}>
		<{if $product.explain != ""}>
		<div class="p-product-body__description">
		<{$product.explain}>
		</div>
		<{/if}>
		<{* // 商品説明文 *}>

		<{* 商品画像 *}>
		<{if $product.img_url != "" || $otherimg_num > 0}>
		<div id="product-images" class="p-product-body__images">
		<ul class="p-product-images">
			<{if $product.img_url != ""}>
			<li class="p-product-images__unit">
			<a href="<{$product.img_url}>" class="p-product-images__image-wrap c-image-wrap c-image-wrap--link js-open-modal" rel="product-gallery">
				<div class="c-image-box">
				<img src="<{$product.img_url}>" class="c-image-box__image js-lazyload" />
				</div>
			</a>
			</li>
			<{/if}>
			<{section name=num loop=$otherimg}>
			<{if $otherimg[num].url != ""}>
			<li class="p-product-images__unit">
			<a href="<{$otherimg[num].url}>" class="p-product-images__image-wrap c-image-wrap c-image-wrap--link js-open-modal" rel="product-gallery">
				<div class="c-image-box">
				<img src="<{$otherimg[num].url}>" class="c-image-box__image js-lazyload" />
				</div>
			</a>
			</li>
			<{/if}>
			<{/section}>
		</ul>
		</div>
		<{/if}>
		<{* // 商品画像 *}>

		<{if $product.soldout_flg == 0 && !$shop_stop_flg && !$product.login_sale_flg}>
		<a href="#cart-form" class="p-product-body__linkto-cart c-button c-button--solid">
		この商品を購入する
		</a>
		<{/if}>
	</div>
	</div>

</div>

<div class="p-product-footer">
	<ul class="p-product-footer-nav">
	<li>
		<a href="<{$prod_inq_url}>">
		この商品について問い合わせる
		<svg class="c-icon" role="img" aria-hidden="true"><use xlink:href="#angle-right"></use></svg>
		</a>
	</li>
	<li>
		<a href="<{$keep_shopping_url}>">
		買い物を続ける
		<svg class="c-icon" role="img" aria-hidden="true"><use xlink:href="#angle-right"></use></svg>
		</a>
	</li>
	</ul>
</div>

<{if $review_use_flg}>
<div id="review" class="c-section p-review">
	<h2 class="c-section__heading">
	<div class="c-section__heading--title">
		<span>レビュー</span>
	</div>
	</h2>
	<{section name=num loop=$reviewlist}>
	<div class="p-review__unit">
	<div class="p-posted-review">
		<{if $reviewlist[num].img_url != ""}>
		<img src="<{$reviewlist[num].img_url}>" class="p-posted-review__image" />
		<{/if}>
		<div class="p-posted-review__heading">
		<{section name=star start=0 loop=$review_star_num step=1}>
		<{if $reviewlist[num].star > $smarty.section.star.index}>
		<svg class="p-posted-review__star is-color" role="img" aria-hidden="true"><use xlink:href="#star"></use></svg>
		<{else}>
		<svg class="p-posted-review__star" role="img" aria-hidden="true"><use xlink:href="#star"></use></svg>
		<{/if}>
		<{/section}>
		<{if $reviewlist[num].title != ""}>
		<span class="p-posted-review__title"><{$reviewlist[num].title}></span>
		<{/if}>
		<ul class="p-posted-review__info">
			<{if $reviewlist[num].nickname != ""}>
			<li>
			<{$reviewlist[num].nickname}>
			</li>
			<{/if}>
			<{if $reviewlist[num].nendai != ""}>
			<li>
			<{$reviewlist[num].nendai}>
			</li>
			<{/if}>
			<{if $reviewlist[num].sex != ""}>
			<li>
			<{$reviewlist[num].sex}>
			</li>
			<{/if}>
			<li>
			<{$reviewlist[num].date}>
			</li>
		</ul>
		</div>
		<div class="p-posted-review__body">
		<div class="p-posted-review__comment">
			<{$reviewlist[num].comment}>
		</div>
		</div>
	</div>
	<{if $reviewlist[num].res_date != ""}>
	<div class="p-replied-review">
		<div class="p-replied-review__heading">
		<{$reviewlist[num].res_date}>
		</div>
		<div class="p-replied-review__body">
		<{$reviewlist[num].res_comment}>
		</div>
	</div>
	<{/if}>
	</div>
	<{/section}>
	<a href="<{$review_send_url}>" class="p-review__button c-button c-button--border">
	<svg class="c-button__icon" role="img" aria-hidden="true"><use xlink:href="#pencil"></use></svg>
	レビューを書く
	</a>
</div>
<{/if}>


<{if $together_product_num != 0}>
<h2 class="c-section__heading">
	<div class="c-section__heading--title">
	<span>この商品を買った人は<br class="u-visible--phone" />こんな商品も買っています</span>
	</div>
</h2>



<ul class="c-product-list">
	<{section name=num loop=$together_product}>

	<li class="c-product-list__item">

	<{* 商品画像 *}>
	<a href="<{$together_product[num].link_url}>" class="c-product-list__image-wrap c-image-wrap c-image-wrap--link">
		<{* 商品画像1枚目 *}>
		<div class="c-image-box<{if $together_product[num].otherimg[0].url != ""}> c-image-box--main<{/if}>">
		<{if $together_product[num].img_url != ""}>
		<img src="<{$together_product[num].img_url}>" alt="<{$together_product[num].name}>" class="c-image-box__image js-lazyload" />
		<{else}>
		<span class="c-image-box__image c-image-box__image--noimage">No Image</span>
		<{/if}>
		</div>
		<{* 商品画像2枚目（2枚目が存在する場合のみ） *}>
		<{foreach from=$together_product[num].otherimg item=otherimg name=otherimg}>
		<{if $otherimg.url != "" && $smarty.foreach.otherimg.first}>
		<div class="c-image-box c-image-box--otherimg">
		<img src="<{$otherimg.url}>" class="c-image-box__image" />
		</div>
		<{/if}>
		<{/foreach}>

	</a>
	<{* 商品名 *}>
	<a href="<{$together_product[num].link_url}>" class="c-product-list__name">
		<{$together_product[num].name}>
	</a>
	<{if !$together_product[num].soldout_flg}>
	<div class="c-product-info__price c-product-list__price<{if $members_login_flg && $together_product[num].discount_flg}> c-product-info__price--discount<{/if}>">
		<{* 販売価格（ログイン時は会員価格） *}>
		<{$together_product[num].price}>
		<{* 割引率（ログイン時、通常販売価格と会員価格が異なる場合のみ） *}>
		<{if $members_login_flg && $together_product[num].discount_flg}><{$together_product[num].discount_rate}>OFF<{/if}>
	</div>
	<{* 通常販売価格（ログイン時、通常販売価格と会員価格が異なる場合のみ） *}>
	<{if $members_login_flg && $together_product[num].discount_flg}>
	<div class="c-product-info__regular-price c-product-list__regular-price">
		<{$together_product[num].regular_price}>
	</div>
	<{/if}>
	<{else}>
	<{* 売り切れの表記 *}>
	<div class="c-product-info__soldout c-product-list__soldout">
		SOLD OUT
	</div>
	<{/if}>
	<{* 簡易説明文 *}>
	<{if $together_product[num].s_expl != ""}>
	<div class="c-product-list__expl">
		<{$together_product[num].s_expl}>
	</div>
	<{/if}>
	<{* お気に入り追加ボタン *}>
	<div class="c-product-list__fav-item">
		<button type="button" <{favorite_button_attribute added_class="is-added" product_id=$together_product[num].id}>>
		<svg role="img" aria-hidden="true"><use xlink:href="#heart"></use></svg>
		</button>
	</div>
	</li>
	<{/section}>
</ul>


<{/if}>
<script src="//img.shop-pro.jp/tmpl_js/83/ResizeSensor.min.js"></script>
<script src="//img.shop-pro.jp/tmpl_js/83/theia-sticky-sidebar.min.js"></script>
<script src="//img.shop-pro.jp/tmpl_js/83/swipebox/js/jquery.swipebox.min.js"></script>
<link rel="stylesheet" href="//img.shop-pro.jp/tmpl_js/83/swipebox/css/swipebox.min.css">

<script type="text/javascript">

// サムネイルクリックで画像切り替え
(function() {
	var setValue;
	var $thumbnails = $('.js-thumbnail-select');
	var $setTarget = $('.js-thumbnail-set');
	$thumbnails.on('click', function () {
	setValue = $(this).data('image-url');
	$thumbnails.removeClass('is-current');
	$setTarget.html('<img src="' + setValue + '" class="c-image-box__image" />');
	$(this).addClass('is-current');
	});
})();

// 商品画像クリックで画像をモーダル表示
(function() {
	$('.js-open-modal').swipebox();
})();

// 右カラム追従
(function() {
	$('.js-product-fix').theiaStickySidebar({
	additionalMarginTop: 120
	});
})();

// オプション表コンテンツの表示切り替え
(function() {
	$('.js-view-option-info').on('click', function () {
	$('#js-option-info').toggleClass('is-hidden');
	});
})();
</script>

<{else}>
<div class="c-not-found">
<{if $product.hide_flg}>
この商品を閲覧するにはログインが必要です。
<{else}>
現在、この商品は扱っておりません。
<{/if}>
</div>
<{/if}>
</div>
