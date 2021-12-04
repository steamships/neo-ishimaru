<!-- product_list-header.tpl ▼ -->
<section id="product_list-header" class="mb-3 mb-lg-8">
	<!-- <{if $subcategory_num != 0}>
	<ul class="p-sub-category list-unstyled d-flex flex-nowrap">
		<{section name=num loop=$sub_category}>
		<li class="p-sub-category-item w-100 text-center">
			<a href="<{$sub_category[num].link_url}>" class="p-sub-category-link text-decoration-none">
				<span class="p-sub-category-name TrajanL"><{$sub_category[num].name}></span>
			</a>
		</li>
		<{/section}>
	</ul>
	<{/if}> -->

	<{if $subgroup_num != 0}>
	<ul class="p-sub-category list-unstyled d-flex flex-nowrap">
	<{section name=num loop=$sub_group}>
		<li class="p-sub-category-item w-100 text-center d-inline-block">
			<a href="<{$sub_group[num].link_url}>" class="p-sub-category-link text-decoration-none">
				<span class="p-sub-category-name TrajanL"><{$sub_group[num].name}></span>
			</a>
		</li>
	<{/section}>
	</ul>
	<{/if}>

	<!-- カテゴリー(大)及び(小) フリースペース 1 -->
	<!-- <{if $category_desc_1}>
	<div class="category_freespace_01"><{$category_desc_1}></div>
	<{/if}>

	<{if $subcategory_desc_1}>
	<div class="subcategory_freespace_01"><{$subcategory_desc_1}></div>
	<{/if}> -->
	<!-- // カテゴリー(大)及び(小) フリースペース 1 -->

	<{if $productlist_num != 0}>
	<div class="c-product-sort mb-lg-1 d-flex justify-content-between">
		<div class="c-product-sort-total TrajanB fs-16px">
			全<span><{$productlist_num}></span>商品
		</div>
		<div class="c-product-sort-switch">
		<select class="c-select-value js-sort-switch NotoSerifL fs-16px border-0">
			<{if $productlist_sort_now != ""}>
			<option value="<{$productlist_sort_def}>">おすすめ順</option><i class="bi bi-chevron-down"></i>
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
