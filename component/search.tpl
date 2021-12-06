<!-- search.tpl ▼ -->
<ul class="search_result list-inline">
	<li>【検索結果】 / </li>
	<li>
	カテゴリ：
	<{if $search_category!=""}>
		<{$search_category}>
	<{else}>
		指定なし
	<{/if}>
	</li>
	<li>
	キーワード：
	<{if $search_keyword!=""}>
		<{$search_keyword}>
	<{else}>
		指定なし
	<{/if}>
	</li>
</ul>
<div id="search">
	<{if $productlist_num != 0}>
	<ul class="search_result">
		<!-- 検索キーワードなど -->
	</ul>
	<div class="list_pager">
		<ol class="breadcrumb"></ol>
	</div>
	<!-- pager -->
	<div class="main_lists content_panel">
		<div id="product_list" class="row">
			<{foreach from=$productlist item=v}>
			<a href="<{$v.link_url}>" class="d-block col-6 col-lg-4 text-decoration-none product_list-item mb-1">
				<p><img src="<{$v.img_url}>" class="img-fluid product_list-item-img mb-1"></p>
				<p class="product_list-item-name NotoSerifSB fs-20px"><{$v.name}></p>
				<p class="product_list-item-price NotoSerifSB fs-20px"><span class="fs-26px"><{$v.price}></span></p>
			</a>
			<{/foreach}>
		</div><!-- /.row -->
	</div>
	<div class="list_pager">
	</div>
	<{else}>
		<{if $subcategory_num == 0 && $subgroup_num == 0}>
		<p class="prd_lst_none">該当する商品がありません</p>
		<{/if}>
	<{/if}>
</div>
<!-- search.tpl ▲ -->

