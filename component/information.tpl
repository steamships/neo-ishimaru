<!-- インフォメーション -->
<article id="info">
	<h3 class="TrajanB mb-1">INFORMATION<span class="NotoSerifL fs-6 ms-1">お知らせ</span></h3>
	<!-- カラーミーのデータを元にループ作成▼ -->
	<!-- <div class="row position-relative">
		<{if $new_item_num !=0}>
			<{foreach name=news from=$seller item=v}>
				<{if $smarty.foreach.news.index < 4}>
					<div class="col-6 col-lg-3 mb-1">
						<a href="<{$v.link_url}>">
							<img src="<{$v.img_url}>">
						</a>
						<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span><span class="TrajanR date"><{$smarty.now|date_format:'%Y-%m-%d'}></span></div>
						<div class="NotoSerifSB title fs-5"><{$v.name}></div>
						<div class="NotoSerifL expl"><{$v.s_expl}></div>
					</div>
				<{/if}>
			<{/foreach}>
		<{/if}>
	</div> -->

	<div class="row position-relative">

	<!-- ポイントが5倍 -->
	<div class="col-6 col-lg-3 mb-1">
			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/211208_point-5.png?cmsp_timestamp=20211210172146">
		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-10</span></div>
		<div class="NotoSerifSB title fs-5">リニューアル記念！</div>
		<div class="NotoSerifL expl">期間限定でいまだけポイントが5倍です！12月20日まで♪</div>
	</div>

	<!-- 品切れ -->
	<!-- <div class="col-6 col-lg-3 mb-1">

			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/info-oos-hmbg.jpg?cmsp_timestamp=20211206160248">

		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-06</span></div>
		<div class="NotoSerifSB title fs-5">品切れのお詫び</div>
		<div class="NotoSerifL expl">九州産黒毛和牛ハンバーグは大好評のため現在品切れ中です。</div>
	</div> -->

	<!-- 変更のお知らせ -->
	<div class="col-6 col-lg-3 mb-1">

			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-noticeofchange.png?cmsp_timestamp=20211220164719">

		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-07</span></div>
		<div class="NotoSerifSB title fs-5">変更のお知らせ</div>
		<div class="NotoSerifL expl">リニューアル後に大きく2点の変更を行いました。</div>
	</div>

	<!-- 鍋 -->
	<div class="col-6 col-lg-3 mb-1">
		<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2338000">
			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/info-nabe.jpg?cmsp_timestamp=20211206160509">
		</a>
		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-06</span></div>
		<div class="NotoSerifSB title fs-5">最高級和牛でお鍋！</div>
		<div class="NotoSerifL expl">寒い冬にはあったかお鍋♪</div>
	</div>

	<!-- インスタ -->
	<div class="col-6 col-lg-3 mb-1">
		<a href="https://www.instagram.com/suguru_ishimaru/">
			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/info-Insta.png?cmsp_timestamp=20211206160453">
		</a>
		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-06</span></div>
		<div class="NotoSerifSB title fs-5">プレゼント企画も!?</div>
		<div class="NotoSerifL expl">Instagramでお得な情報をお届けします♪</div>
	</div>

	</div>

	<!-- 一旦moreコメントアウト -->
	<!-- <a class="d-flex ms-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more"
		href="#" role="button">more</a> -->
</article>
<!-- / インフォメーション -->
