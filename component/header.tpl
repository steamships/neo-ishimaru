<!-- Header Start -->
<header id="header">
	<nav class="navbar navbar-expand-md primary navbar-light fixed-top mb-3 header-nav flex-wrap">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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