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
		<{section name=num loop=$productlist}>
			<!-- 商品リスト -->
		<{/section}>
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

