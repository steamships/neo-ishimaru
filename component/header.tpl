<!-- header.tpl ▼ -->
<!-- Header -->
<header id="header" class="mb-5 mb-lg-10">
	<!-- 送料無料表示 -->
	<{if $tpl_name != "top"}>
	<div id="header-freeShipping" class="d-block w-100 position-fixed top-0">
		<p class="text-center TrajanSB">&yen;10,800<span>(税込)以上</span>送料無料</p>
	</div>
	<{/if}>
	<!-- // 送料無料表示 -->
	<nav id="header-nav" class="navbar navbar-expand-lg fixed-top">
		<button id="header-nav-sp-toggler" class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#header-nav-main">
			<!-- SPメニュー -->
		</button>
		<div id="header-nav-container" class="px-1 py-lg-2 row align-items-center justify-content-between">

			<h1 id="header-nav-logo" class="navbar-brand col-lg-2 p-0 pe-lg-3">
				<a href="<{$home_url}>" class="d-block" title="<{$shop_name}>">
					<img class="main-logo" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501" alt="<{$shop_name}>">
				</a>
			</h1>

			<!-- ヘッダーメインナビ -->
			<ul id="header-nav-main" class="collapse navbar-collapse navbar-nav main-nav col-lg-auto">
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="https://www.saga-ishimaru.co.jp/?mode=f1">
						ABOUT
						<span class="d-lg-block NotoSerifL">ISHIMARUのこと</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB">
						BRAND
						<span class="d-lg-block NotoSerifL">ブランド牛で選ぶ</span>
					</a>
					<!-- カテゴリーリスト -->
					<{section name=num loop=$category}>
					<{if $smarty.section.num.first }>
					<ul class="c-sub-nav bcate-nav sub-nav d-flex list-unstyled justify-content-start justify-content-lg-center TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
						<{foreach from=$category item=big_cate name=key}>
						<{if $subcategory[$big_cate.bid] != ""}>
						<li class="c-sub-nav-blists mx-lg-2">
							<a class="c-sub-nav-blists-link mb-1 text-decoration-none d-inline-block NotoSerifSB" href="<{$big_cate.link_url}>"><{$big_cate.name}></a>
							<ul class="c-sub-nav-slists nav_hidden list-unstyled">
							<{foreach from=$subcategory[$big_cate.bid] item=sub_cate name=key}>
								<li class="c-sub-nav-slist TrajanL mb-1">
									<a class="c-sub-nav-slist-link text-decoration-none NotoSerifL" href="<{$sub_cate.link_url}>"><span class="d-block"><{$sub_cate.name}></span></a>
								</li>
							<{/foreach}>
							</ul>
						</li>
						<{else}>
						<li class="c-sub-nav-blists mx-2 d-none d-lg-block">
							<a class="c-sub-nav-blists-link text-decoration-none d-inline-block NotoSerifL" href="<{$big_cate.link_url}>"><span class="d-block"><{$big_cate.name}></span></a>
						</li>
						<{/if}>
						<{/foreach}>
					</ul>
					<{/if}>
					<{/section}>
					<!-- // カテゴリーリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">DISH<span class="d-lg-block NotoSerifL">料理で選ぶ</span></a>
					<!-- 料理で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav dish-group sub-nav d-flex flex-wrap list-unstyled justify-content-lg-center justify-content-evenly  TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
						<{/if}>
							<{if $group[num].id == "2373403" || $group[num].id == "2338001" || $group[num].id == "2338000" || $group[num].id == "2337958"}>
							<li class="g-sub-nav-blists d-none mx-lg-2 text-center group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img mb-1" src="<{$assets}>/img/neo-subgroup-img-<{$group[num].id}>.png.webp"><span class="d-block text-center NotoSerifL"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-lg-2 text-center group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-center NotoSerifL"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 料理で選ぶグループリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">BUDGET<span class="d-lg-block NotoSerifL">部位で選ぶ</span></a>
					<!-- 部位で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav budget-group sub-nav d-flex flex-wrap list-unstyled justify-content-start justify-content-lg-center TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
						<{/if}>
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img" src="<{$group[num].img_url}>"><span class="d-block text-left text-lg-center NotoSerifL"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-left text-lg-center NotoSerifL"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 部位で選ぶグループリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">PRICE<span class="d-lg-block NotoSerifL">価格帯で選ぶ</span></a>
					<!-- 価格帯で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav price-group sub-nav d-flex flex-wrap list-unstyled justify-content-lg-center justify-content-start TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
						<{/if}>
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img" src="<{$group[num].img_url}>"><span class="d-block text-left text-lg-center NotoSerifL"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-left text-lg-center NotoSerifL"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 価格帯で選ぶグループリスト -->
				</li>

				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">FURUSATO TAX<span class="d-lg-block NotoSerifL">ふるさと納税</span></a>
					<!-- ふるさと納税リスト -->
						<ul class="g-sub-nav price-group sub-nav d-flex flex-wrap list-unstyled justify-content-lg-center justify-content-evenly TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
							<li class="g-sub-nav-blists mx-lg-2 text-center">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://search.rakuten.co.jp/search/mall/%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89/" target="_blank" rel="noopener"><img class="g-sub-nav-blists-img mb-1" src="<{$assets}>/img/neo-furusato-rakuten.png.webp"><span class="d-block text-left text-lg-center NotoSerifL">楽天ふるさと納税</span></a>
							</li>
							<li class="g-sub-nav-blists mx-lg-2 text-center">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.furusato-tax.jp/search?header=1&target=1&q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD" target="_blank" rel="noopener"><img class="g-sub-nav-blists-img mb-1" src="<{$assets}>/img/neo-furusato-choice.png.webp"><span class="d-block text-left text-lg-center NotoSerifL">ふるさとチョイス</span></a>
							</li>
							<li class="g-sub-nav-blists mx-lg-2 text-center">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://furunavi.jp/Product/Search?keyword=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89" target="_blank" rel="noopener"><img class="g-sub-nav-blists-img mb-1" src="<{$assets}>/img/neo-furusato-furunavi.png.webp"><span class="d-block text-left text-lg-center NotoSerifL">ふるなび</span></a>
							</li>
							<li class="g-sub-nav-blists mx-lg-2 text-center">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.satofull.jp/products/list.php?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89&cnt=120&p=1" target="_blank" rel="noopener"><img class="g-sub-nav-blists-img mb-1" src="<{$assets}>/img/neo-furusato-satofull.png.webp"><span class="d-block text-left text-lg-center NotoSerifL">さとふる</span></a>
							</li>
						</ul>
					<!-- // ふるさと納税リスト -->
				</li>


				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">SERVICE<span class="d-lg-block NotoSerifL">サービス</span></a>
					<!-- サービスグループリスト -->
						<ul class="g-sub-nav price-group sub-nav d-flex flex-wrap list-unstyled justify-content-lg-center justify-content-start TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
							<!-- <li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href=""><span class="d-block text-left text-lg-center">ポイントについて(予定)</span></a>
							</li> -->
							<{if $members_login_flg == false}>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$members_login_url}>"><span class="d-block text-left text-lg-center NotoSerifL">ログイン</span></a>
							</li>
								<{else}>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$members_login_url}>"><span class="d-block text-left text-lg-center NotoSerifL">ログアウト</span></a>
							</li>
							<{/if}>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442"><span class="d-block text-left text-lg-center NotoSerifL">新規会員登録</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.saga-ishimaru.co.jp/?mode=sk"><span class="d-block text-left text-lg-center NotoSerifL">ご利用ガイド</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$privacy_url}>"><span class="d-block text-left text-lg-center NotoSerifL">プライバシーポリシー</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.23778426.1193864833.1638167008-503689517.1589418692"><span class="d-block text-left text-lg-center NotoSerifL">お問い合わせ</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.saga-ishimaru.co.jp/secure/?mode=mailmaga&shop_id=PA01437442"><span class="d-block text-left text-lg-center NotoSerifL">メルマガ登録・解除</span></a>
							</li>
						</ul>
					<!-- // サービスグループリスト -->
				</li>
			</ul>

			<!-- アイコン -->
			<ul id="header-nav-icons" class="navbar-icons d-flex col-lg-auto hide">

				<!-- 検索 -->
				<li id="open-btn" class="nav-item header-icon-list search-account-icon">
					<i class="bi bi-search fs-5"></i>
				</li>

				<!-- お気に入り（非使用） -->
				<!-- <li class="nav-item header-icon-list favaorite-account-icon">
					<i class="bi bi-heart fs-5"></i>
				</li> -->

				<!-- カート -->
				<li class="nav-item header-icon-list cart-account-icon">
					<{if $is_enable_async_cart_in_pc}>
					<form name="cart_view_with_async" method="POST" action="<{$view_cart_url}>">
						<!-- <{$view_cart_with_async_info}> -->
					</form>
					<a href="javascript:void(0)" class="cart_view_with_async text-decoration-none">
						<i class="bi bi-cart fs-5"></i>
						<span class="badge bg-primary rounded-pill small"><{$incart_total_count}></span>
					</a>
					<{else}>
					<a href="<{$view_cart_url}>">
						<i class="bi bi-cart fs-5"></i>
						<!--(<{$incart_total_count}>)-->
					</a>
					<{/if}>
				</li>

				<!-- メンバー -->
				<li class="nav-item header-icon-list header-account-icon position-relative">
					<i class="bi bi-person fs-4"></i>
					<ul class="header-account-lists TrajanL position-absolute list-unstyled border zindex-dropdown bg-white">
						<li class="p-1 bg-white">
							<a class="NotoSerifL" href="<{$view_myaccount_url}>">マイアカウント</a>
						</li>
						<{if $members_use_flg == true}>
							<{if $members_login_flg == false}>
								<{if $members_register_flg == true}>
									<li class="p-1 bg-white">
									<a class="NotoSerifL" href="<{$members_regi_url}>">会員登録</a>
									</li>
								<{/if}>
									<li class="p-1 bg-white">
										<a class="NotoSerifL" href="<{$members_login_url}>">ログイン</a>
									</li>
								<{else}>
									<li class="p-1 bg-white">
										<a class="NotoSerifL" href="<{$members_login_url}>">ログアウト</a>
									</li>
							<{/if}>
						<{/if}>
					</ul>
				</li>
			</ul>
			<!-- / アイコン -->

		</div>
	</nav>
	<!-- 検索オーバーレイ -->
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
	<!-- // 検索オーバーレイ -->
</header>
<!-- // Header -->
<div class="container">
	<div class="row justify-content-between flex-row-reverse">
	<!-- カテゴリのパンくずリスト -->
	<ol class="breadcrumb list-unstyled NotoSerifL">
		<li class="ps-1 d-inline-block"><a class="text-decoration-none" href="<{$home_url}>">TOP</a></li>
		<{if $bid_name != ""}><li class="d-inline-block"><a class="text-decoration-none" href='<{$bid_link}>'><{$bid_name}></a></li><{/if}>
		<{if $sid_name != ""}><li class="d-inline-block"><a class="text-decoration-none" href='<{$sid_link}>'><{$sid_name}></a></li><{/if}>
	</ol>

	<!-- グループのパンくずリスト -->
	<{if $group_breadcrumb_list != ""}>
		<ol class="breadcrumb sub list-unstyled NotoSerifL">
		<{section name=cnt loop=$group_breadcrumb_list}>
			<{section name=num loop=$group_breadcrumb_list[cnt].group_breadcrumb}>
			<li class="d-inline-block">
				<a class="text-decoration-none" href="<{$group_breadcrumb_list[cnt].group_breadcrumb[num].link_url}>">
				<{$group_breadcrumb_list[cnt].group_breadcrumb[num].name}>
				</a>
			</li>
			<{/section}>
		<{/section}>
		</ol>
	<{/if}>
<!-- header.tpl ▲ -->
