<{if $tpl_name == "top"}>
<{* wrapper *}>
<div class="wrapper">
	<{* スライド *}>
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="shadow active"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="shadow"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-slide-1-pc.png?cmsp_timestamp=20211129154120" class="d-none d-md-block w-100" alt="黒毛和牛">
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-slide-1-sp.jpg?cmsp_timestamp=20211129172030" class="d-md-none d-block w-100" alt="黒毛和牛">
			</div>
			<div class="carousel-item">
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-slide-1-pc.png?cmsp_timestamp=20211129154120" class="d-none d-md-block w-100" alt="黒毛和牛">
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-slide-1-sp.jpg?cmsp_timestamp=20211129172030" class="d-md-none d-block w-100" alt="黒毛和牛">
			</div>
			<div class="carousel-item">
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-slide-1-pc.png?cmsp_timestamp=20211129154120" class="d-none d-md-block w-100" alt="黒毛和牛">
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-slide-1-sp.jpg?cmsp_timestamp=20211129172030" class="d-md-none d-block w-100" alt="黒毛和牛">
			</div>
		</div>
	</div>
	<{* // スライド *}>

	<{* メイン *}>
	<main class="d-flex justify-content-between mt-8">
<!-- <{* 普通の変数 *}>
	<p>
		<{$hello}>
	</p>

	<p>
		<{$today}>
	</p>

	<{* 予約変数 *}>
		<dl>
			<dt>現在のタイムスタンプ
			<dd>
				<{$smarty.now}>

			<dt>現在のタイムスタンプに日数追加
			<dd>現在注文すると<{(($smarty.now)+24*60*60*3)|date_format:'%Y年%m月%d日'}>までに発送。

			<dt>現在処理中のテンプレートファイル名
			<dd>
				<{$smarty.template}>

			<dt>Smarty version
			<dd>
				<{$smarty.version}>

					<{foreach from=$category item=big_cate name=key}>
						<{if $sub_category[$big_cate.bid] !="" }>
							<li>
								<a class="gnav_open">
									<{$big_cate.name}>
								</a>
								<ul class="nav_hidden">
									<{foreach from=$sub_category[$big_cate.bid] item=sub_cate name=key}>
										<li>
											<a href="<{$sub_cate.link_url}>">
												<{$sub_cate.name}>
											</a>
										</li>
										<{/foreach}> </ul> </li> <{else}>
											<li>
												<a href="<{$big_cate.link_url}>">
													<{$big_cate.name}>
												</a>
											</li>
											<{/if}> <{/foreach}> <dl>

												<{* 配列を逆順でループ(step=-1だから) *}>
													<ul>
														<{section name=i loop=$animal step=-1}>
															<li>
																<{$animal[i]}>
																	<{/section}> </ul> <a href="./?p=cate">商品一覧</a> -->
<{/if}>
