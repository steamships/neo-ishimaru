<!-- ランキング -->
<article id="ranking">
	<h3 class="TrajanB mb-1">RANKING<span class="NotoSerifL fs-6 ms-1">ランキング</span></h3>
	<div class="row position-relative">
		<{if $seller_num !=0}>
			<{foreach name=ranking from=$seller item=v}>
				<{if $smarty.foreach.ranking.index < 4}>
					<div class="col-6 col-lg-3 mb-1">
						<span class="position-absolute start-1 badge rank-<{$smarty.foreach.ranking.iteration}> TrajanB fs-6 ">
							<{$smarty.foreach.ranking.iteration}>
						</span>
						<a href="<{$v.link_url}>">
							<img src="<{$v.img_url}>">
						</a>
						<div class="NotoSerifL fs-18px name"><{$v.name}></div>
						<!-- 値段の表記一旦コメントアウト -->
						<!-- <div class="TrajanB fs-31px"><span class="fs-20px">￥</span><{$v.price}><span class="NotoSerifL fs-16px">(税込)</span></div> -->
						<div class="TrajanB fs-31px"><{$v.price}></div>
					</div>
				<{/if}>
			<{/foreach}>
		<{/if}>
	</div>
	<!-- 一旦moreコメントアウト -->
	<!-- <a class="d-flex ms-auto justify-content-center align-items-center btn btn-primary NotoSerifL fs-16px ls-1 chevron-right more" href="#" role="button">more</a> -->
</article>
<!-- / ランキング -->
