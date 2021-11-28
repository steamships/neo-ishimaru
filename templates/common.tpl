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
					<!-- カテゴリーリスト -->
					<{section name=num loop=$category}>
					<{if $smarty.section.num.first }>
					<ul class="sub-nav d-flex list-unstyled position-absolute w-auto">
						<{foreach from=$category item=big_cate name=key}>
						<{if $sub_category[$big_cate.bid] != ""}>
						<li>
							<a class="gnav_open"><{$big_cate.name}></a>
							<ul class="nav_hidden">
							<{foreach from=$sub_category[$big_cate.bid] item=sub_cate name=key}>
								<li>
									<a href="<{$sub_cate.link_url}>"><{$sub_cate.name}></a>
								</li>
							<{/foreach}>
							</ul>
						</li>
						<{else}>
						<li>
							<a href="<{$big_cate.link_url}>"><{$big_cate.name}></a>
						</li>
						<{/if}>
						<{/foreach}>
					</ul>
					<{/if}>
					<{/section}>
					<!-- // カテゴリーリスト -->
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
<!-- Footer -->
<footer>
	<!--グラデーション -->
	<div class="gradient">
		<!-- PC -->
		<section class="pc mx-auto pt-15">
			<!-- Grid row -->
			<div class="row">

				<!-- ISHIMARUについて -->
				<div class="col-2 me-4 pe-0">

					<h3 class="pb-20px"><span class="badge bg-secondary NotoSerifL fs-20px ls-1">ISHIMARUについて</span>
					</h3>
					<a class="nav-link TrajanR ps-0 pt-0 pb-1 fs-18px lh-lg" href="#">- ABOUT</a>

					<!-- SNS -->
					<div class="py-2">
						<button type="button" class="btn btn-link">
							<a href="">
								<svg class="bi bi-facebook" width="32" height="32" viewBox="0 0 20 20"
									fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd"
										d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
								</svg>
							</a>
						</button>
						<button type="button" class="btn btn-link">
							<a href="">
								<svg class="bi bi-facebook" width="32" height="32" viewBox="0 0 20 20"
									fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd"
										d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
								</svg>
							</a>
						</button>
					</div>
					<!-- // SNS -->

					<!-- ロゴ -->
					<div class="mt-1">
						<a href="#"><img
								src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501"
								alt="石丸ショップロゴ"></a>
					</div>
					<!-- // ロゴ -->

				</div>
				<!-- // ISHIMARUについて -->

				<!-- 商品のご案内 -->
				<div class="col NotoSerifL fs-18px ps-0">
					<h3 class="pb-20px"><span class="badge bg-secondary NotoSerifL fs-20px">商品のご案内</span></h3>
					<!-- ブランド牛で選ぶ -->
					<p class="NotoSerifSB lh-lg">ブランド牛で選ぶ</p>
					<p>
						<a href="#collapseSagagyu" class="lh-lg" data-bs-toggle="collapse" role="button"
							aria-expanded="false" aria-controls="collapseSagagyu">佐賀牛<span class="ms-1"><svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
									class="bi bi-chevron-down" viewBox="0 0 16 16">
									<path fill-rule="evenodd"
										d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
								</svg></span></a>
					</p>
					<div class="collapse" id="collapseSagagyu">
						<div class="card card-body">
							佐賀牛
						</div>
					</div>
					<p>
						<a href="#collapseKuroge" class="lh-lg" data-bs-toggle="collapse" role="button"
							aria-expanded="false" aria-controls="collapseKuroge">黒毛和牛<span class="ms-1"><svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
									class="bi bi-chevron-down" viewBox="0 0 16 16">
									<path fill-rule="evenodd"
										d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
								</svg></span></a>
					</p>
					<div class="collapse" id="collapseKuroge">
						<div class="card card-body">
							黒毛和牛
						</div>
					</div>
				</div>
				<!-- // ブランド牛で選ぶ -->

				<!-- その他 -->
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
				<!-- // その他 -->

				<!-- 料理で選ぶ -->
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
				<!-- // 料理で選ぶ -->

				<!-- 部位で選ぶ -->
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
				<!-- // 部位で選ぶ -->

				<!-- 予算で選ぶ -->
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
				<!-- // 予算で選ぶ -->
				<!-- // 商品のご案内 -->

				<!-- サービス -->
				<div class="col NotoSerifL fs-18px pe-0">
					<h3 class="pb-20px"><span class="badge bg-secondary NotoSerifL fs-20px">サービス</span></h3>
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
				<!-- // サービス -->

			</div>
			<!-- Grid row -->

			<!-- Copyright -->
			<div class="text-center fs-16px pt-5 pb-70px ls-1">
				<span class="NotoSerifL">© 黒毛和牛専門店</span><span class="TrajanR"> ISHIMARU.</span>
			</div>
			<!-- // Copyright -->
		</section>
		<!-- // PC -->

		<!-- SP -->
		<section class="sp mx-1 pt-4 pb-2">
			<!-- Grid row 1 -->
			<div class="row py-2 text-center align-items-center">

				<!-- ロゴ -->
				<div class="col-4 align-middle">
					<a href="#"><img
							src="https://img07.shop-pro.jp/PA01437/442/etc/neo-logo.png?cmsp_timestamp=20211119172501"
							width="100" alt="石丸ショップロゴ"></a>
				</div>
				<!-- // ロゴ -->

				<!-- SNS -->
				<div class="col-3 p-0">
					<button type="button" class="btn btn-link pe-0">
						<a href="">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
								class="bi bi-instagram" viewBox="0 0 16 16">
								<path
									d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
							</svg>
						</a>

					</button>
					<button type="button" class="btn btn-link pe-0">
						<a href="">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
								class="bi bi-facebook" viewBox="0 0 16 16">
								<path
									d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
							</svg>
						</a>
					</button>
				</div>
				<!-- // SNS -->

				<!-- 戻るボタン-->
				<div class="col-5">

					<button type="button" class="btn btn-dark rounded-pill TrajanB fs-14px ls-1"><svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
							class="bi bi-chevron-up" viewBox="0 0 16 16">
							<path fill-rule="evenodd"
								d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z" />
						</svg> PAGE TOP</button>
				</div>
				<!-- // 戻るボタン-->

			</div>
			<!-- Grid row 1 -->

			<!-- Grid row 2 -->
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

			<!-- Copyright -->
			<div class="text-center fs-16px ls-1 copy">
				<span class="NotoSerifL">© 黒毛和牛専門店</span><span class="TrajanR"> ISHIMARU.</span>
			</div>
			<!-- // Copyright -->

		</section>
		<!-- // SP -->
	</div>
	<!-- // グラデーション -->
</footer>
<!-- // Footer -->
