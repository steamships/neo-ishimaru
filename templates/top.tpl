<div class="carousel-width">
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
</div>
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
<{* サイドバー *}>
<div id="sidebar">
	<{* PC *}>
	<div class="d-none d-md-block mt-8">
		<ul class="nav nav-pills flex-column mb-auto">
			<{* お届け目安 *}>
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				お届け目安
			</li>
			<li class="NotoSerifL fs-16px">
				<p>通常商品の場合 (予約商品を除く)</p>
				<p>ただいまご注文いただいた場合の発送日</p>
			</li>
			<li class="mt-1 mb-2"><span class="TrajanB fs-26px">
					<{$smarty.now|date_format:'%Y-%m-%d'}>
				</span><span class="NotoSerifL fs-16px">
					<{$smarty.now|date_format:'(%a)'}>
				</span></li>
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				お電話でのお問い合わせ・ご注文
			</li>
			<{* TEL *}>
			<li>
				<a href="tel:0956-85-7777" class="nav-link TrajanB fs-26px p-0">
					<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-tel.png?cmsp_timestamp=20211129193648"
						alt="">
					<span class="align-text-bottom">0956-85-7777</span>
				</a>
			</li>
			<li class="NotoSerifL fs-16px ms-2 mb-2">受付 9:00～18：00 (木曜定休)</li>
			<{* FAX *}>
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				FAXでのお問い合わせ・ご注文
			</li>
			<li>
				<a href="tel:0956-85-7777" class="nav-link TrajanB fs-26px p-0">
					<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-fax.png?cmsp_timestamp=20211129195111"
						alt="" width="30" height="30">
					<span class="align-text-bottom">0956-85-7777</span>
				</a>
			</li>
			<li class="NotoSerifL fs-18px mt-1 mb-2">
				<a class="w-100 px-0 py-1 btn btn-outline-secondary" href="#" role="button">
					<div class="d-flex justify-content-between align-items-center ps-2 ls-1 chevron-right">
						FAX用紙ダウンロード
					</div>
				</a>
			</li>
			<{* MAIL *}>
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				メールでのお問い合わせ・ご注文
			</li>
			<li>
				<a class=""
					href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.102523969.1504273749.1638167996-747911806.1637750824">
					<div class="d-flex justify-content-start align-items-center chevron-right">
						<div>
							<img class="pe-1"
								src="https://img07.shop-pro.jp/PA01437/442/etc/neo-mail.png?cmsp_timestamp=20211129201304"
								alt="">
						</div>
						<div class="me-auto NotoSerifSB fs-16px">
							<div class="NotoSerifSB fs-16px">メールでの</div>
							お問い合わせ・ご注文
						</div>
					</div>
				</a>
			</li>
			<{* プレゼント *}>
			<li>
				<a href="">
					<img class="pt-2"
						src="https://img07.shop-pro.jp/PA01437/442/etc/neo-point-pc.png?cmsp_timestamp=20211129202928"
						alt="" width="321">
				</a>
			</li>
			<{* お役様の声 *}>
			<li class="mt-2">
				<div class="bb-1 mx-auto pb-1">
					<a class=""
						href="https://ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.102523969.1504273749.1638167996-747911806.1637750824">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								お役様の声
							</div>
						</div>
					</a>
				</div>
			</li>
			<{* 会員登録 *}>
			<li>
				<div class="bb-1 mx-auto pb-1">
					<a class="" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								ISHIMARU会員登録
							</div>
						</div>
					</a>
				</div>
			</li>
			<{* メルマガ *}>
			<li>
				<div class="bb-1 mx-auto pb-1">
					<a class="" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								<div class="NotoSerifL fs-16px ls-1">\お得な情報がいっぱい！/</div>
								メルマガ会員募集中
							</div>
						</div>
					</a>
				</div>
			</li>
			<{* ご利用ガイド *}>
			<li>
				<div class="w-95 mx-auto pb-1">
					<a class="" href="https://www.saga-ishimaru.co.jp/?mode=sk">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								ご利用ガイド
							</div>
						</div>
					</a>
				</div>
			</li>
			<{* ギフト *}>
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				<span class="TrajanB fs-18px ls-1">GIFT SERVICE</span> ギフトについて
			</li>
			<li class="NotoSerifSB ls-1">
				<div class="row gift align-items-center">
					<div class="col-5">
						<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
							alt="">
					</div>
					<div class="col-7 ps-0">
						<div class="bb-d pb-1">
							<div>想いを寄せて、</div>
							<div>大切な人に。</div>
						</div>
						<div class="pt-1">
							熨斗無料対応◎
						</div>
					</div>
				</div>
			</li>
			<{* about *}>
			<li>
				<a href="">
					<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-about-pc.png?cmsp_timestamp=20211130183540"
						alt="">
				</a>
			</li>
			<{* SNS *}>
			<li>
				<div class="d-flex justify-content-end pt-2">
					<a href="https://www.instagram.com/suguru_ishimaru/" target="_blank" class="btn btn-link pe-0 instagram fs-5">
					</a>
					<a href="https://www.facebook.com/ishimaru.meet/" target="_blank" class="btn btn-link pe-0 facebook fs-5">
					</a>
				</div>
			</li>
			<{* ポータル *}>
			<li class="mt-2 mb-1 h-55px">
				<div class="d-flex justify-content-center align-items-center text-center NotoSerifSB fs-20px ls-1">
					<div class="pe-2">\</div>
					<div>ふるさと納税からも<br>お申し込みいただけます</div>
					<div class="ps-2">/</div>
				</div>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary"
					href="https://www.rakuten.ne.jp/gold/f413275-yoshinogari/#/" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						楽天ふるさと納税
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary"
					href="https://www.furusato-tax.jp/city/product/41327" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ふるさとチョイス
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary"
					href="https://furunavi.jp/Municipal/Product/Search?municipalid=1539" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ふるなび
					</div>
				</a>
			</li>
		</ul>
	</div>
	<{* // PC *}>

	<{* SP *}>
	<div class="d-md-none">
		<{* about *}>
		<a href="">
			<img class="mx-auto d-block mt-4 mb-2"
				src="https://img07.shop-pro.jp/PA01437/442/etc/neo-about-pc.png?cmsp_timestamp=20211130183540" alt=""
				width="335">
		</a>
		<{* プレゼント *}>
		<a href="">
			<img class="w-100 d-block mt-4 mb-2"
				src="https://img07.shop-pro.jp/PA01437/442/etc/neo-point-pc.png?cmsp_timestamp=20211129202928" alt="">
		</a>
		<{* 3列*}>
		<div class="NotoSerifSB fs-20px ls-1 text-center">
			<{* 会員登録 *}>
			<div class="bb-1 mx-auto py-2">
				<a class="" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
					<div class="me-auto chevron-right">
						ISHIMARU会員登録
					</div>
				</a>
			</div>
			<{* メルマガ *}>
			<div class="bb-1 mx-auto py-1">
				<a class="" href="https://members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
					<div class="me-auto chevron-right">
						<div class="NotoSerifL fs-16px">\お得な情報がいっぱい！/</div>
						メルマガ会員募集中
					</div>
				</a>
			</div>
			<{* ご利用ガイド *}>
			<div class="bb-1 mx-auto py-2">
				<a class="" href="https://www.saga-ishimaru.co.jp/?mode=sk">
					<div class="me-auto chevron-right"></div>
					ご利用ガイド
				</a>
			</div>
		</div>
		<{* // 3列*}>
		<{* ポータル *}>
		<div class="mt-3 mb-1">
			<div class="d-flex justify-content-center align-items-center text-center NotoSerifSB fs-20px ls-1">
				<div class="pe-2">\</div>
				<div>ふるさと納税からも<br>お申し込みいただけます</div>
				<div class="ps-2">/</div>
			</div>
		</div>
		<div class="w-75 mx-auto NotoSerifL fs-18px">
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary"
				href="https://www.rakuten.ne.jp/gold/f413275-yoshinogari/#/" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					楽天ふるさと納税
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" href="https://www.furusato-tax.jp/city/product/41327"
				role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					ふるさとチョイス
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary"
				href="https://furunavi.jp/Municipal/Product/Search?municipalid=1539" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					ふるなび
				</div>
			</a>
		</div>
		<{* ギフト *}>
		<div class="NotoSerifSB fs-18px ls-1 text-center mt-2 gift-sp">
			想いを寄せて、大切な人に。
		</div>
		<div class="d-flex justify-content-evenly align-items-center ls-1 pt-1 px-4">
			<div>
				<img src="https://img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
					alt="">
			</div>
			<div class="NotoSerifL fs-31px ls-1">
				<div class="">熨斗</div>
				<div class="">無料対応◎</div>
			</div>
		</div>
	</div>
</div>
<{* // サイドバー *}>
