<!-- main.tpl ▼ -->

<!-- インフォメーション -->
<article id="info">
	<h3 class="TrajanB mb-1">INFORMATION<span class="NotoSerifL fs-6 ms-1">お知らせ</span></h3>
	<div class="row position-relative">
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
	</div>
	<a class="d-flex ms-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more" href="#" role="button">more</a>
</article>
<!-- / インフォメーション -->

<!-- ランキング -->
<article id="ranking">
	<h3 class="TrajanB mb-1">RANKING<span class="NotoSerifL fs-6 ms-1">ランキング</span></h3>
	<div class="row position-relative">
		<{if $seller_num !=0}>
			<{foreach name=ranking from=$seller item=v}>
				<{if $smarty.foreach.ranking.index < 4}>
					<div class="col-6 col-lg-3 mb-1">
						<span class="position-absolute start-1 badge rank-<{$smarty.foreach.ranking.iteration}> TrajanB fs-6 ">
							<{$smarty.foreach.ranking.iteration}>
						</span>
						<a href="<{$v.link_url}>">
							<img src="<{$v.img_url}>">
						</a>
						<div class="NotoSerifL fs-18px name"><{$v.name}></div>
						<div class="TrajanB fs-31px"><span class="fs-20px">￥</span><{$v.price|number_format}><span class="NotoSerifL fs-16px">(税込)</span></div>
					</div>
				<{/if}>
			<{/foreach}>
		<{/if}>
	</div>
	<a class="d-flex ms-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more" href="#" role="button">more</a>
</article>
<!-- / ランキング -->

<!-- ブランド -->
<article id="brand">
	<h3 class="TrajanB mb-1">BY BRAND<span class="NotoSerifL fs-6 ms-1">ブランドで選ぶ</span></h3>
	<div class="row row row-cols-1 row-cols-lg-2 justify-content-between">
		<div class="col mb-2">
			<a href="">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-sagagyu-pc.jpg?cmsp_timestamp=20211204113509" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-sagagyu-sp.jpg?cmsp_timestamp=20211204113546" alt="">
			</a>
			<h5 class="NotoSerifSB bb-1">基準をクリアした、最高ランクの和牛。</h5>
			<p class="NotoSerifL fs-18px">柔らかい赤身の中にきめ細やかに風味ただよう脂肪が入った見事な霜降り牛肉です。</p>
		</div>
		<div class="col mb-2">
			<a href="">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-kuroge-pc.jpg?cmsp_timestamp=20211204120606" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-kuroge-sp.jpg?cmsp_timestamp=20211204120615" alt="">
			</a>
			<h5 class="NotoSerifSB bb-1">自然豊かな九州で育った黒毛和牛。</h5>
			<p class="NotoSerifL fs-18px">味はもちろん、国産で安心・安全さも魅力の一つ！さっぱり目のお肉が好きな方におすすめです。</p>
		</div>
	</div>
</article>
<!-- / ブランド -->

<!-- dish -->
<article id="dish">
	<h3 class="TrajanB">BY DISH<span class="NotoSerifL fs-6 ms-1">料理で選ぶ</span></h3>
	<div class="row row-cols-2 row-cols-lg-4 justify-content-between text-center">
		<div class="col my-1"><a class="text-decoration-none" href="">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-yakiniku-pc.png?cmsp_timestamp=20211203192723" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-yakiniku-sp.png?cmsp_timestamp=20211203192726" alt="">
				<p class="NotoSerifSB fs-5 chevron-right dish">
					焼肉・BBQ
				</p>
			</a>
		</div>
		<div class="col my-1">
			<a class="text-decoration-none" href="">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-steak-pc.png?cmsp_timestamp=20211203193938" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-steak-sp.png?cmsp_timestamp=20211203193946" alt="">
				<p class="NotoSerifSB fs-5 chevron-right dish">
					ステーキ
				</p>
			</a>
		</div>
		<div class="col my-1">
			<a class="text-decoration-none" href="">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-nabe-pc.png?cmsp_timestamp=20211203194011" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-nabe-sp.png?cmsp_timestamp=20211203194018" alt="">
				<p class="NotoSerifSB fs-5 chevron-right dish">
					鍋もの
				</p>
			</a>
		</div>
		<div class="col my-1">
			<a class="text-decoration-none" href="">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-hmbg-pc.png?cmsp_timestamp=20211203194037" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-hmbg-sp.png?cmsp_timestamp=20211203194107" alt="">
				<p class="NotoSerifSB fs-5 chevron-right dish">
					ハンバーグ
				</p>
			</a>
		</div>
	</div>
</article>
<!-- / dish -->

<!-- price -->
<article id="price">
	<h3 class="TrajanB">BY PRICE<span class="NotoSerifL fs-6 ms-1">価格帯で選ぶ</span></h3>
	<div class="d-flex flex-column flex-lg-row gap-1 mt-2 mb-4">
		<a class="flex-grow-1 flex-shrink-1 btn bg-white NotoSerifL fs-26px py-1 ls-1 chevron-right" href="#"
			role="button">
			～￥4,999
		</a>

		<a class="flex-grow-1 flex-shrink-1 btn bg-white NotoSerifL fs-26px py-1 ls-1 chevron-right" href="#"
			role="button">
			￥5,000～4,999
		</a>

		<a class="flex-grow-1 flex-shrink-1 btn bg-white NotoSerifL fs-26px py-1 ls-1 chevron-right" href="#"
			role="button">
			￥10,000～
		</a>
	</div>
</article>
<!-- / price -->

<!-- main.tpl ▲ -->
