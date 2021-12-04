<!-- インフォメーション -->
<article id="info">
	<h3 class="TrajanB mb-1">INFORMATION<span class="NotoSerifL fs-6 ms-1">お知らせ</span></h3>
	<div class="row position-relative">
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
	</div>
	<a class="d-flex ms-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more" href="#" role="button">more</a>
</article>
<!-- / インフォメーション -->
