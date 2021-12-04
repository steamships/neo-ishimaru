<!-- product_list-header.tpl ▼ -->
<section id="product_list-header" class="mb-3 mb-lg-8">
	<{if $bid_name != ""}>
	<{if $subcategory_num != 0}>
	<ul class="p-sub-category mb-2 list-unstyled">
		<{section name=num loop=$sub_category}>
		<li class="p-sub-category-item text-center d-inline-block"">
			<a href="<{$sub_category[num].link_url}>" class="p-sub-category-link text-decoration-none">
				<span class="p-sub-category-name TrajanL"><{$sub_category[num].name}></span>
			</a>
		</li>
		<{/section}>
	</ul>
	<{/if}>
	<{/if}>

	<{if $subgroup_num != 0}>
	<ul class="p-sub-category mb-2 list-unstyled">
	<{section name=num loop=$sub_group}>
		<li class="p-sub-category-item text-center d-inline-block">
			<a href="<{$sub_group[num].link_url}>" class="p-sub-category-link text-decoration-none">
				<span class="p-sub-category-name TrajanL"><{$sub_group[num].name}></span>
			</a>
		</li>
	<{/section}>
	</ul>
	<{/if}>


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
