<{* assetsの存在でローカルと本番のURLを切り替える *}>
<{if !$assets}>
<{assign "assets" "https://cdn.jsdelivr.net/gh/steamships/neo-ishimaru@main/assets"}>
<{/if}>

<script src="<{$assets}>/js/bundle.js?ver=<{$smarty.now|date_format:'%Y%m%d%H%M%S'}>" type="module"></script>
<link rel="stylesheet" href="<{$assets}>/css/starter.css?ver=<{$smarty.now|date_format:'%Y%m%d%H%M%S'}>" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
<!-- Header Start -->
<header id="header">
	<nav class="navbar navbar-expand-md primary navbar-light fixed-top mb-3 header-nav flex-wrap">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<div class="openbtn"><span></span><span></span></div>
		</button>
		<a class="navbar-brand pb-1" href="#"><img class="main-logo" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501" alt="石丸ショップロゴ"></a>
		<ul class="d-md-none d-flex list-unstyled sp-navbar-icons">
			<li class="nav-item">
				<a class="nav-link" href="https://www.saga-ishimaru.co.jp/cart/proxy/basket?shop_id=PA01437442&shop_domain=saga-ishimaru.co.jp"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-cart-pc.png?cmsp_timestamp=20211122144648" alt="カートアイコン"></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-account-pc.png?cmsp_timestamp=20211122144722" alt="アカウントアイコン"></a>
			</li>
		</ul>
		<div class="collapse navbar-collapse justify-content-between flex-wrap pb-12 pb-md-2 px-1 px-md-0" id="navbarNav">
			<ul class="navbar-nav main-nav">
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">ABOUT<span class="d-md-block NotoSerifL">ISHIMARUのこと</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB">BRAND<span class="d-md-block NotoSerifL">ブランド牛で選ぶ</span>
					</a>
					<!-- カテゴリーリスト -->
					<{section name=num loop=$category}>
					<{if $smarty.section.num.first }>
					<ul class="c-sub-nav sub-nav d-flex list-unstyled justify-content-md-center justify-content-evenly  TrajanSB w-100 py-1 pt-md-3 pb-md-10 my-1">
						<{foreach from=$category item=big_cate name=key}>
						<{if $sub_category[$big_cate.bid] != ""}>
						<li class="c-sub-nav-blists mx-2">
							<a class="c-sub-nav-blists-link mb-1 text-decoration-none d-inline-block"><{$big_cate.name}></a>
							<ul class="c-sub-nav-slists nav_hidden list-unstyled">
							<{foreach from=$sub_category[$big_cate.bid] item=sub_cate name=key}>
								<li class="c-sub-nav-slist TrajanL mb-1">
									<a class="c-sub-nav-slist-link text-decoration-none" href="<{$sub_cate.link_url}>"><span class="d-block"><{$sub_cate.name}></span></a>
								</li>
							<{/foreach}>
							</ul>
						</li>
						<{else}>
						<li class="c-sub-nav-blists mx-2">
							<a class="c-sub-nav-blists-link text-decoration-none d-inline-block" href="<{$big_cate.link_url}>"><span class="d-block"><{$big_cate.name}></span></a>
						</li>
						<{/if}>
						<{/foreach}>
					</ul>
					<{/if}>
					<{/section}>
					<!-- // カテゴリーリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">DISH<span class="d-md-block NotoSerifL">料理で選ぶ</span></a>
					<!-- 料理で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav dish-group sub-nav d-flex flex-wrap list-unstyled justify-content-md-center justify-content-evenly  TrajanSB w-100 py-1 pt-md-3 pb-md-10 my-1">
						<{/if}>
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img mb-1" src="<{$group[num].img_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 料理で選ぶグループリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">BUDGET<span class="d-md-block NotoSerifL">部位で選ぶ</span></a>
					<!-- 部位で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav budget-group sub-nav d-flex flex-wrap list-unstyled justify-content-md-center justify-content-evenly  TrajanSB w-100 py-1 pt-md-3 pb-md-10 my-1">
						<{/if}>
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img" src="<{$group[num].img_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 部位で選ぶグループリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">PRICE<span class="d-md-block NotoSerifL">価格帯で選ぶ</span></a>
					<!-- 価格帯で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav price-group sub-nav d-flex flex-wrap list-unstyled justify-content-md-center justify-content-evenly  TrajanSB w-100 py-1 pt-md-3 pb-md-10 my-1">
						<{/if}>
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img" src="<{$group[num].img_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 価格帯で選ぶグループリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">SERVICE<span class="d-md-block NotoSerifL">サービス</span></a>
					<!-- サービスグループリスト -->
						<ul class="g-sub-nav price-group sub-nav d-flex flex-wrap list-unstyled justify-content-md-center justify-content-evenly  TrajanSB w-100 py-1 pt-md-3 pb-md-10 my-1">
							<li class="g-sub-nav-blists mx-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href=""><span class="d-block text-center">ポイントについて(予定)</span></a>
							</li>
							<li class="g-sub-nav-blists mx-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442"><span class="d-block text-center">新規会員登録</span></a>
							</li>
							<li class="g-sub-nav-blists mx-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.saga-ishimaru.co.jp/?mode=sk"><span class="d-block text-center">ご利用ガイド</span></a>
							</li>
							<li class="g-sub-nav-blists mx-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.23778426.1193864833.1638167008-503689517.1589418692"><span class="d-block text-center">お問い合わせ</span></a>
							</li>
							<li class="g-sub-nav-blists mx-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.saga-ishimaru.co.jp/secure/?mode=mailmaga&shop_id=PA01437442"><span class="d-block text-center">メルマガ登録・解除</span></a>
							</li>
						</ul>
					<!-- // サービスグループリスト -->
				</li>
			</ul>
			<ul class="navbar-nav navbar-icons d-none d-md-inline-flex">
				<li id="open-btn" class="nav-item header-icon-list search-account-icon">
					<span class="nav-link"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-find.png?cmsp_timestamp=20211122153310" alt="検索アイコン">
					</span>
				</li>
				<li class="nav-item header-icon-list favaorite-account-icon">
					<span class="nav-link"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-favarite_.png?cmsp_timestamp=20211125153455" alt="お気に入りアイコン"></span>
				</li>
				<li class="nav-item header-icon-list cart-account-icon">
					<{if $is_enable_async_cart_in_pc}>
					<form name="cart_view_with_async" method="POST" action="<{$view_cart_url}>">
						<{$view_cart_with_async_info}>
					</form>
					<span class="nav-link"><a href="javascript:void(0)" class="cart_view_with_async"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-cart-pc.png?cmsp_timestamp=20211122144648" alt="カートアイコン">(<span class="cart_count"><{$incart_total_count}></span>)</span></a></span>
					<{else}>
					<span class="nav-link"><a href="<{$view_cart_url}>"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-cart-pc.png?cmsp_timestamp=20211122144648" alt="カートアイコン"><!--(<{$incart_total_count}>)--></span></a></span>
					<{/if}>
				</li>
				<li class="nav-item header-icon-list header-account-icon">
					<span class="nav-link"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-account-pc.png?cmsp_timestamp=20211122144722" alt="アカウントアイコン"></span>
					<ul class="header-account-lists TrajanL position-absolute list-unstyled border zindex-dropdown">
						<li>
							<a href="<{$view_myaccount_url}>">マイアカウント</a>
						</li>
						<{if $members_use_flg == true}>
							<{if $members_login_flg == false}>
								<{if $members_register_flg == true}>
									<li>
									<a href="<{$members_regi_url}>">会員登録</a>
									</li>
								<{/if}>
									<li>
										<a href="<{$members_login_url}>">ログイン</a>
									</li>
								<{else}>
									<li>
										<a href="<{$members_login_url}>">ログアウト</a>
									</li>
							<{/if}>
						<{/if}>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<!-- 検索オーバーレイ Start -->
	<div id="overlay">
		<span id="close-btn" class="close"></span>
		<div class="overlayflex">
			<form id="searchOverlay" class="form-box position-absolute p-1" role="search" action="<{$product_search_url}>"  method="GET">
				<{$product_search_mode}>
				<input class="form-input TrajanL" type="text" name="keyword"  placeholder="キーワードを入力">
				<button class="form-button"><i class="bi bi-search"></i></button>
			</form>
		</div>
	</div>
	<!-- 検索オーバーレイ End -->
</header>
<!-- Header End -->
<{include file=$file_name}>
	</main>
	<{* // メイン *}>

</div>
<{* // wrapper *}>

<{* Footer *}>
<footer>
	<{* 最近チェックした商品 *}>
	<div class="checked mx-auto">
		<{if $history_num != 0}>
			<h2 class="d-flex align-items-center NotoSerifL fs-18px">最近チェックした商品</h2>
			<div class="row">
				<{foreach from=$productlist item=v}>
				<a href="<{$v.link_url}>" class="d-block col-6 col-sm-2 mb-2 text-decoration-none">
					<p><img src="<{$v.img_url}>" class="img-fluid"></p>
					<p class="NotoSerifL fs-18px"><{$v.name}></p>
					<p class="TrajanB fs-24px"><{$product.sales}></p>
				</a>
				<{/foreach}>
			</div>
		<{/if}>
	</div>
	<{* // 最近チェックした商品 *}>

	<{*グラデーション *}>
	<div class="gradient">
		<{* PC *}>
		<div class="footer d-none d-md-block mx-auto pt-15">
			<{* Grid row *}>
			<div class="row">

				<{* ISHIMARUについて *}>
				<div class="col-2 me-4 pe-0">

					<h3 class="pb-20px badge bg-secondary NotoSerifL fs-20px ls-1">ISHIMARUについて</h3>
					<a class="nav-link TrajanR ps-0 pt-0 pb-1 fs-18px lh-lg" href="#">- ABOUT</a>

					<{* SNS *}>
					<div class="py-2">
						<a href="https://www.instagram.com/suguru_ishimaru/" target="_blank" class="btn btn-link pe-0 instagram">
						</a>
						<a href="https://www.facebook.com/ishimaru.meet/" target="_blank" class="btn btn-link pe-0 facebook">
						</a>
					</div>
					<{* // SNS *}>

					<{* ロゴ *}>
					<div class="mt-1">
						<a href="#"><img
								src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501"
								alt="石丸ショップロゴ"></a>
					</div>
					<{* // ロゴ *}>

				</div>
				<{* // ISHIMARUについて *}>

				<{* 商品のご案内 *}>
				<div class="col NotoSerifL fs-18px ps-0">
					<h3 class="pb-20px badge bg-secondary NotoSerifL fs-20px">商品のご案内</h3>
					<{* ブランド牛で選ぶ *}>
					<p class="NotoSerifSB lh-lg">ブランド牛で選ぶ</p>
					<p>
						<a href="#collapseSagagyu" class="lh-lg chevron-down" data-bs-toggle="collapse" role="button"
							aria-expanded="false" aria-controls="collapseSagagyu">佐賀牛</a>
					</p>
					<div class="collapse" id="collapseSagagyu">
						<div class="card card-body border-0">
							佐賀牛
						</div>
					</div>
					<p>
						<a href="#collapseKuroge" class="lh-lg chevron-down" data-bs-toggle="collapse" role="button"
							aria-expanded="false" aria-controls="collapseKuroge">黒毛和牛</a>
					</p>
					<div class="collapse" id="collapseKuroge">
						<div class="card card-body border-0">
							黒毛和牛
						</div>
					</div>
				</div>
				<{* // ブランド牛で選ぶ *}>

				<{* その他 *}>
				<div class="col mt-56px NotoSerifL fs-18px">
					<p class="NotoSerifSB lh-lg">その他</p>
					<p>
						<a href="#!" class="lh-lg">- 佐賀牛入りハンバーグ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- 九州産黒毛和牛ハンバーグ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- 黒毛和牛</a>
					</p>
				</div>
				<{* // その他 *}>

				<{* 料理で選ぶ *}>
				<div class="col mt-56px NotoSerifL fs-18px">
					<p class="NotoSerifSB lh-lg">料理で選ぶ</p>
					<p>
						<a href="#!" class="lh-lg">- 焼肉</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- ステーキ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- しゃぶしゃぶ・すき焼き</a>
					</p>
					<p>
						<a href="#!" class="">- ハンバーグ</a>
					</p>
				</div>
				<{* // 料理で選ぶ *}>

				<{* 部位で選ぶ *}>
				<div class="col mt-56px NotoSerifL fs-18px">
					<p class="NotoSerifSB lh-lg">部位で選ぶ</p>
					<p>
						<a href="#!" class="lh-lg">- ひれ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- ロース</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- 小間切れ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- 赤身</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- 肩スライス</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- モモスライス</a>
					</p>
				</div>
				<{* // 部位で選ぶ *}>

				<{* 予算で選ぶ *}>
				<div class="col mt-56px NotoSerifL fs-18px">
					<p class="NotoSerifSB lh-lg">予算で選ぶ</p>
					<p>
						<a href="#!" class="lh-lg">- ～￥4,999</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- ￥5,000～￥9,999</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">- ￥10,000～</a>
					</p>
				</div>
				<{* // 予算で選ぶ *}>
				<{* // 商品のご案内 *}>

				<{* サービス *}>
				<div class="col NotoSerifL fs-18px pe-0">
					<h3 class="pb-20px badge bg-secondary NotoSerifL fs-20px">サービス</h3>
					<p>
						<a href="#!" class="lh-lg">ポイントについて</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">会員登録</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">ご利用ガイド</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">お問い合せ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">メルマガ登録・解約</a>
					</p>
				</div>
				<{* // サービス *}>

			</div>
			<{* Grid row *}>

			<{* Copyright *}>
			<div class="text-center fs-16px pt-5 pb-70px ls-1">
				<span class="NotoSerifL">© 黒毛和牛専門店</span><span class="TrajanR"> ISHIMARU.</span>
			</div>
			<{* // Copyright *}>
		</div>
		<{* // PC *}>

		<{* SP *}>
		<div class="footer d-md-none mx-auto pt-4 pb-2">
			<{* Grid row 1 *}>
			<div class="row py-2 text-center align-items-center">

				<{* ロゴ *}>
				<div class="col-4 align-middle">
					<a href="#"><img
							src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501"
							width="100" alt="石丸ショップロゴ"></a>
				</div>
				<{* // ロゴ *}>

				<{* SNS *}>
				<div class="col-3 p-0">
					<a href="https://www.instagram.com/suguru_ishimaru/" target="_blank" class="btn btn-link pe-0 instagram">
					</a>
					<a href="https://www.facebook.com/ishimaru.meet/" target="_blank" class="btn btn-link pe-0 facebook">
					</a>
				</div>
				<{* // SNS *}>

				<{* 戻るボタン*}>
				<div class="col-5">
					<a href="#" class="btn btn-dark rounded-pill TrajanB fs-14px ls-1 chevron-up">PAGE TOP</a>
				</div>
				<{* // 戻るボタン*}>

			</div>
			<{* Grid row 1 *}>

			<{* Grid row 2 *}>
			<div class="row px-1 pb-2 fs-14px">
				<div class="col-6 NotoSerifL">
					<p>
						<a href="#!" class="lh-lg">お問い合わせ</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">お支払い方法について</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">サイドポリシー</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">プライバシーポリシー</a>
					</p>
				</div>

				<div class="col-6 NotoSerifL">
					<p>
						<a href="#!" class="lh-lg">プレスリリース</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">特定商取引法に基づく表記</a>
					</p>
					<p>
						<a href="#!" class="lh-lg">配送方法・送料について</a>
					</p>
				</div>
			</div>

			<{* Copyright *}>
			<div class="text-center fs-16px ls-1 copy">
				<span class="NotoSerifL">© 黒毛和牛専門店</span><span class="TrajanR"> ISHIMARU.</span>
			</div>
			<{* // Copyright *}>

		</div>
		<{* // SP *}>
	</div>
	<{* // グラデーション *}>
</footer>
<{* // Footer *}>
