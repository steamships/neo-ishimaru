<div class="c-section p-layout-container">
	<h2 id="delivery" class="c-section__heading">
	  <div class="c-section__heading--title">
		<span>配送・送料について</span>
	  </div>
	</h2>
	<div class="c-section__container">
	  <{section name=num loop=$sk_delivery}>
	  <h3 class="c-section__label">
		<{$sk_delivery[num].name}>
	  </h3>
	  <div class="c-section__content">
		<{if $sk_delivery[num].img_url != "" }>
		<div>
		  <img src="<{$sk_delivery[num].img_url}>" />
		</div>
		<{/if}>
		<p><{$sk_delivery[num].other}></p>
	  </div>
	  <{/section}>
	</div>
  </div>

  <div class="c-section p-layout-container">
	<h2 id="payment" class="c-section__heading">
	  <div class="c-section__heading--title">
		<span>支払い方法について</span>
	  </div>
	</h2>

	<div class="c-section__container">
	  <{section name=num loop=$sk_payment}>
	  <h3 class="c-section__label">
		<{$sk_payment[num].name}>
	  </h3>
	  <div class="c-section__content">
		<{if $sk_payment[num].img_url != "" }>
		<img src="<{$sk_payment[num].img_url}>" /><br />
		<{/if}>
		<{if $sk_payment[num].card_img != "" }>
		<{$sk_payment[num].card_img}><br />
		<{/if}>
		<{$sk_payment[num].other}>
	  </div>
	  <{/section}>
	</div>
  </div>

  <div class="c-section p-layout-container">
	<h2 id="return" class="c-section__heading">
	  <div class="c-section__heading--title">
		<span>返品について</span>
	  </div>
	</h2>
	<div class="c-section__container">
	  <{if $shop.bad_product != ""}>
	  <h3 class="c-section__label">
		不良品
	  </h3>
	  <div class="c-section__content">
		<{$shop.bad_product}>
	  </div>
	  <{/if}>
	  <{if $shop.return_limit != ""}>
	  <h3 class="c-section__label">
		返品期限
	  </h3>
	  <div class="c-section__content">
		<{$shop.return_limit}>
	  </div>
	  <{/if}>
	  <{if $shop.return_price != ""}>
	  <h3 class="c-section__label">
		返品送料
	  </h3>
	  <div class="c-section__content">
		<{$shop.return_price}>
	  </div>
	  <{/if}>
	</div>
  </div>

  <div class="c-section p-layout-container">
	<h2 id="info" class="c-section__heading">
	  <div class="c-section__heading--title">
		<span>特定商取引法に基づく表記</span>
	  </div>
	</h2>

	<div class="c-section__container">
	  <{if $shop.shop_name != ""}>
	  <h3 class="c-section__label">
		販売業者
	  </h3>
	  <div class="c-section__content">
		<{$shop.shop_name}>
	  </div>
	  <{/if}>
	  <{if $shop.manager_name != ""}>
	  <h3 class="c-section__label">
		運営統括責任者名
	  </h3>
	  <div class="c-section__content">
		<{$shop.manager_name}>
	  </div>
	  <{/if}>
	  <{if $shop.postal != ""}>
	  <h3 class="c-section__label">
		郵便番号
	  </h3>
	  <div class="c-section__content">
		<{$shop.postal}>
	  </div>
	  <{/if}>
	  <{if $shop.address != ""}>
	  <h3 class="c-section__label">
		住所
	  </h3>
	  <div class="c-section__content">
		<{$shop.address}>
	  </div>
	  <{/if}>
	  <{if $shop.price != ""}>
	  <h3 class="c-section__label">
		商品代金以外の料金の説明
	  </h3>
	  <div class="c-section__content">
		<{$shop.price}>
	  </div>
	  <{/if}>
	  <{if $shop.apply_limit != ""}>
	  <h3 class="c-section__label">
		申込有効期限
	  </h3>
	  <div class="c-section__content">
		<{$shop.apply_limit}>
	  </div>
	  <{/if}>
	  <{if $shop.sales_num != ""}>
	  <h3 class="c-section__label">
		販売数量
	  </h3>
	  <div class="c-section__content">
		<{$shop.sales_num}>
	  </div>
	  <{/if}>
	  <{if $shop.delivery_time != ""}>
	  <h3 class="c-section__label">
		引渡し時期
	  </h3>
	  <div class="c-section__content">
		<{$shop.delivery_time}>
	  </div>
	  <{/if}>
	  <{if $shop.payment_way != ""}>
	  <h3 class="c-section__label">
		お支払い方法
	  </h3>
	  <div class="c-section__content">
		<{$shop.payment_way}>
	  </div>
	  <{/if}>
	  <{if $shop.payment_limit != ""}>
	  <h3 class="c-section__label">
		お支払い期限
	  </h3>
	  <div class="c-section__content">
		<{$shop.payment_limit}>
	  </div>
	  <{/if}>
	  <{if $shop.license != ""}>
	  <h3 class="c-section__label">
		資格・免許
	  </h3>
	  <div class="c-section__content">
		<{$shop.license}>
	  </div>
	  <{/if}>
	  <{if $shop.service_name != ""}>
	  <h3 class="c-section__label">
		サービス名
	  </h3>
	  <div class="c-section__content">
		<{$shop.service_name}>
	  </div>
	  <{/if}>
	  <{if $shop.tel != ""}>
	  <h3 class="c-section__label">
		電話番号
	  </h3>
	  <div class="c-section__content">
		<{$shop.tel}>
	  </div>
	  <{/if}>
	  <{if $shop.email != ""}>
	  <h3 class="c-section__label">
		公開メールアドレス
	  </h3>
	  <div class="c-section__content">
		<{$shop.email}>
	  </div>
	  <{/if}>
	  <{if $shop.hp_address != ""}>
	  <h3 class="c-section__label">
		ホームページアドレス
	  </h3>
	  <div class="c-section__content">
		<{$shop.hp_address}>
	  </div>
	  <{/if}>
	</div>
  </div>
