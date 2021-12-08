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

	<!-- お歳暮 -->
	<div class="col-6 col-lg-3 mb-1">
		<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2483504">
			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/info-oseibo.jpg?cmsp_timestamp=20211206160132">
		</a>
		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-06</span></div>
		<div class="NotoSerifSB title fs-5">お歳暮にどうぞ◎</div>
		<div class="NotoSerifL expl">個数限定！特別特価でご提供するお歳暮特集です。</div>
	</div>

	<!-- 品切れ -->
	<div class="col-6 col-lg-3 mb-1">

			<img class="img-fluid" src="https://img07.shop-pro.jp/PA01437/442/etc/info-oos-hmbg.jpg?cmsp_timestamp=20211206160248">

		<div class="fs-6 head"><span class="badge bg-primary TrajanB ls-1">NEWS</span>
			<span class="TrajanR date">2021-12-06</span></div>
		<div class="NotoSerifSB title fs-5">品切れのお詫び</div>
		<div class="NotoSerifL expl">九州産黒毛和牛ハンバーグは大好評のため現在品切れ中です。</div>
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
						<!-- 値段の表記一旦コメントアウト -->
						<!-- <div class="TrajanB fs-31px"><span class="fs-20px">￥</span><{$v.price}><span class="NotoSerifL fs-16px">(税込)</span></div> -->
						<div class="TrajanB fs-31px"><{$v.price}></div>
					</div>
				<{/if}>
			<{/foreach}>
		<{/if}>
	</div>
	<!-- 一旦moreコメントアウト -->
	<!-- <a class="d-flex ms-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more" href="#" role="button">more</a> -->
</article>
<!-- / ランキング -->
<!-- ブランド -->
<article id="brand">
	<h3 class="TrajanB mb-1">BY BRAND<span class="NotoSerifL fs-6 ms-1">ブランドで選ぶ</span></h3>
	<div class="row row row-cols-1 row-cols-lg-2 justify-content-between">
		<div class="col mb-2">
			<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2543763&csid=0">
				<img class="d-lg-block d-block img-fluid mb-1"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-sagagyu-pc.jpg?cmsp_timestamp=20211204113509" alt="">
				<img class="d-none img-fluid"
					src="//img07.shop-pro.jp/PA01437/442/etc/neo-sagagyu-sp.jpg?cmsp_timestamp=20211204113546" alt="">
			</a>
			<h5 class="NotoSerifSB bb-1">基準をクリアした、最高ランクの和牛。</h5>
			<p class="NotoSerifL fs-18px">柔らかい赤身の中にきめ細やかに風味ただよう脂肪が入った見事な霜降り牛肉です。</p>
		</div>
		<div class="col mb-2">
			<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2547504&csid=0">
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
		<div class="col my-1"><a class="text-decoration-none"
				href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2338001">
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
			<a class="text-decoration-none" href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2373403">
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
			<a class="text-decoration-none" href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2338000">
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
			<a class="text-decoration-none" href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2337958">
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
<div id="by-part-beef" class="NotoSerifL mb-2">
	<h3 class="TrajanB">
		BY PART BEEF
		<span class="NotoSerifL fs-6 ms-1">部位で選ぶ</span>
	</h3>

	<!-- 牛の部位タブ -->
	<ul id="by-part-beef-tab" class="nav nav-pills nav-justified gap-1 my-3 justify-content-center" role="tablist" style="white-space: nowrap;">
		<li class="nav-item" role="presentation">
			<a class="nav-link active" data-bs-toggle="pill" href="#部位ヒレ" role="tab" data-chart="8,5,9,7,9" data-top="20%" data-left="65%">ヒレ</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-bs-toggle="pill" href="#部位ロース" role="tab" data-chart="8,8,9,9,6" data-top="18%" data-left="45%">ロース</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-bs-toggle="pill" href="#部位ウデ" role="tab" data-chart="7,6,6,7,6" data-top="23%" data-left="35%">ウデ</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-bs-toggle="pill" href="#部位モモ" role="tab" data-chart="7,5,7,6,6" data-top="40%" data-left="75%">モモ</a>
		</li>
	</ul>
	<div id="by-part-beef-tab-wrap" class="row justify-content-between flex-column-reverse flex-lg-row">
		<div class="col-lg-7">

			<!-- 牛の部位にスター -->
			<div id="by-part-beef-img" class="col-6 mx-auto mb-2">
				<i id="by-part-beef-img-star" class="bi bi-star-fill"></i>
			</div>

			<!-- 部位ごとの解説＆リンク -->
			<div id="by-part-beef-tab-content" class="tab-content lh-lg">
				<div class="tab-pane show active" id="部位ヒレ" role="tabpanel">
					<p>牛の部位の中で圧倒的に運動量が少なく、キメが細かなヒレは一頭の牛からわずか3％しか取れない希少部位。肉の女王とも呼ばれるこの部位の特徴はとにかく「柔らかい」こと。</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337960" role="button">
						ヒレページへ
					</a>
				</div>
				<div class="tab-pane" id="部位ロース" role="tabpanel">
					<p>赤身の部分は柔らかく、適度に脂のサシが入ってきめ細かな霜降りになっているのが特徴。牛肉の脂の甘みとコクの深い旨味を楽しむには最適の部位。</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337981

					" role="button">ロースページへ</a>
				</div>
				<div class="tab-pane" id="部位ウデ" role="tabpanel">
					<p>
						とろけるような程よい食感で濃厚な味わいが特徴の霜降り肉。
						しゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
					</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337989" role="button">ウデページへ</a>
				</div>
				<div class="tab-pane" id="部位モモ" role="tabpanel">
					<p>
						比較的脂身が少ないヘルシーな赤身肉。
						さっぱりとした味わいが特徴でしゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
					</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337999" role="button">モモページへ</a>
				</div>

			</div>

		</div>

		<!-- 牛の部位レーダーチャート -->
		<div class="col-lg-5" id="by-part-beef-chart">
			<canvas></canvas>
		</div>
	</div>
</div>
<!-- price -->
<article id="price">
	<h3 class="TrajanB">BY PRICE<span class="NotoSerifL fs-6 ms-1">価格帯で選ぶ</span></h3>
	<div class="d-flex justify-content-between flex-column flex-lg-row gap-1 mt-2 mb-4">
		<a class="d-flex align-items-center justify-content-center flex-grow-1 btn bg-white NotoSerifL fs-26px py-1 ls-1 chevron-right"
			href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2673106" role="button">
			～￥4,999
		</a>

		<a class="d-flex align-items-center justify-content-center flex-grow-1 btn bg-white NotoSerifL fs-26px py-1 ls-1 chevron-right"
			href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2673107" role="button">
			￥5,000～4,999
		</a>

		<a class="d-flex align-items-center justify-content-center flex-grow-1 btn bg-white NotoSerifL fs-26px py-1 ls-1 chevron-right"
			href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2673108" role="button">
			￥10,000～
		</a>
	</div>
</article>
<!-- / price -->
<!-- review.tpl ▼ -->
<article id="review">

	<img class="d-none d-lg-block img-fluid"
		src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-pc.jpg?cmsp_timestamp=20211201171920">
	<img class="d-lg-none d-block mt-4 mx-auto mb-1"
		src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-sp.jpg?cmsp_timestamp=20211201173054">

	<!-- 1 -->
	<div class="row">
		<div class="col-lg-6 d-none d-lg-block">
			<a href="https://www.saga-ishimaru.co.jp/?pid=147855212">
				<img class="img-fluid"
					src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-item1.png?cmsp_timestamp=20211201173038"
					alt="">
			</a>
		</div>
		<div class="col-12 col-lg-6">
			<div class="badge bg-primary w-100 text-start fs-18px NotoSerifSB py-1 ps-1">ISHIMARUで一番の人気商品！</div>
			<h4 class="NotoSerifSB fs-28px">【佐賀牛入り】黒毛和牛ハンバーグ</h4>
			<a href="https://www.saga-ishimaru.co.jp/?pid=147855212">
				<img class="w-100 d-lg-none"
					src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-item1.png?cmsp_timestamp=20211201173038"
					alt="">
			</a>
			<div class="card">
				<div class="card-body">
					<div class=" d-flex flex-column justify-content-between h-100">
						<p class="card-title fs-17px">商品名:【佐賀牛入り】黒毛和牛ハンバーグ</p>
						<p class="card-text NotoSerifSB fs-22px bb-d pb-1">ソースとの相性が抜群！</p>
						<p class="card-text NotoSerifL fs-18px py-1 mb-auto">冷凍のハンバーグとは思えないほど、肉質が柔らかくて驚きました。
							肉汁たっぷり、お肉も甘みも感じられてとても美味しかったです。
							佐賀県産の玉ねぎを贅沢に使用したかばいソースがまた美味しくて、
							ハンバーグとの相性も抜群でした。解凍して焼くだけの手軽さも魅力的です。
							焼き方の説明も丁寧に記載されているので助かりました。</p>
						<div class="d-flex align-items-center">
							<div class="customer gray-400">投稿者: 20代 女性</div>
							<div class="star ms-1" data-rate="5"></div>
							<a class="d-none d-lg-flex ms-auto align-items-center justify-content-center text-decoration-none btn btn-outline-secondary NotoSerifL fs-18px px-2 py-1 ls-1 chevron-right"
								href="https://www.saga-ishimaru.co.jp/?pid=147855212" role="button">
								商品詳細
							</a>
						</div>
						<a class="w-100 d-block d-lg-none d-inline-flex mx-auto align-items-center justify-content-center btn btn-outline-secondary NotoSerifL fs-18px mt-1 py-1 ls-1 chevron-right"
							href="https://www.saga-ishimaru.co.jp/?pid=147855212" role="button">
							商品詳細
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 2 -->
	<!-- 売り切れのためコメントアウト -->
	<!-- <div class="row">
		<div class="col-lg-6 d-none d-lg-block">
			<a href="https://www.saga-ishimaru.co.jp/?pid=160628002">
				<img class="img-fluid"
					src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-item2.png?cmsp_timestamp=20211202105229"
					alt="">
			</a>
		</div>
		<div class="col-12 col-lg-6">
			<div class="badge bg-primary w-100 text-start fs-18px NotoSerifSB py-1 ps-1">1つひとつ手作り。肉汁が溢れ出ます。</div>
			<h4 class="NotoSerifSB fs-28px">【九州産黒毛和牛】ハンバーグ</h4>
			<a href="https://www.saga-ishimaru.co.jp/?pid=160628002">
				<img class="w-100 d-lg-none"
					src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-item2.png?cmsp_timestamp=20211202105229"
					alt="">
			</a>
			<div class="card">
				<div class="card-body">
					<div class=" d-flex flex-column justify-content-between h-100">
						<p class="card-title fs-17px">商品名:【九州産黒毛和牛】ハンバーグ</p>
						<p class="card-text NotoSerifSB fs-22px bb-d pb-1">肉の味わいが濃厚でジューシー♪</p>
						<p class="card-text NotoSerifL fs-18px py-1 mb-auto">
							肉汁があふれ、肉の味わいが濃厚でジューシーでした！
							小分けされた冷凍の状態で届くので、ストックできるのも便利でした。
							また申込みたいと思います。</p>
						<div class="d-flex align-items-center">
							<div class="customer gray-400">投稿者: 20代 女性</div>
							<div class="star ms-1" data-rate="5"></div>
							<a class="d-none d-lg-flex ms-auto align-items-center justify-content-center text-decoration-none btn btn-outline-secondary NotoSerifL fs-18px px-2 py-1 ls-1 chevron-right"
								href="https://www.saga-ishimaru.co.jp/?pid=160628002" role="button">
								商品詳細
							</a>
						</div>
						<a class="w-100 d-block d-lg-none d-inline-flex mx-auto align-items-center justify-content-center btn btn-outline-secondary NotoSerifL fs-18px mt-1 py-1 ls-1 chevron-right"
							href="https://www.saga-ishimaru.co.jp/?pid=160628002" role="button">
							商品詳細
						</a>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<!-- 3 -->
	<div class="row">
		<div class="col-lg-6 d-none d-lg-block">
			<a href="https://www.saga-ishimaru.co.jp/?pid=145587190">
				<img class="img-fluid"
					src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-item3.png?cmsp_timestamp=20211202105248"
					alt="">
			</a>
		</div>
		<div class="col-12 col-lg-6">
			<div class="badge bg-primary w-100 text-start fs-18px NotoSerifSB py-1 ps-1">1つひとつ手作り。肉汁が溢れ出ます。</div>
			<h4 class="NotoSerifSB fs-28px">【佐賀牛】ヒレステーキ</h4>
			<a href="https://www.saga-ishimaru.co.jp/?pid=145587190">
				<img class="w-100 d-lg-none"
					src="https://img07.shop-pro.jp/PA01437/442/etc/neo-review-item3.png?cmsp_timestamp=20211202105248"
					alt="">
			</a>
			<div class="card">
				<div class="card-body">
					<div class=" d-flex flex-column justify-content-between h-100">
						<p class="card-title fs-17px">商品名:【佐賀牛】ヒレステーキ</p>
						<p class="card-text NotoSerifSB fs-22px bb-d pb-1">やわらかく肉厚！</p>
						<p class="card-text NotoSerifL fs-18px py-1 mb-auto">
							やわらかく肉厚ありヒレのうまさを堪能できました！
							ネットで肉の焼き方レシピを見てチャレンジしたらミディアムレアでうまく焼けました。</p>
						<div class="d-flex align-items-center">
							<div class="customer gray-400">投稿者: 50代 男性</div>
							<div class="star ms-1" data-rate="5"></div>
							<a class="d-none d-lg-flex ms-auto align-items-center justify-content-center text-decoration-none btn btn-outline-secondary NotoSerifL fs-18px px-2 py-1 ls-1 chevron-right"
								href="https://www.saga-ishimaru.co.jp/?pid=145587190" role="button">
								商品詳細
							</a>
						</div>
						<a class="w-100 d-block d-lg-none d-inline-flex mx-auto align-items-center justify-content-center btn btn-outline-secondary NotoSerifL fs-18px mt-1 py-1 ls-1 chevron-right"
							href="https://www.saga-ishimaru.co.jp/?pid=145587190" role="button">
							商品詳細
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 遷移先がないため一旦コメントアウト -->
	<!-- <a class="d-flex mx-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more"
		href="#" role="button">more</a> -->
</article>
<!-- review.tpl ▲ -->
