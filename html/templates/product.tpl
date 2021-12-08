<div id="product-explain" class="my-3 lh-lg NotoSerifL">
	<h2 class="fw-bold border-bottom border-primary pb-1 mb-1 fs-4">アイテム詳細</h2>
	<{$product.explain}>
</div>
<{if $review_use_flg}>
<div id="product-review" class="mt-5 NotoSerifL">
	<{if $review_item_num > 0}>
	<h3 class="fw-bold border-bottom border-primary pb-1 mb-1 fs-4"><{$review_item_num}>件のレビュー</h3>
	<div class="row g-1">
		<{section name=num loop=$reviewlist}>
		<div class="col-lg-6">
			<div class="bg-white p-1" style="height: 100%;">

				<!-- スター -->
				<div class="">
					<{section name=star start=0 loop=$review_star_num step=1}>
					<{if $reviewlist[num].star > $smarty.section.star.index}>
					<i class="bi bi-star-fill text-warning"></i>
					<{else}>
					<i class="bi bi-star text-warning"></i>
					<{/if}>
					<{/section}>
				</div>

				<!-- タイトル -->
				<{if $reviewlist[num].title != ""}>
				<div class="fw-bold border-bottom border-primary pb-1 mt-1 fs-6" style="border-bottom-style: dashed !important;">
					<{$reviewlist[num].title}>
				</div>
				<{/if}>

				<!-- レビュー者情報 -->
				<ul class="list-inline small text-secondary lh-lg mt-1">
					<{if $reviewlist[num].nickname != ""}>
					<li class="list-inline-item">
						<{$reviewlist[num].nickname}>
					</li>
						<{/if}>
					<{if $reviewlist[num].nendai != ""}>
					<li class="list-inline-item">
						<{$reviewlist[num].nendai}>
					</li>
					<{/if}>
					<{if $reviewlist[num].sex != ""}>
					<li class="list-inline-item">
						<{$reviewlist[num].sex}>
					</li>
					<{/if}>
					<li class="list-inline-item"><{$reviewlist[num].date}></li>
				</ul>

				<!-- 本文 -->
				<div class="mt-1">
					<{$reviewlist[num].comment}>
				</div>

				<!-- 画像 -->
				<{if $reviewlist[num].img_url != ""}>
				<div class="mt-1">
					<img src="<{$reviewlist[num].img_url}>" />
				</div>
				<{/if}>

				<!-- ショップからの返信コメント-->
				<{if $reviewlist[num].res_date != ""}>
				<div class="mt-1">
					<div class="fw-bold mt-1 fs-6">
						ショップからのコメント
					</div>
					<div class="mt-1">
						<{$reviewlist[num].res_comment}>
					</div>
					<div class="small text-secondary mt-1">
						<{$reviewlist[num].res_date}>
					</div>
				</div>
				<{/if}>
			</div><!-- /.bg-white -->
		</div>
		<{/section}>
	</div><!-- /.row -->
	<{else}>
	<h3 class="fw-bold border-bottom border-primary pb-1 mb-1 fs-4">レビュー</h3>
	<p>まだレビューはありません</p>
	<{/if}>

	<div id="product-review-write" class="d-flex justify-content-center">
		<a href="<{$review_send_url}>" class="btn btn-primary btn-lg py-1 px-3 my-3">レビューを書く</a>
	</div>
</div><!-- /.p-product-review -->
<{/if}>
