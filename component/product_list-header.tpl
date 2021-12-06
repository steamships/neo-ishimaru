<!-- product_list-header.tpl ▼ -->
<section id="product_list-header" class="mb-3 mb-lg-8">
	<{if $smarty.get.mode == "cate" && $subcategory_num != 0}>
	<ul class="p-sub-category mb-1 mb-lg-2 list-unstyled">
		<{section name=num loop=$sub_category}>
		<li class="p-sub-category-item text-center d-inline-block"">
			<a href="<{$sub_category[num].link_url}>" class="p-sub-category-link text-decoration-none">
				<span class="p-sub-category-name TrajanL"><{$sub_category[num].name}></span>
			</a>
		</li>
		<{/section}>
	</ul>
	<{/if}>

	<{if $smarty.get.mode == "grp" && $subgroup_num != 0}>
	<ul class="p-sub-category mb-1 mb-lg-2 list-unstyled">
	<{section name=num loop=$sub_group}>
		<li class="p-sub-category-item text-center d-inline-block">
			<a href="<{$sub_group[num].link_url}>" class="p-sub-category-link text-decoration-none">
				<span class="p-sub-category-name TrajanL"><{$sub_group[num].name}></span>
			</a>
		</li>
	<{/section}>
	</ul>
	<{/if}>

	<div class="p-sub-category-description mb-2 mb-lg-1 d-flex justify-content-between flex-column flex-lg-row">
		<img class="p-sub-category-description-img col-12 col-lg-5 mb-2 mb-lg-0" src="https://img07.shop-pro.jp/PA01437/442/etc/neo-fillet.png" alt="牛の部位">
		<div class="p-sub-category-description-textbox col-12 col-lg-7 pl-1">
			<p class="p-sub-category-description-textbox-catch TrajanB fs-26px">1頭から2%しかとれない希少部位。</p>
			<p class="p-sub-category-description-textbox-text TrajanL d-inline">とても柔らかくキメの細かい肉質、口いっばいに広がる肉汁が特徴。1頭の牛からほんのわずかしか取れない希少部位です。</p>
		</div>
	</div>


	<{if $productlist_num != 0}>
	<div class="c-product-sort mb-1 d-flex justify-content-between align-items-end">
		<div class="c-product-sort-total TrajanB fs-16px">
			全<span><{$productlist_num}></span>商品
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
