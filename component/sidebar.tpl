<!-- sidebar.tpl ▼ -->
<{if $tpl_name == "free1" || $tpl_name == "free3" || $tpl_name == "free6"}>
<{else}>
<nav id="sidebar" class="col-lg-3">
	<!-- PC -->
	<div class="d-none d-lg-block">
		<ul class="nav nav-pills flex-column mb-auto">
			<!-- 年末年始の発送日の目安 -->
			<!--<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				年末年始のお知らせ
			</li>-->
			<!--<li class="NotoSerifL fs-16px">
				<p class="mb-1">年末年始休み：12月30日～1月5日</p>-->
				<!--<p>ご注文いただいた場合の発送日</p>-->
			<!--</li>-->
			<!--<li class="mt-1">
				<span class="TrajanB fs-22px">12月20日迄：年内に発送</span>
			</li>-->
			<!--<li class="mb-1">
				<span class="TrajanB fs-22px">12月25日以降：1月10日に発送</span>
			</li>-->
			<!--<li class="NotoSerifL fs-16px mb-2">
				<p>※年末年始の交通状況や荷物量の増加により、商品のお届けが遅れる場合がございます。予めご了承ください。</p>
			</li>-->
			<!-- 発送日の目安 -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				発送日の目安
			</li>
			<li class="NotoSerifL fs-16px">
				<p>通常商品の場合 (予約商品を除く)</p>
				<p>ただいまご注文いただいた場合の発送目安</p>
			</li>
			<li class="mt-1 mb-2">
				<span id="js-shipdate-pc" class="TrajanB fs-26px">
				</span>
			</li>
			<!-- <li class="NotoSerifL fs-24px mb-sm-2 mb-2 p-1 bg-white">
				<p>※仕入れの都合により、<span class="fw-bold">がばいソースを注文のお客様は7月15日以降</span>の発送となります。</p>
			</li> -->
			<!-- SNS -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				石丸の最新情報はこちらからチェック！
			</li>
			<li class="mb-2">
				<a href="https://lin.ee/Qzc6XSv" class="line-add-btn"><img src="https://scdn.line-apps.com/n/line_add_friends/btn/ja.png" alt="友だち追加" height="36" border="0"></a>
				<a href="//www.instagram.com/suguru_ishimaru/" target="_blank" class="btn btn-link pe-0 instagram">
					</a>
					<a href="//www.facebook.com/ishimaru.meet/" target="_blank" class="btn btn-link pe-0 facebook">
					</a>

			</li>
			<!-- / SNS -->
			<!-- TEL -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				お電話でのお問い合わせ
			</li>
			<li>
				<a href="tel:<{$shop.tel}>" class="nav-link TrajanB fs-26px p-0">
					<img src="//img07.shop-pro.jp/PA01437/442/etc/neo-tel.png?cmsp_timestamp=20211129193648"
						alt="">
					<span class="align-text-bottom"><{$shop.tel}></span>
				</a>
			</li>
			<li class="NotoSerifL fs-16px ms-2 mb-2">受付 9:00～18:00 (日曜定休)</li>
			<!-- MAIL -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				メールでのお問い合わせ
			</li>
			<li>
				<a class=""
					href="//ishimaruniku.shop-pro.jp/secure/?mode=inq&shop_back_url=https%3A%2F%2Fwww.saga-ishimaru.co.jp%2F&shop_id=PA01437442&_ga=2.102523969.1504273749.1638167996-747911806.1637750824">
					<div class="d-flex justify-content-start align-items-center chevron-right">
						<div>
							<img class="pe-1"
								src="//img07.shop-pro.jp/PA01437/442/etc/neo-mail.png?cmsp_timestamp=20211129201304"
								alt="">
						</div>
						<div class="me-auto NotoSerifSB fs-16px">
							<div class="NotoSerifSB fs-16px">メールでのお問い合わせ</div>
						</div>
					</div>
				</a>
			</li>
			<!-- 送料 -->
			<li>
					<img class="pt-2"
						src="<{$assets}>/img/neo-shipping-img.png.webp"
						alt="" width="321">
			</li>
			<!-- プレゼント -->
			<li>
				<!-- リンクないのでコメントアウト -->
				<!-- <a href="//www.saga-ishimaru.co.jp/?mode=f3"> -->
					<img class="pt-2"
						src="<{$assets}>/img/neo-point-pc.png.webp"
						alt="" width="321">
				<!-- </a> -->
			</li>
			<!-- 美味しいハンバーグの焼き方 -->
			<li class="mt-2">
				<div class="bb-1 mx-auto pb-1">
					<a class=""
						href="//www.saga-ishimaru.co.jp/?mode=f5">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								美味しい♪<br>ハンバーグの焼き方
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- お客さまの声 -->
			<li>
				<div class="bb-1 mx-auto pb-1">
					<a class=""
						href="//www.saga-ishimaru.co.jp/?mode=f2">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								お客さまの声
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- 会員登録 -->
			<li>
				<div class="bb-1 mx-auto pb-1">
					<a class="" href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								ISHIMARU会員登録
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- メルマガ -->
			<!-- <li>
				<div class="bb-1 mx-auto pb-1">
					<a class="" href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								<div class="NotoSerifL fs-16px ls-1">\お得な情報がいっぱい！/</div>
								メルマガ会員募集中
							</div>
						</div>
					</a>
				</div>
			</li> -->
			<!-- ご利用ガイド -->
			<li>
				<div class="w-95 mx-auto pb-1">
					<a class="" href="//www.saga-ishimaru.co.jp/?mode=sk">
						<div class="d-flex justify-content-start align-items-center chevron-right">
							<div class="me-auto NotoSerifSB fs-20px ls-1">
								ご利用ガイド
							</div>
						</div>
					</a>
				</div>
			</li>
			<!-- ギフト -->
			<li class="nav-item mb-1 ps-1 NotoSerifSB fs-16px">
				<span class="TrajanB fs-18px ls-1">GIFT SERVICE</span> ギフトについて
			</li>
			<li class="NotoSerifSB ls-1">
				<div class="row gift align-items-center">
					<div class="col-5">
						<img src="//img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
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
			<!-- about -->
			<li>
				<a href="//www.saga-ishimaru.co.jp/?mode=f1">
					<img src="<{$assets}>/img/neo-aboutLink-pc.png.webp"
						alt="">
				</a>
			</li>
			<!-- SNS -->
			<li>
				<div class="d-flex justify-content-end pt-2">
					<a href="//www.instagram.com/suguru_ishimaru/" target="_blank"
						class="btn btn-link pe-0 instagram fs-5">
					</a>
					<a href="//www.facebook.com/ishimaru.meet/" target="_blank"
						class="btn btn-link pe-0 facebook fs-5">
					</a>
				</div>
			</li>
			<!-- ポータル -->
			<li class="mt-2 mb-1 h-55px">
				<div class="d-flex justify-content-center align-items-center text-center NotoSerifSB fs-20px ls-1">
					<div class="pe-1">\</div>
					<div>ふるさと納税からも<br>お申し込みいただけます</div>
					<div class="ps-1">/</div>
				</div>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//search.rakuten.co.jp/search/event/%E3%81%B5%E3%82%8B%E3%81%95%E3%81%A8%E7%B4%8D%E7%A8%8E%E3%80%80%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD/?ev=40&v=2" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						楽天ふるさと納税
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//www.furusato-tax.jp/search?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD&header=1&target=1&sst=" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ふるさとチョイス
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//furunavi.jp/Product/Search?keyword=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ふるなび
					</div>
				</a>
			</li>
			<li class="NotoSerifL fs-18px">
				<a class="w-100 mb-10px px-0 py-1 btn btn-secondary" target="_blank"
					href="//www.satofull.jp/products/list.php?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89&cnt=60&p=1" role="button">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						さとふる
					</div>
				</a>
			</li>
		</ul>
	</div>
	<!-- / PC -->

	<!-- SP -->
	<div class="d-lg-none">
		<ul class="nav nav-pills flex-column text-center mx-auto mt-5">
			<!-- 年始の発送日目安 -->
			<!-- <li class="fs-22px nav-item mb-2 NotoSerifSB fs-16px">
				年末年始の発送日目安
			</li>
			<li class="NotoSerifL fs-16px">
				<p class="mb-1">年末年始休み：12月30日～1月5日</p>
				<p>ご注文いただいた場合の発送日</p>
			</li>
			<li class="mt-1">
				<span class="TrajanB fs-22px">12月24日迄：年内に発送</span>
			</li>
			<li class="mb-1">
				<span class="TrajanB fs-22px">12月25日以降：1月10日に発送</span>
			</li>
			<li class="NotoSerifL fs-16px mb-2">
				<p>※年末年始の交通状況や荷物量の増加により、商品のお届けが遅れる場合がございます。予めご了承ください。</p>
			</li> -->
			<!-- 発送日の目安 -->
			<li class="fs-22px nav-item mb-2 NotoSerifSB fs-16px">
				発送日の目安
			</li>
			<li class="NotoSerifL fs-22px">
				<p>通常商品の場合 (予約商品を除く)</p>
				<p>ただいまご注文いただいた場合の発送目安</p>
			</li>
			<li class="mt-1 mb-2 text-center">
				<span id="js-shipdate-sp" class="TrajanB fs-24px">
				</span>
			</li>
			<!-- <li class="NotoSerifL fs-22px mb-sm-2 mb-2 p-1 bg-white">
				<p>※仕入れの都合により、<span class="fw-bold">がばいソースを注文のお客様は7月15日以降</span>の発送となります。</p>
			</li> -->
		</ul>
		<!-- about -->
		<a href="//www.saga-ishimaru.co.jp/?mode=f1">
			<img class="mx-auto d-block mt-2 mb-4"
				src="<{$assets}>/img/neo-aboutLink-sp.png.webp" alt=""
				width="335">
		</a>
		<!-- 送料 -->
		<img class="w-100 d-block"
			src="<{$assets}>/img/neo-shipping-img.png.webp"
			alt="" width="321">
		<!-- プレゼント -->
		<!-- リンクないのでコメントアウト -->
		<!-- <a href="//www.saga-ishimaru.co.jp/?mode=f3"> -->
			<img class="w-100 d-block mt-3 mb-2"
				src="//img07.shop-pro.jp/PA01437/442/etc/neo-point-pc.png?cmsp_timestamp=20220201140546" alt="">
		<!-- </a> -->
		<!-- 3列 -->
		<div class="NotoSerifSB fs-20px ls-1 text-center">
			<!-- お客さまの声 -->
			<div class="bb-1 mx-auto py-2">
				<a href="//www.saga-ishimaru.co.jp/?mode=f2">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						お客さまの声
					</div>
				</a>
			</div>
			<!-- 会員登録 -->
			<div class="bb-1 mx-auto py-2">
				<a href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ISHIMARU会員登録
					</div>
				</a>
			</div>
			<!-- メルマガ -->
			<div class="bb-1 mx-auto py-2">
				<a href="//members.shop-pro.jp/?mode=members_regi&shop_id=PA01437442">
					<div class="me-auto chevron-right">
						<div class="NotoSerifL fs-16px">\お得な情報がいっぱい！/</div>
						メルマガ会員募集中
					</div>
				</a>
			</div>
			<!-- ご利用ガイド -->
			<div class="bb-1 mx-auto py-2">
				<a href="//www.saga-ishimaru.co.jp/?mode=sk">
					<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
						ご利用ガイド
					</div>
				</a>
			</div>
		</div>
		<!-- / 3列 -->
		<!-- ポータル -->
		<div class="mt-3 mb-1">
			<div class="d-flex justify-content-center align-items-center text-center NotoSerifSB fs-20px ls-1">
				<div class="pe-2">\</div>
				<div>ふるさと納税からも<br>お申し込みいただけます</div>
				<div class="ps-2">/</div>
			</div>
		</div>
		<div class="w-75 mx-auto NotoSerifL fs-18px">
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" target="_blank"
				href="//search.rakuten.co.jp/search/event/%E3%81%B5%E3%82%8B%E3%81%95%E3%81%A8%E7%B4%8D%E7%A8%8E%E3%80%80%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD/?ev=40&v=2" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					楽天ふるさと納税
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary"  target="_blank"
				href="//www.furusato-tax.jp/search?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD&header=1&target=1&sst="
				role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					ふるさとチョイス
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" target="_blank"
				href="//furunavi.jp/Product/Search?keyword=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89%E7%94%A3%E6%A5%AD" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					ふるなび
				</div>
			</a>
			<a class="d-block mb-10px px-0 py-1 btn btn-secondary" target="_blank"
				href="//www.satofull.jp/products/list.php?q=%E7%9F%B3%E4%B8%B8%E9%A3%9F%E8%82%89&cnt=60&p=1" role="button">
				<div class="d-flex justify-content-center align-items-center ls-1 chevron-right">
					さとふる
				</div>
			</a>
		</div>
		<!-- ギフト -->
		<div class="NotoSerifSB fs-18px ls-1 text-center mt-2 gift-sp">
			想いを寄せて、大切な人に。
		</div>
		<div class="d-flex justify-content-evenly align-items-center ls-1 pt-1 px-4">
			<div>
				<img class="d-lg-block d-block img-fluid" src="//img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
					alt="">
				<img class="d-none img-fluid" src="//img07.shop-pro.jp/PA01437/442/etc/neo-gift-pc.png?cmsp_timestamp=20211130182417"
					alt="">
			</div>
			<div class="NotoSerifL fs-31px ls-1">
				<div>熨斗</div>
				<div>無料対応◎</div>
			</div>
		</div>
	</div>
</nav>
<{/if}>
<!-- sidebar.tpl ▲ -->
