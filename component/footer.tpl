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