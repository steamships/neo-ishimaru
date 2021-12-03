<{*商品一覧テンプレート*}>

<{if $subcategory_num != 0}>
<ul class="p-sub-category list-unstyled">
	<{section name=num loop=$sub_category}>
	<li class="p-sub-category-item">
		<a href="<{$sub_category[num].link_url}>" class="p-sub-category-link">
			<span class="p-sub-category-name"><{$sub_category[num].name}></span>
		</a>
	</li>
	<{/section}>
</ul>
<{/if}>
<{if $productlist_num != 0}>

<{if $subgroup_num != 0}>
<ul class="p-sub-category list-unstyled">
<{section name=num loop=$sub_group}>
	<li class="p-sub-category-item">
		<a href="<{$sub_group[num].link_url}>" class="p-sub-category-link">
			<span class="p-sub-category-name"><{$sub_group[num].name}></span>
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

<!-- 商品数とソート -->
<div class="c-product-sort d-flex justify-content-between">
	<div class="c-product-sort-total">
		全<span><{$productlist_num}></span>商品
	</div>
	<div class="c-product-sort-switch">
	<select class="c-select-value js-sort-switch">
		<{if $productlist_sort_now != ""}>
		<option value="<{$productlist_sort_def}>">おすすめ順</option>
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
<!-- // 商品数とソート -->

<div class="row">
	<{foreach from=$productlist item=v}>
	<a href="<{$v.link_url}>" class="d-block col-lg-4 text-decoration-none">
		<p><img src="<{$v.img_url}>" class="img-fluid"></p>
		<p><{$v.name}></p>
	</a>
	<{/foreach}>
</div><!-- /.row -->
