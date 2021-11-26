<{* assetsの存在でローカルと本番のURLを切り替える *}>
<{if !$assets}>
<{assign "assets" "https://cdn.jsdelivr.net/gh/steamships/neo-ishimaru@main/assets"}>
<{/if}>

<script src="<{$assets}>/js/bundle.js?ver=<{$smarty.now|date_format:'%Y%m%d%H%M%S'}>" type="module"></script>
<link rel="stylesheet" href="<{$assets}>/css/starter.css?ver=<{$smarty.now|date_format:'%Y%m%d%H%M%S'}>" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- Header Start -->
<header id="header">
	<nav class="navbar navbar-expand-md primary navbar-light fixed-top mb-3 header-nav flex-wrap">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<div class="openbtn"><span></span><span></span></div>
		</button>
		<a class="navbar-brand" href="#"><img class="main-logo" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501" alt="石丸ショップロゴ"></a>
		<ul class="d-md-none d-flex list-unstyled sp-navbar-icons">
			<li class="nav-item">
				<a class="nav-link" href="https://www.saga-ishimaru.co.jp/cart/proxy/basket?shop_id=PA01437442&shop_domain=saga-ishimaru.co.jp"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-cart-pc.png?cmsp_timestamp=20211122144648" alt="カートアイコン"></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-account-pc.png?cmsp_timestamp=20211122144722" alt="アカウントアイコン"></a>
			</li>
		</ul>
		<div class="collapse navbar-collapse justify-content-between flex-wrap" id="navbarNav">
			<ul class="navbar-nav text-center main-nav">
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">ABOUT<span class="d-block NotoSerifL">ISHIMARUのこと</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link">BRAND<span class="d-block NotoSerifL">ブランド牛で選ぶ</span>
					</a>
					<ul class="sub-nav d-flex list-unstyled position-absolute w-auto">
						<li class="sub-nav-item m-2">
							<a class="sub-nav-item-link text-decoration-none NotoSerifL" href="#"><img class="sub-nav-item-img" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-sagagyu-pc.jpg?cmsp_timestamp=20211125173848" alt="佐賀牛"></a>
						</li>
						<li class="sub-nav-item m-2">
							<a class="sub-nav-item-link text-decoration-none NotoSerifL" href="#"><img class="sub-nav-item-img" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-kuroge-pc.jpg?cmsp_timestamp=20211125173539" alt="黒毛和牛"></a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">DISH<span class="d-block NotoSerifL">料理で選ぶ</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">BUDGET<span class="d-block NotoSerifL">部位で選ぶ</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">PRICE<span class="d-block NotoSerifL">価格帯で選ぶ</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link TrajanSB" href="#">SERVICE<span class="d-block NotoSerifL">サービス</span></a>
				</li>
			</ul>
			<ul class="navbar-nav navbar-icons d-none d-md-inline-flex">
				<li class="nav-item header-icon-list">
					<a class="nav-link" href="#"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-find.png?cmsp_timestamp=20211122153310" alt="検索アイコン"></a>
				</li>
				<li class="nav-item header-icon-list">
					<a class="nav-link" href="#"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-favarite_.png?cmsp_timestamp=20211125153455" alt="お気に入りアイコン"></a>
				</li>
				<li class="nav-item header-icon-list">
					<a class="nav-link" href="https://www.saga-ishimaru.co.jp/cart/proxy/basket?shop_id=PA01437442&shop_domain=saga-ishimaru.co.jp"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-cart-pc.png?cmsp_timestamp=20211122144648" alt="カートアイコン"></a>
				</li>
				<li class="nav-item header-icon-list">
					<a class="nav-link" href="#"><img class="header-icon" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-account-pc.png?cmsp_timestamp=20211122144722" alt="アカウントアイコン"></a>
				</li>
			</ul>
		</div>
	</nav>
</header>
<!-- Header End -->
<{include file=$file_name}>
フッタ−
