<{* assetsの存在でローカルと本番のURLを切り替える *}>
<{if !$assets}>
<{assign var="assets" value="https://cdn.jsdelivr.net/gh/steamships/neo-ishimaru@1.0.4/assets"}>
<{/if}>

<script src="<{$assets}>/js/bundle.js?ver=<{$smarty.now}>" type="module"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="<{$assets}>/css/starter.css?ver=<{$smarty.now}>" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- header.tpl ▼ -->
<!-- Header -->
<header id="header" class="mb-5 mb-lg-10">
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
					<ul class="c-sub-nav sub-nav d-flex list-unstyled justify-content-lg-center justify-content-between  TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
						<{foreach from=$category item=big_cate name=key}>
						<{if $subcategory[$big_cate.bid] != ""}>
						<li class="c-sub-nav-blists mx-lg-2">
							<a class="c-sub-nav-blists-link mb-1 text-decoration-none d-block"><{$big_cate.name}></a>
							<ul class="c-sub-nav-slists nav_hidden list-unstyled">
							<{foreach from=$subcategory[$big_cate.bid] item=sub_cate name=key}>
								<li class="c-sub-nav-slist TrajanL mb-1">
									<a class="c-sub-nav-slist-link text-decoration-none" href="<{$sub_cate.link_url}>"><span class="d-block"><{$sub_cate.name}></span></a>
								</li>
							<{/foreach}>
							</ul>
						</li>
						<{else}>
						<li class="c-sub-nav-blists mx-2 d-none d-lg-block">
							<a class="c-sub-nav-blists-link text-decoration-none d-block" href="<{$big_cate.link_url}>"><span class="d-block"><{$big_cate.name}></span></a>
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
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-lg-2 text-center group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img mb-1" src="<{$group[num].img_url}>"><span class="d-block text-center"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-lg-2 text-center group-<{$group[num].id}>">
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
					<a class="nav-link TrajanSB" href="#">BUDGET<span class="d-lg-block NotoSerifL">部位で選ぶ</span></a>
					<!-- 部位で選ぶグループリスト -->
					<{section name=num loop=$group}>
						<{if $smarty.section.num.first }>
						<ul class="g-sub-nav budget-group sub-nav d-flex flex-wrap list-unstyled justify-content-start justify-content-lg-center TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
						<{/if}>
							<{if $group[num].img_url != ""}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img" src="<{$group[num].img_url}>"><span class="d-block text-left text-lg-center"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-left text-lg-center"><{$group[num].name}></span></a>
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
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="<{$group[num].link_url}>"><img class="g-sub-nav-blists-img" src="<{$group[num].img_url}>"><span class="d-block text-left text-lg-center"><{$group[num].name}></span></a>
							</li>
							<{else}>
							<li class="g-sub-nav-blists d-none mx-0 mb-2 mb-lg-0 mx-lg-2 group-<{$group[num].id}>">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none" href="<{$group[num].link_url}>"><span class="d-block text-left text-lg-center"><{$group[num].name}></span></a>
							</li>
							<{/if}>
						<{if $smarty.section.num.last }>
						</ul>
						<{/if}>
					<{/section}>
					<!-- // 価格帯で選ぶグループリスト -->
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">SERVICE<span class="d-lg-block NotoSerifL">サービス</span></a>
					<!-- サービスグループリスト -->
						<ul class="g-sub-nav price-group sub-nav d-flex flex-wrap list-unstyled justify-content-lg-center justify-content-evenly  TrajanSB w-100 py-1 pt-lg-3 pb-lg-10 my-1">
							<!-- <li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href=""><span class="d-block text-left text-lg-center">ポイントについて(予定)</span></a>
							</li> -->
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442"><span class="d-block text-left text-lg-center">新規会員登録</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.saga-ishimaru.co.jp/?mode=sk"><span class="d-block text-left text-lg-center">ご利用ガイド</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.23778426.1193864833.1638167008-503689517.1589418692"><span class="d-block text-left text-lg-center">お問い合わせ</span></a>
							</li>
							<li class="g-sub-nav-blists mx-0 mx-lg-2">
								<a class="g-sub-nav-blists-link mb-1 text-decoration-none d-inline-block" href="https://www.saga-ishimaru.co.jp/secure/?mode=mailmaga&shop_id=PA01437442"><span class="d-block text-left text-lg-center">メルマガ登録・解除</span></a>
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
							<a href="<{$view_myaccount_url}>">マイアカウント</a>
						</li>
						<{if $members_use_flg == true}>
							<{if $members_login_flg == false}>
								<{if $members_register_flg == true}>
									<li class="p-1 bg-white">
									<a href="<{$members_regi_url}>">会員登録</a>
									</li>
								<{/if}>
									<li class="p-1 bg-white">
										<a href="<{$members_login_url}>">ログイン</a>
									</li>
								<{else}>
									<li class="p-1 bg-white">
										<a href="<{$members_login_url}>">ログアウト</a>
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
<!-- header.tpl ▲ -->
<{if $tpl_name == "top"}>
	<{* スライド *}>
	<div id="carouselExampleIndicators" class="carousel slide mb-4 px-0" data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="shadow active"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="shadow"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2543763&csid=0">
					<img src="<{$assets}>/img/neo-slide-1-pc.png" class="d-none d-lg-block w-100" alt="黒毛和牛">
					<img src="<{$assets}>/img/neo-slide-1-sp.png" class="d-lg-none d-block w-100" alt="黒毛和牛">
				</a>
			</div>
			<div class="carousel-item">
				<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2547504&csid=0">
					<img src="<{$assets}>/img/neo-slide-2-pc.png" class="d-none d-lg-block w-100" alt="黒毛和牛">
					<img src="<{$assets}>/img/neo-slide-2-sp.jpg" class="d-lg-none d-block w-100" alt="黒毛和牛">
				</a>
			</div>
			<div class="carousel-item">
				<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2601547&csid=0">
					<img src="<{$assets}>/img/neo-slide-3-pc.png" class="d-none d-lg-block w-100" alt="黒毛和牛">
					<img src="<{$assets}>/img/neo-slide-3-sp.png" class="d-lg-none d-block w-100" alt="黒毛和牛">
				</a>
			</div>
		</div>
	</div>
	<{* // スライド *}>
<{/if}>
<!-- product_list-header-wide.tpl ▼ -->
<{if $tpl_name == "product_list"}>
	<{section name=num loop=$category}>
	<{if $smarty.section.num.first }>
	<div id="product_list-header-wide" class="p-category-main-image">
	<{/if}>
	<{if $bid_name != "" && $smarty.get.cbid == $category[num].bid}>
			<!-- <{$category[num].name}>の商品一覧ページ -->
			<img class="p-category-main-image-img mb-3 d-none d-lg-block" src="<{$assets}>/img/neo-category-img-<{$smarty.get.cbid}>-pc.png" alt="<{$category[num].name}>カテゴリーPC用画像">
			<img class="p-category-main-image-img mb-2 d-block d-lg-none" src="<{$assets}>/img/neo-category-img-<{$smarty.get.cbid}>-sp.png" alt="<{$category[num].name}>カテゴリーSP用画像">
			<!-- <{$category[num].name}>の説明文 -->
			<{if $smarty.get.cbid == "2543763"}>
			<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">日本食肉格付協会の定める牛取引規格の最高の肉質である「5」等級および「4」等級かつ、
				<br>BMS「No.7」以上を「佐賀牛」と呼びます。
				<br>柔らかい赤身の中にきめ細やかに風味ただよう脂肪が入った見事な霜降り牛肉です。
				<br>ステーキによし、しゃぶしゃぶによし。この甘くてこくのある美味しい肉は、
				<br>佐賀県特有の穏やかな気候と美味しい水、澄み切った空気のたまものです。</p>
			<{elseif $smarty.get.cbid == "2547504"}>
			<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">自然豊かな九州で育った黒毛和牛です。味はもちろん、国産で安心・安全さも魅力の一つです！<br>脂が乗りすぎてたくさん食べられないという方に九州産黒毛和牛はおすすめです。</p>
			<{elseif $smarty.get.cbid == "2601547"}>
			<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">ハンバーグやローストビーフなどの加工食品をはじめ、希少部位や期間限定のお肉などを随時掲載していきます。<br>まだ、あなたの知らないお肉に出会えるかも…</p>
			<{/if}>
		<{/if}>
		<{if $smarty.section.num.last }>
		</div>
		<{/if}>
	<{/section}>

	<{section name=num loop=$group}>
	<{if $smarty.section.num.first }>
	<div id="product_list-header-wide" class="p-category-main-image">
	<{/if}>
	<{if $group[num].name != "" && $smarty.get.gid == $group[num].id}>
		<!-- <{$group[num].name}>の商品一覧ページ -->
		<{if $smarty.get.gid == "2673106" || $smarty.get.gid == "2673107" || $smarty.get.gid == "2673108" ||$smarty.get.gid == "2337960" || $smarty.get.gid == "2337981" || $smarty.get.gid == "2337989" || $smarty.get.gid == "2337999"}>
		<{else}>
		<img class="p-category-main-image-img mb-3 d-none d-lg-block" src="<{$assets}>/img/neo-category-img-<{$smarty.get.gid}>-pc.png" alt="<{$group[num].name}>グループPC用画像">
		<img class="p-category-main-image-img mb-2 d-block d-lg-none" src="<{$assets}>/img/neo-category-img-<{$smarty.get.gid}>-sp.png" alt="<{$group[num].name}>グループSP用画像">
		<{/if}>
		<!-- <{$group[num].name}>の説明文 -->
		<{if $smarty.get.gid == "2483504"}>
		<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">
			「もらったら思わず笑顔になる。そんな逸品を贈りたい」
			<br>お歳暮はいつもお世話になっている大切な方へ、感謝の気持ちを伝える大切な贈り物です。
			<br>石丸食肉の「お歳暮特集」では、選りすぐりの特選佐賀牛を特別特価でご提供致します。
			<br>昨年大好評をいただき、たくさんのお申し込みをいただきました。
			<br>個数が限られているので、お早めにお申込みください。
		</p>
		<{/if}>
	<{/if}>
	<{if $smarty.section.num.last }>
	</div>
	<{/if}>
	<{/section}>
<{/if}>
<!-- product_list-header-wide.tpl ▲ -->
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
					<{$product.info}>
				</form>
			</div>
		</div>


	</div><!-- /.row -->

</div>
<{/if}>
<!-- product-info-wide.tpl ▲ -->
<!-- inc.tpl ▼ -->
<{if $tpl_name == "free1"}>
<main id="main" class="col-12">
<{else}>
<main id="main" class="col-lg-9 ps-lg-3">
<{/if}>
	<!-- <{$file_name}> ▼ -->
	<{include file = $file_name}>
	<!-- <{$file_name}> ▲ -->
</main>
<!-- inc.tpl ▲ -->
<!-- sidebar.tpl ▼ -->
<{if $tpl_name == "free1"}>
<{else}>
<nav id="sidebar" class="col-lg-3">
	<!-- PC -->
	<div class="d-none d-lg-block">
		<ul class="nav nav-pills flex-column mb-auto">
			<!-- お届け目安 -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				お届け目安
			</li>
			<li class="NotoSerifL fs-16px">
				<p>通常商品の場合 (予約商品を除く)</p>
				<p>ただいまご注文いただいた場合の発送日</p>
			</li>
			<li class="mt-1 mb-2">
				<{math equation="x+y" x= $smarty.now y=259200 assign="otodoke"}>
				<span class="TrajanB fs-26px">
					<{$otodoke|date_format:"%Y年%m月%d日"}>
				</span>
				<span class="NotoSerifL fs-16px">
					<{$otodoke|date_format:'(%a)'|replace:'Sun':'日'|replace:'Mon':'月'|replace:'Tue':'火'|replace:'Wed':'水'|replace:'Thu':'木'|replace:'Fri':'金'|replace:'Sat':'土'}>
				</span>
			</li>
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				お電話でのお問い合わせ・ご注文
			</li>
			<!-- TEL -->
			<li>
				<a href="tel:<{$shop.tel}>" class="nav-link TrajanB fs-26px p-0">
					<img src="//img07.shop-pro.jp/PA01437/442/etc/neo-tel.png?cmsp_timestamp=20211129193648"
						alt="">
					<span class="align-text-bottom"><{$shop.tel}></span>
				</a>
			</li>
			<li class="NotoSerifL fs-16px ms-2 mb-2">受付 9:00～18：00 (日曜定休)<br>年末年始のお休み 12月31日～1月3日</li>
			<!-- MAIL -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				メールでのお問い合わせ・ご注文
			</li>
			<li>
				<a class=""
					href="//ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.102523969.1504273749.1638167996-747911806.1637750824">
					<div class="d-flex justify-content-start align-items-center chevron-right">
						<div>
							<img class="pe-1"
								src="//img07.shop-pro.jp/PA01437/442/etc/neo-mail.png?cmsp_timestamp=20211129201304"
								alt="">
						</div>
						<div class="me-auto NotoSerifSB fs-16px">
							<div class="NotoSerifSB fs-16px">メールでの</div>
							お問い合わせ・ご注文
						</div>
					</div>
				</a>
			</li>
			<!-- 送料 -->
			<li>
					<img class="pt-2"
						src="<{$assets}>/img/neo-shipping-img.png"
						alt="" width="321">
			</li>
			<!-- プレゼント -->
			<li>
				<!-- リンクないのでコメントアウト -->
				<!-- <a href="//www.saga-ishimaru.co.jp/?mode=f3"> -->
					<img class="pt-2"
						src="//img07.shop-pro.jp/PA01437/442/etc/neo-point-pc.png?cmsp_timestamp=20211129202928"
						alt="" width="321">
				<!-- </a> -->
			</li>
			<!-- お客さまの声 -->
			<li class="mt-2">
				<div class="bb-1 mx-auto pb-1">
					<a class=""
						href="#review">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								お客さまの声
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- 会員登録 -->
			<li>
				<div class="bb-1 mx-auto pb-1">
					<a class="" href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								ISHIMARU会員登録
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- メルマガ -->
			<li>
				<div class="bb-1 mx-auto pb-1">
					<a class="" href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								<div class="NotoSerifL fs-16px ls-1">\お得な情報がいっぱい！/</div>
								メルマガ会員募集中
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- ご利用ガイド -->
			<li>
				<div class="w-95 mx-auto pb-1">
					<a class="" href="//www.saga-ishimaru.co.jp/?mode=sk">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								ご利用ガイド
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- ギフト -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				<span class="TrajanB fs-18px ls-1">GIFT SERVICE</span> ギフトについて
			</li>
			<li class="NotoSerifSB ls-1">
				<div class="row gift align-items-center">
					<div class="col-5">
						<img src="//img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
							alt="">
					</div>
					<div class="col-7 ps-0">
						<div class="bb-d pb-1">
							<div>想いを寄せて、</div>
							<div>大切な人に。</div>
						</div>
						<div class="pt-1">
							熨斗無料対応◎
						</div>
					</div>
				</div>
			</li>
			<!-- about -->
			<li>
				<a href="//www.saga-ishimaru.co.jp/?mode=f1">
					<img src="//img07.shop-pro.jp/PA01437/442/etc/neo-about-pc.png?cmsp_timestamp=20211130183540"
						alt="">
				</a>
			</li>
			<!-- SNS -->
			<li>
				<div class="d-flex justify-content-end pt-2">
					<a href="//www.instagram.com/suguru_ishimaru/" target="_blank"
						class="btn btn-link pe-0 instagram fs-5">
					</a>
					<a href="//www.facebook.com/ishimaru.meet/" target="_blank"
						class="btn btn-link pe-0 facebook fs-5">
					</a>
				</div>
			</li>
			<!-- ポータル -->
			<li class="mt-2 mb-1 h-55px">
				<div class="d-flex justify-content-center align-items-center text-center NotoSerifSB fs-20px ls-1">
					<div class="pe-1">\</div>
					<div>ふるさと納税からも<br>お申し込みいただけます</div>
					<div class="ps-1">/</div>
				</div>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//search.rakuten.co.jp/search/event/%E3%81%B5%E3%82%8B%E3%81%95%E3%81%A8%E7%B4%8D%E7%A8%8E%E3%80%80%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD/?ev=40&v=2" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						楽天ふるさと納税
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//www.furusato-tax.jp/search?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD&header=1&target=1&sst=" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ふるさとチョイス
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//furunavi.jp/Product/Search?keyword=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ふるなび
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//www.satofull.jp/products/list.php?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89&cnt=60&p=1" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						さとふる
					</div>
				</a>
			</li>
		</ul>
	</div>
	<!-- / PC -->

	<!-- SP -->
	<div class="d-lg-none">
		<!-- about -->
		<a href="//www.saga-ishimaru.co.jp/?mode=f1">
			<img class="mx-auto d-block mt-4 mb-4"
				src="//img07.shop-pro.jp/PA01437/442/etc/neo-about-pc.png?cmsp_timestamp=20211130183540" alt=""
				width="335">
		</a>
		<!-- 送料 -->
		<img class="w-100 d-block"
			src="<{$assets}>/img/neo-shipping-img.png"
			alt="" width="321">
		<!-- プレゼント -->
		<!-- リンクないのでコメントアウト -->
		<!-- <a href="//www.saga-ishimaru.co.jp/?mode=f3"> -->
			<img class="w-100 d-block mt-3 mb-2"
				src="//img07.shop-pro.jp/PA01437/442/etc/neo-point-pc.png?cmsp_timestamp=20211129202928" alt="">
		<!-- </a> -->
		<!-- 3列 -->
		<div class="NotoSerifSB fs-20px ls-1 text-center">
			<!-- 会員登録 -->
			<div class="bb-1 mx-auto py-2">
				<a href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
					<div class="me-auto chevron-right">
						ISHIMARU会員登録
					</div>
				</a>
			</div>
			<!-- メルマガ -->
			<div class="bb-1 mx-auto py-1">
				<a href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
					<div class="me-auto chevron-right">
						<div class="NotoSerifL fs-16px">\お得な情報がいっぱい！/</div>
						メルマガ会員募集中
					</div>
				</a>
			</div>
			<!-- ご利用ガイド -->
			<div class="bb-1 mx-auto py-2">
				<a href="//www.saga-ishimaru.co.jp/?mode=sk">
					<div class="me-auto chevron-right"></div>
					ご利用ガイド
				</a>
			</div>
		</div>
		<!-- / 3列 -->
		<!-- ポータル -->
		<div class="mt-3 mb-1">
			<div class="d-flex justify-content-center align-items-center text-center NotoSerifSB fs-20px ls-1">
				<div class="pe-2">\</div>
				<div>ふるさと納税からも<br>お申し込みいただけます</div>
				<div class="ps-2">/</div>
			</div>
		</div>
		<div class="w-75 mx-auto NotoSerifL fs-18px">
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" target="_blank"
				href="//search.rakuten.co.jp/search/event/%E3%81%B5%E3%82%8B%E3%81%95%E3%81%A8%E7%B4%8D%E7%A8%8E%E3%80%80%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD/?ev=40&v=2" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					楽天ふるさと納税
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary"  target="_blank"
				href="//www.furusato-tax.jp/search?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD&header=1&target=1&sst="
				role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					ふるさとチョイス
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" target="_blank"
				href="//furunavi.jp/Product/Search?keyword=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					ふるなび
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" target="_blank"
				href="//www.satofull.jp/products/list.php?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89&cnt=60&p=1" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					さとふる
				</div>
			</a>
		</div>
		<!-- ギフト -->
		<div class="NotoSerifSB fs-18px ls-1 text-center mt-2 gift-sp">
			想いを寄せて、大切な人に。
		</div>
		<div class="d-flex justify-content-evenly align-items-center ls-1 pt-1 px-4">
			<div>
				<img class="d-lg-block d-block img-fluid" src="//img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
					alt="">
				<img class="d-none img-fluid" src="//img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
					alt="">
			</div>
			<div class="NotoSerifL fs-31px ls-1">
				<div>熨斗</div>
				<div>無料対応◎</div>
			</div>
		</div>
	</div>
</nav>
<{/if}>
<!-- sidebar.tpl ▲ -->
<!-- footer.tpl ▼ -->
</div>
</div>


<!-- Footer -->
<footer id="footer">
	<div class="container">
		<!-- 最近チェックした商品 -->
		<div class="checked mx-auto">
			<{if $history != 0}>
				<h2 class="d-flex align-items-center NotoSerifL fs-18px">最近チェックした商品</h2>
				<div class="row">
					<{foreach from=$history item=v}>
					<a href="<{$v.link_url}>" class="d-block col-6 col-lg-2 mb-2 text-decoration-none">
						<p><img src="<{$v.img_url}>" class="img-fluid"></p>
						<p class="NotoSerifL fs-18px"><{$v.name}></p>
						<p class="TrajanB fs-24px"><{$v.price}></p>
					</a>
					<{/foreach}>
				</div>
			<{/if}>
		</div>
		<!-- / 最近チェックした商品 -->
	</div>

	<!--グラデーション -->
	<div class="gradient">
		<div class="container">

			<!-- PC -->
			<div class="footer d-none d-lg-block mx-auto pt-15">
				<!-- Grid row -->
				<div class="row">

					<!-- ISHIMARUについて -->
					<div class="col-2 me-4 pe-0">

						<h3 class="pb-20px badge bg-secondary NotoSerifL fs-20px ls-1">ISHIMARUについて</h3>
						<a class="nav-link TrajanR ps-0 pt-0 pb-1 fs-14px lh-lg" href="https://www.saga-ishimaru.co.jp/?mode=f1">- ABOUT</a>

						<!-- SNS -->
						<div class="py-2">
							<a href="//www.instagram.com/suguru_ishimaru/" target="_blank" class="btn btn-link pe-0 instagram">
							</a>
							<a href="//www.facebook.com/ishimaru.meet/" target="_blank" class="btn btn-link pe-0 facebook">
							</a>
						</div>
						<!-- / SNS -->

						<!-- ロゴ -->
						<div class="mt-1">
							<a href="<{$home_url}>" class="d-block" title="<{$shop_name}>"><img
									src="//img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501"
									alt="石丸ショップロゴ"></a>
						</div>
						<!-- / ロゴ -->

					</div>
					<!-- / ISHIMARUについて -->

					<!-- 商品のご案内 -->
					<div class="col NotoSerifL fs-14px ps-0">
						<h3 class="pb-20px badge bg-secondary NotoSerifL fs-20px">商品のご案内</h3>
						<!-- ブランド牛で選ぶ -->
						<p class="NotoSerifSB lh-lg">ブランド牛で選ぶ</p>
						<p>
							<a href="#collapseSagagyu" class="lh-lg chevron-down" data-bs-toggle="collapse" role="button"
								aria-expanded="false" aria-controls="collapseSagagyu">佐賀牛</a>
						</p>
						<div class="collapse" id="collapseSagagyu">
							<div class="card card-body border-0">
								<{foreach from=$subcategory[2543763] item=sub_cate}>
								<a href="<{$sub_cate.link_url}>"><{$sub_cate.name}></a>
								<{/foreach}>
							</div>
						</div>
						<p>
							<a href="#collapseKuroge" class="lh-lg chevron-down" data-bs-toggle="collapse" role="button"
								aria-expanded="false" aria-controls="collapseKuroge">黒毛和牛</a>
						</p>
						<div class="collapse" id="collapseKuroge">
							<div class="card card-body border-0">
								<{foreach from=$subcategory[2547504] item=sub_cate}>
								<a href="<{$sub_cate.link_url}>"><{$sub_cate.name}></a>
								<{/foreach}>
							</div>
						</div>
					</div>
					<!-- / ブランド牛で選ぶ -->

					<!-- その他 -->
					<div class="col mt-56px NotoSerifL fs-14px text-nowrap pe-1">
						<p class="NotoSerifSB lh-lg">その他</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?pid=147855212" class="lh-lg">- 佐賀牛入りハンバーグ</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?pid=160628002" class="lh-lg">- 九州産黒毛和牛ハンバーグ</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2547504&csid=0" class="lh-lg">- 黒毛和牛</a>
						</p>
					</div>
					<!-- / その他 -->

					<!-- 料理で選ぶ -->
					<div class="col mt-56px NotoSerifL fs-14px text-nowrap pe-1">
						<p class="NotoSerifSB lh-lg">料理で選ぶ</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2338001" class="lh-lg">- 焼肉</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2373403" class="lh-lg">- ステーキ</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2338000" class="lh-lg">- しゃぶしゃぶ・すき焼き</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2337958" class="">- ハンバーグ</a>
						</p>
					</div>
					<!-- / 料理で選ぶ -->

					<!-- 部位で選ぶ -->
					<div class="col mt-56px NotoSerifL fs-14px pe-0">
						<p class="NotoSerifSB lh-lg">部位で選ぶ</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2337960" class="lh-lg">- ひれ</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2337988" class="lh-lg">- 赤身</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2337958" class="lh-lg">- ウデ</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2337999" class="lh-lg">- モモ</a>
						</p>
					</div>
					<!-- / 部位で選ぶ -->

					<!-- 予算で選ぶ -->
					<div class="col mt-56px NotoSerifL fs-14px ps-0">
						<p class="NotoSerifSB lh-lg">予算で選ぶ</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2673106" class="lh-lg">- ～￥4,999</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2673107" class="lh-lg">- ￥5,000～￥9,999</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2673108" class="lh-lg">- ￥10,000～</a>
						</p>
					</div>
					<!-- / 予算で選ぶ -->
					<!-- / 商品のご案内 -->

					<!-- サービス -->
					<div class="col NotoSerifL fs-14px pe-0">
						<h3 class="pb-20px badge bg-secondary NotoSerifL fs-20px">サービス</h3>
						<!-- <p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=f3" class="lh-lg">ポイントについて</a>
						</p> -->
						<p>
							<a href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442" class="lh-lg">会員登録</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=sk" class="lh-lg">ご利用ガイド</a>
						</p>
						<p>
							<a href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.6948210.1585923337.1638708826-747911806.1637750824" class="lh-lg">お問い合せ</a>
						</p>
						<p>
							<a href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442" class="lh-lg">メルマガ登録・解約</a>
						</p>
					</div>
					<!-- / サービス -->

				</div>
				<!-- Grid row -->

				<!-- Copyright -->
				<div class="text-center fs-16px pt-5 pb-70px ls-1">
					<span class="NotoSerifL">© 黒毛和牛専門店</span><span class="TrajanR"> ISHIMARU.</span>
				</div>
				<!-- / Copyright -->
			</div>
			<!-- / PC -->

			<!-- SP -->
			<div class="footer d-lg-none mx-auto pt-3 pb-5">
				<!-- Grid row 1 -->
				<div class="row py-2 text-center align-items-center">

					<!-- ロゴ -->
					<div class="col-4">
						<a href="#"><img
								src="//img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501"
								width="100" alt="石丸ショップロゴ"></a>
					</div>
					<!-- / ロゴ -->

					<!-- SNS -->
					<div class="col-3 p-0">
						<a href="//www.instagram.com/suguru_ishimaru/" target="_blank" class="btn btn-link pe-0 instagram">
						</a>
						<a href="//www.facebook.com/ishimaru.meet/" target="_blank" class="btn btn-link pe-0 facebook">
						</a>
					</div>
					<!-- / SNS -->

					<!-- 戻るボタン-->
					<div class="col-5">
						<a href="#" class="btn btn-dark rounded-pill TrajanB ls-1 chevron-up">PAGE TOP</a>
					</div>
					<!-- / 戻るボタン-->

				</div>
				<!-- Grid row 1 -->

				<!-- Grid row 2 -->
				<div class="row pb-2 fs-14px">
					<div class="col-6 NotoSerifL">
						<p>
							<a href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.102523969.1504273749.1638167996-747911806.1637750824" class="lh-lg">お問い合わせ</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=sk#payment" class="lh-lg">お支払い方法について</a>
						</p>
						<!-- <p>
							<a href="#!" class="lh-lg">サイトポリシー</a>
						</p> -->
						<p>
							<a href="<{$privacy_url}>" class="lh-lg">プライバシーポリシー</a>
						</p>
					</div>

					<div class="col-6 NotoSerifL">
						<!-- <p>
							<a href="#!" class="lh-lg">プレスリリース</a>
						</p> -->
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=sk#info" class="lh-lg">特定商取引法に基づく表記</a>
						</p>
						<p>
							<a href="https://www.saga-ishimaru.co.jp/?mode=sk" class="lh-lg">配送方法・送料について</a>
						</p>
					</div>
				</div>

				<!-- Copyright -->
				<div class="text-center fs-16px ls-1 copy">
					<span class="NotoSerifL">© 黒毛和牛専門店</span><span class="TrajanR"> ISHIMARU.</span>
				</div>
				<!-- / Copyright -->

			</div>
			<!-- / SP -->
		</div>
	</div>
	<!-- / グラデーション -->
</footer>
<!-- / Footer -->
