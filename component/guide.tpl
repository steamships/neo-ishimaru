<div id="guide">
	<section class="guide-container mb-3 mb-lg-8">
		<div class=" text-center mb-1 mb-lg-2 py-1">
			<h2 class="guide-title TrajanB fs-26px py-1 d-inline-block position-relative">配送・送料について</h2>
		</div>
		<div class="guide-contents">
		<{section name=num loop=$sk_delivery}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
				<{$sk_delivery[num].name}>
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
				<{if $sk_delivery[num].img_url != "" }>
				<div>
				<img src="<{$sk_delivery[num].img_url}>" />
				</div>
				<{/if}>
				<p><{$sk_delivery[num].other}></p>
			</div>
		<{/section}>
		</div>
	</section>

	<section class="guide-container mb-3 mb-lg-8">
		<div class=" text-center mb-1 mb-lg-2 py-1">
			<h2 class="guide-title TrajanB fs-26px py-1 d-inline-block position-relative">支払い方法について</h2>
		</div>
		<div class="guide-contents">
			<{section name=num loop=$sk_payment}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			<{$sk_payment[num].name}>
			</h3>
			<{if $sk_payment[num].card_img != "" }>
			<div  class="guide-cardImg">
			<{$sk_payment[num].card_img}><br />
			</div>
			<{/if}>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$sk_payment[num].other}>
			</div>
			<{/section}>
		</div>
	</section>

	<section class="guide-container mb-3 mb-lg-8">
		<div class=" text-center mb-1 mb-lg-2 py-1">
			<h2 class="guide-title TrajanB fs-26px py-1 d-inline-block position-relative">返品について</h2>
		</div>
		<div class="guide-contents">
			<{if $shop.bad_product != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			不良品
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.bad_product}>
			</div>
			<{/if}>
			<{if $shop.return_limit != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			返品期限
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.return_limit}>
			</div>
			<{/if}>
			<{if $shop.return_price != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			返品送料
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.return_price}>
			</div>
			<{/if}>
		</div>
	</section>

	<section class="guide-container mb-3 mb-lg-8">
		<div class=" text-center mb-1 mb-lg-2 py-1">
			<h2 class="guide-title TrajanB fs-26px py-1 d-inline-block position-relative">特定商取引法に基づく表記</h2>
		</div>
		<div class="guide-contents">
			<{if $shop.shop_name != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			販売業者
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.shop_name}>
			</div>
			<{/if}>
			<{if $shop.manager_name != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			運営統括責任者名
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.manager_name}>
			</div>
			<{/if}>
			<{if $shop.postal != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			郵便番号
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.postal}>
			</div>
			<{/if}>
			<{if $shop.address != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			住所
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.address}>
			</div>
			<{/if}>
			<{if $shop.price != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			商品代金以外の料金の説明
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.price}>
			</div>
			<{/if}>
			<{if $shop.apply_limit != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			申込有効期限
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.apply_limit}>
			</div>
			<{/if}>
			<{if $shop.sales_num != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			販売数量
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.sales_num}>
			</div>
			<{/if}>
			<{if $shop.delivery_time != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			引渡し時期
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.delivery_time}>
			</div>
			<{/if}>
			<{if $shop.payment_way != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			お支払い方法
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.payment_way}>
			</div>
			<{/if}>
			<{if $shop.payment_limit != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			お支払い期限
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.payment_limit}>
			</div>
			<{/if}>
			<{if $shop.license != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			資格・免許
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.license}>
			</div>
			<{/if}>
			<{if $shop.service_name != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			サービス名
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.service_name}>
			</div>
			<{/if}>
			<{if $shop.tel != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			電話番号
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.tel}>
			</div>
			<{/if}>
			<{if $shop.email != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			公開メールアドレス
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.email}>
			</div>
			<{/if}>
			<{if $shop.hp_address != ""}>
			<h3 class="guide-label NotoSerifSB fs-20px mb-1">
			ホームページアドレス
			</h3>
			<div class="guide-content mb-2 mb-lg-3 NotoSerifL">
			<{$shop.hp_address}>
			</div>
			<{/if}>
		</div>
	</section>
</div>
