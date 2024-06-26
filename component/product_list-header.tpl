<!-- product_list-header.tpl ▼ -->
<section id="product_list-header" class="mb-3 mb-lg-8">
	<!-- タイトル出力 -->
	<{section name=num loop=$group}>
	<{if $group[num].id == "2673106" || $group[num].id == "2673107" || $group[num].id == "2673108" || $group[num].id == "2337960" || $group[num].id == "2337989" || $group[num].id == "2337981" || $group[num].id == "2337999"}>
	<{if $smarty.get.gid == $group[num].id}>
	<h2 class="p-category-title TrajanB fs-26px mb-2 mb-lg-3 py-1 text-center"><{$group[num].name}>の商品一覧</h2>
	<{/if}>
	<{/if}>
	<{/section}>

	<{* お歳暮ページはリストなど非表示 *}>
	<{if $smarty.get.gid == "2483504"}>
	<{else}>
		<!--カテゴリーリスト -->
		<{foreach from=$category item=cate name=cate}>
		<{if $smarty.get.cbid == $cate.bid}>
			<{foreach from=$subcategory[$cate.bid] item=scate name=scate}>
				<{if $smarty.foreach.scate.first}>
				<ul class="p-sub-category mb-1 mb-lg-2 list-unstyled">
				<{/if}>
				<li class="p-sub-category-item text-center d-inline-block" data-csid="<{$scate.id|replace:$smarty.get.cbid|replace:",":""}>">
						<a href="<{$scate.link_url}>" class="p-sub-category-link d-block text-decoration-none">
							<span class="p-sub-category-name TrajanL"><{$scate.name}></span>
						</a>
					</li>
				<{if $smarty.foreach.scate.last}>
				</ul>
				<{/if}>
			<{/foreach}>
		<{/if}>
		<{/foreach}>

		<!-- グループリスト -->
		<{if $smarty.get.mode == "grp"}>
			<!-- 料理で選ぶグループリスト -->
			<{if $smarty.get.gid == "2337958" || $smarty.get.gid == "2338000" || $smarty.get.gid == "2338001" || $smarty.get.gid == "2373403"}>
				<{section name=num loop=$group}>
					<{if $smarty.section.num.first }>
					<ul class="product_list-dish-group d-flex flex-wrap list-unstyled justify-content-evenly TrajanSB mb-lg-2">
					<{/if}>
						<{if $group[num].id == "2373403" || $group[num].id == "2338001" || $group[num].id == "2338000" || $group[num].id == "2337958"}>
						<li class="product_list-blists d-none mx-0 mb-2 px-1 px-lg-0 text-center group-<{$group[num].id}>">
							<a class="product_list-blists-link text-decoration-none d-inline-block fs-26px" href="<{$group[num].link_url}>"><img class="product_list-blists-img mb-1" src="<{$assets}>/img/neo-subgroup-img-<{$group[num].id}>.png.webp"><span class="d-block text-left text-center"><{$group[num].name}></span></a>
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
			<!-- 価格で選ぶグループリスト -->
			<{elseif $smarty.get.gid == "2673106" || $smarty.get.gid == "2673107" || $smarty.get.gid == "2673108"}>
				<{section name=num loop=$group}>
					<{if $smarty.section.num.first }>
					<ul class="product_list-price-group  mb-1 mb-lg-2 d-flex flex-wrap list-unstyled justify-content-start">
					<{/if}>
						<{if $group[num].id == "2673106" || $group[num].id == "2673107" || $group[num].id == "2673108"}>
						<li class="p-sub-category-item text-center d-none group-<{$group[num].id}>" data-id="<{$group[num].id}>">
							<a href="<{$group[num].link_url}>" class="p-sub-category-link d-block text-decoration-none">
								<span class="p-sub-category-name TrajanL"><{$group[num].name}></span>
							</a>
						</li>
						<{/if}>
					<{if $smarty.section.num.last }>
					</ul>
					<{/if}>
				<{/section}>
			<!-- // 価格で選ぶグループリスト -->
			<!-- カタログギフトの場合 -->
			<{elseif $smarty.get.gid == "2750355"}>
				<div class="catalog-summary-body">
					<div class="catalog-summary-inner">
						<div class="catalog-summary-header">
							<img src="<{$assets}>/img/cataloggift-detail-top-header-pc.png" alt="選べる佐賀牛カタログギフト 5000円 7000円 10000円 14000円">
						</div>
						<!-- SP -->
						<div class="catalog-summary-catch-sp text-center">
							<img src="<{$assets}>/img/neo-catalog-cooking-img-sp-catch.webp" alt="カタログギフトキャッチ画像">
						</div>
						<div class="catalog-summary-cooking-images-sp NotoSerifSB">
							<div class="catalog-summary-cooking-images-sp-block">
								<p>先様が好きな<br>商品を選べます。</p>
								<img src="<{$assets}>/img/neo-catalog-cooking-img-sp-02.webp" alt="焼肉調理イメージ画像">
							</div>
							<div class="catalog-summary-cooking-images-sp-block">
								<p>新鮮佐賀牛を<br>新鮮な状態で<br>お届けします。</p>
								<img src="<{$assets}>/img/neo-catalog-cooking-img-sp-04.webp" alt="すき焼き調理イメージ画像">
							</div>
						</div>
						<div class="catalog-summary-recommend-sp text-center">
							<p class="NotoSerifSB">特別な日のお祝いなどに<br>いかがですか？</p>
							<img class="" src="<{$assets}>/img/neo-catalog-cooking-img-sp-05.webp" alt="ステーキ、焼肉画像">
							<p class="d-flex NotoSerifSB">
								<span class="d-inline-block">※</span>
								<span class="d-inline-block">受取主様が費用を負担いただくことはございません。</span>
							</p>
						</div>
						<!-- //SP -->

						<!-- PC -->
						<div class="catalog-summary-cooking-images px-3 mb-1 d-flex flex-wrap justify-content-between">
							<img src="<{$assets}>/img/neo-catalog-cooking-img-pc-02.webp" alt="焼肉調理イメージ画像">
							<img src="<{$assets}>/img/neo-catalog-cooking-img-pc-03.webp" alt="ステーキ調理イメージ画像">
							<img src="<{$assets}>/img/neo-catalog-cooking-img-pc-04.webp" alt="すき焼き調理イメージ画像">
						</div>
						<div class="catalog-summary-text text-center NotoSerifL mb-1 px-3">
							好きなときに、好きなものを。<br>
							カタログギフトなら先様のご都合に合わせて受取が可能です。<br>
							いつもお世話になっているあの人に、感謝の気持ちと一緒に届けませんか。
						</div>
						<div class="catalog-summary-merits d-flex flex-wrap justify-content-between px-3 mb-2">
							<div class="catalog-summary-merits-circle">
								<p class="catalog-summary-merits-circle-inner">先様の好きな<br>商品が選べる</p>
							</div>
							<div class="catalog-summary-merits-circle">
								<p class="catalog-summary-merits-circle-inner">好きなときに<br>新鮮なまま<br>受け取れる</p>
							</div>
							<div class="catalog-summary-merits-circle">
								<p class="catalog-summary-merits-circle-inner">先様の<br>費用負担ゼロ</p>
							</div>
							<div class="catalog-summary-merits-circle">
								<p class="catalog-summary-merits-circle-inner">熨斗対応<br>可能</p>
							</div>
						</div>
						<div class="catalog-summary-recommend d-flex flex-wrap justify-content-between px-3 mb-2">
							<div class="catalog-summary-recommend-texts NotoSerifSB">
								<p class="mt-1">こんなときにおすすめ！</p>
								<ul class="list-unstyled mx-1 mt-2">
									<li class="d-flex flex-wrap justify-content-first">
										<img src="<{$assets}>/img/neo-catalog-check.svg" alt="チェックボックス">
										<span class="">特別な日のお祝いに</span>
									</li>
									<li class="d-flex flex-wrap justify-content-first">
										<img src="<{$assets}>/img/neo-catalog-check.svg" alt="チェックボックス">
										<span class="">冠婚葬祭に</span>
									</li>
									<li class="d-flex flex-wrap justify-content-first">
										<img src="<{$assets}>/img/neo-catalog-check.svg" alt="チェックボックス">
										<span class="">お中元・お歳暮に</span>
									</li>
									<li class="d-flex flex-wrap justify-content-first">
										<img src="<{$assets}>/img/neo-catalog-check.svg" alt="チェックボックス">
										<span class="">イベントの景品に</span>
									</li>
								</ul>
							</div>
							<div class="catalog-summary-recommend-image">
								<img src="<{$assets}>/img/neo-catalog-cooking-img-pc-05.webp" alt="贈答イメージ画像">
							</div>
						</div>
						<div class="catalog-summary-order">
							<h3 class="catalog-summary-order-title text-center NotoSerifSB">ご注文・ご利用方法</h3>
							<div class="catalog-summary-order-processes d-flex flex-wrap justify-content-between px-2 pb-2 NotoSerifL">
								<div class="catalog-summary-order-processes-block text-center">
									<img class="mb-1" src="<{$assets}>/img/neo-catalog-cooking-img-pc-06.webp" alt="スマホ操作イラスト画像">
									<p class="first-elm"><span>1</span><span>依頼主様</span></p>
									<p class="">本ページより希望のギフトセットを選択。</p>
								</div>
								<div class="catalog-summary-order-processes-block text-center">
									<img class="mb-1" src="<{$assets}>/img/neo-catalog-cooking-img-pc-07.webp" alt="ギフト券イラスト画像">
									<p><span>2</span><span>受取主様</span></p>
									<p class="">ギフト券、申込みハガキの受取。</p>
								</div>
								<div class="catalog-summary-order-processes-block text-center">
									<img class="mb-1" src="<{$assets}>/img/neo-catalog-cooking-img-pc-08.webp" alt="お肉イラスト画像">
									<p><span>3</span><span>受取主様</span></p>
									<p class="">希望の商品の選択・申込み。</p>
								</div>
								<div class="catalog-summary-order-processes-block text-center">
									<img class="mb-1" src="<{$assets}>/img/neo-catalog-cooking-img-pc-09.webp" alt="商品イラスト画像">
									<p><span>4</span><span>受取主様</span></p>
									<p class="">商品の受け取り。</p>
								</div>
							</div>
						</div>
						<!-- //PC -->
					</div>
				</div>
			<!-- //カタログギフトの場合 -->
			<{else}>
				<{section name=num loop=$group}>
					<{if $smarty.section.num.first }>
					<ul class="p-sub-category mb-1 mb-lg-2 d-flex flex-wrap list-unstyled justify-content-start">
					<{/if}>
						<li class="p-sub-category-item text-center d-none" data-id="<{$group[num].id}>">
							<a href="<{$group[num].link_url}>" class="p-sub-category-link d-block text-decoration-none">
								<span class="p-sub-category-name TrajanL"><{$group[num].name}></span>
							</a>
						</li>
					<{if $smarty.section.num.last }>
					</ul>
					<{/if}>
				<{/section}>
			<{/if}>
		<{/if}>

		<!-- 部位説明 -->
		<div class="p-sub-category-description mb-2 mb-lg-1 d-flex justify-content-between flex-column flex-lg-row">
			<{if $smarty.get.gid == "2337960" || $smarty.get.gid == "2337981" || $smarty.get.gid == "2337989" || $smarty.get.gid == "2337999"}>
			<div id="by-part-beef-img" class="col-12 col-lg-5 mb-2 mt-1 mt-lg-0 mb-lg-0 p-sub-category-description-beefimg">
				<i id="by-part-beef-img-star" class="bi bi-star-fill p-sub-category-description-beefstar"></i>
			</div>
			<{/if}>
			<div class="p-sub-category-description-textbox col-12 mb-1 mb-lg-3">
				<{if $smarty.get.cbid == "2543763" || $smarty.get.cbid == "2547504"}>
					<p class="p-sub-category-description-textbox-text NotoSerifL d-inline">
						<{if $smarty.get.csid == "1"}>
						とても柔らかくキメの細かい肉質、口いっばいに広がる肉汁が特徴。1頭の牛からほんのわずかしか取れない希少部位です。
						<{elseif $smarty.get.csid == "2"}>
						赤身の部分は柔らかく、適度に脂のサシが入ってきめ細かな霜降りになっているのが特徴。牛肉の脂の甘みとコクの深い旨味を楽しむには最適の部位。
						<{elseif $smarty.get.csid == "3"}>
						様々な部位のお肉が集まったバラエティパック。使い勝手が良く様々な料理との相性抜群。手ごろな価格で良いお肉を楽しめる。
						<{elseif $smarty.get.csid == "4"}>
						脂身が少なくてヘルシー、弾力があって食べごたえのある部位。しっかりとした歯ごたえを持ち旨味が凝縮されており、お肉本来の味を堪能出来る。
						<{elseif $smarty.get.csid == "5"}>
						とろけるような程よい食感で濃厚な味わいが特徴の霜降り肉。しゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
						<{elseif $smarty.get.csid == "6"}>
						比較的脂身が少ないヘルシーな赤身肉。さっぱりとした味わいが特徴でしゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
						<{/if}>
					</p>
				<{elseif $smarty.get.mode == "grp"}>
				<p class="p-sub-category-description-textbox-text NotoSerifL d-inline">
					<{if $smarty.get.gid == "2337960"}>
					とても柔らかくキメの細かい肉product_list[] = product_listシが入ってきめ細かな霜降りになっているのが特徴。牛肉の脂の甘みとコクの深い旨味を楽しむには最適の部位。
					<{elseif $smarty.get.gid == "2337989"}>
					とろけるような程よい食感で濃厚な味わいが特徴の霜降り肉。しゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
					<{elseif $smarty.get.gid == "2337999"}>
					比較的脂身が少ないヘルシーな赤身肉。さっぱりとした味わいが特徴でしゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
					<{elseif $smarty.get.gid == "2338001"}>
					お肉を食べてスタミナを付けたい！そんな時にはおうちで美味しい焼肉を。ごはんがすすむこと間違いなしです。
					<{elseif $smarty.get.gid == "2338000"}>
					鍋を囲んで家族や友人と素敵な時間を。笑顔が詰まった美味しい鍋を食べて、心も体も温まります。
					<{elseif $smarty.get.gid == "2373403"}>
					いつもより特別な日に。ステーキを食べて自分にも相手にも幸せなひと時を。ちょっぴり贅沢をしたい、そんなときにおすすめです。
					<{elseif $smarty.get.gid == "2337958"}>
					子どもが大好きなものと言えばハンバーグ。好みの焼き方、好みの味付けで更に美味しく。焼くだけ簡単、家族が思わず笑顔になります。
					<{elseif $smarty.get.gid == "2673106"}>
					石丸こだわりのお肉がリーズナブルに楽しめます。気軽に普段使いも出来て、毎日の食卓が華やかに。
					<br>※10,800円(税込)以上のご購入で送料無料でお届けします。
					<{elseif $smarty.get.gid == "2673107"}>
					いつもとは違ったワンランク上の食事を。お祝いやプレゼントでも喜ばれること間違いなしです。
					<br>※10,800円(税込)以上のご購入で送料無料でお届けします。
					<{elseif $smarty.get.gid == "2673108"}>
					お肉の中でも国内トップクラスの品質を誇るこだわりの逸品。選び抜かれた厳選のお肉をご堪能ください。
					<br>※10,800(税込)以上のご購入で送料無料でお届けします。
					<{/if}>
				</p>
				<{/if}>
			</div>
		</div>

	<{/if}>
	<!-- 商品数とソート -->
	<{if $productlist_num != 0}>
	<div class="c-product-sort mb-1 d-flex justify-content-between align-items-end">
		<div class="c-product-sort-total NotoSerifSB fs-16px">
			全<span class="TrajanB"><{$productlist_num}></span>商品
		</div>
		<div class="c-product-sort-switch">
		<select class="c-select-value js-sort-switch NotoSerifL fs-16px border-0">
			<{if $productlist_sort_now != ""}>
			<option value="<{$productlist_sort_def}>">おすすめ順</option></i>
			<{else}>
			<option value="" selected>おすすめ順</option>
			<{/if}>
			<{if $productlist_sort_now != "p"}>
			<option value="<{$productlist_sort_price}>">価格順</option>
			<{else}>
			<option value="" selected>価格順</option>
			<{/if}>
			<{if $productlist_sort_now != "n"}>
			<option value="<{$productlist_sort_new}>">新着順</option>
			<{else}>
			<option value="" selected>新着順</option>
			<{/if}>
		</select>
		</div>
	</div>
	<{/if}>
<!-- product_list-header.tpl ▲ -->
