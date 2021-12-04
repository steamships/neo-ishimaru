<!-- product_list-header-wide.tpl ▼ -->
<{if $tpl_name == "product_list"}>
	<{section name=num loop=$category}>
	<{if $smarty.section.num.first }>
	<div id="product_list-header-wide" class="p-category-main-image">
	<{/if}>
	<{if $bid_name != "" && $smarty.get.cbid == $category[num].bid}>
			<!-- <{$category[num].name}>の商品一覧ページ -->
			<img class="p-category-main-image-img mb-3 d-none d-lg-block" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-category-img-<{$smarty.get.cbid}>.jpg" alt="<{$category[num].name}>カテゴリーPC用画像">
			<img class="p-category-main-image-img mb-2 d-block d-lg-none" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-category-img-<{$smarty.get.cbid}>-sp.jpg" alt="<{$category[num].name}>カテゴリーSP用画像">
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
			<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">ハンバーグやローストビーフなどの加工食品をはじめ、希少部位や期間限定のお肉などを随時掲載していきます。まだ、あなたの知らないお肉に出会えるかも…</p>
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
		<img class="p-category-main-image-img mb-3 d-none d-lg-block" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-category-img-<{$smarty.get.gid}>.jpg" alt="<{$group[num].name}>グループPC用画像">
		<img class="p-category-main-image-img mb-2 d-block d-lg-none" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-category-img-<{$smarty.get.gid}>-sp.jpg" alt="<{$group[num].name}>グループSP用画像">
		<!-- <{$group[num].name}>の説明文 -->
		<{if $smarty.get.gid == "2483504"}>
		<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">
			「もらったら思わず笑顔になる。そんな逸品を贈りたい」
			<br>お歳暮はいつもお世話になっている大切な方へ、感謝の気持ちを伝える大切な贈り物です。
			<br>石丸食肉の「お歳暮特集」では、選りすぐりの特選佐賀牛を特別特価でご提供致します。
			<br>昨年大好評をいただき、たくさんのお申し込みをいただきました。
			<br>個数が限られているので、お早めにお申込みください。
		</p>
		<{elseif $smarty.get.gid == "2483504"}>
		<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">自然豊かな九州で育った黒毛和牛です。味はもちろん、国産で安心・安全さも魅力の一つです！<br>脂が乗りすぎてたくさん食べられないという方に九州産黒毛和牛はおすすめです。</p>
		<{elseif $smarty.get.gid == "2483504"}>
		<p class="p-category-main-image-text mb-2 mb-lg-3 TrajanSB text-left text-lg-center">ハンバーグやローストビーフなどの加工食品をはじめ、希少部位や期間限定のお肉などを随時掲載していきます。まだ、あなたの知らないお肉に出会えるかも…</p>
		<{/if}>
		<{/if}>
	<{if $smarty.section.num.last }>
	</div>
	<{/if}>
	<{/section}>
<{/if}>
<!-- product_list-header-wide.tpl ▲ -->
