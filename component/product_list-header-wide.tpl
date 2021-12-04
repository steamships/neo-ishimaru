<!-- if $tpl_name == "product_list" -->
<{if $tpl_name == "product_list"}>
product_list-header-wide
	<{section name=num loop=$category}>
	<{if $smarty.section.num.first }>
	<div class="p-category-main-image">
	<{/if}>
		<{if $bid_name != "" && $smarty.get.cbid == $category[num].bid}>
			<img class="p-category-main-image-img" src="https://img21.shop-pro.jp/PA01437/442/etc/big_category.jpg" alt="カテゴリーIDが<{$category[num].bid}>の画像">
			<{if $smarty.get.cbid == "2543763"}>
			<p class="p-category-main-image-text">日本食肉格付協会の定める牛取引規格の最高の肉質である「5」等級および「4」等級かつ、<br>BMS「No.7」以上を「佐賀牛」と呼びます。
				<br>柔らかい赤身の中にきめ細やかに風味ただよう脂肪が入った見事な霜降り牛肉です。
				<br>ステーキによし、しゃぶしゃぶによし。この甘くてこくのある美味しい肉は、
				<br>佐賀県特有の穏やかな気候と美味しい水、澄み切った空気のたまものです。</p>
			<{elseif $smarty.get.cbid == "2547504"}>
			<p class="p-category-main-image-text">自然豊かな九州で育った黒毛和牛です。味はもちろん、国産で安心・安全さも魅力の一つです！<br>脂が乗りすぎてたくさん食べられないという方に九州産黒毛和牛はおすすめです。</p>
			<{elseif $smarty.get.cbid == "2601547"}>
			<p class="p-category-main-image-text">ハンバーグやローストビーフなどの加工食品をはじめ、希少部位や期間限定のお肉などを随時掲載していきます。まだ、あなたの知らないお肉に出会えるかも…</p>
			<{/if}>
		<{/if}>
	<{if $smarty.section.num.last }>
	</div>
	<{/if}>
	<{/section}>
<{/if}>
