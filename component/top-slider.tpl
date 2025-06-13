<{if $tpl_name == "top"}>
	<{* スライド *}>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>

	<div id="slider-wrap">
		<!-- Fixed overlay for left and right side images -->
		<div class="slider-fixed-overlay">
			<div class="overlay-left"></div>
			<div class="overlay-right"></div>
		</div>
		<div id="top-slider" class="top-slider-container mb-4">
			<div class="slider-wrapper">
				<div class="slider-item">
					<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2750355">
						<img src="<{$assets}>/img/neo-slide-8-pc.webp" class="w-100" alt="カタログギフト">
					</a>
				</div>
				<div class="slider-item">
					<a href="https://admane.jp/ad/p/r?_site=3090&_article=2181&_link=9646&_image=10308&admane_reurl=https%3A%2F%2Fwww.furusato-tax.jp%2Fproduct%2Fdetail%2F41327%2F5050356%3Fcity-product_rank%26utm_source=business%26utm_medium=affiliate" target="_blank">
						<img src="<{$assets}>/img/choice-header-pc_01.webp" class="w-100" alt="チョイスイチオシ！">
					</a>
				</div>
				<div class="slider-item">
					<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2543763&csid=0">
						<img src="<{$assets}>/img/neo-slide-3-pc.png.webp" class="w-100" alt="佐賀牛">
					</a>
				</div>
				<div class="slider-item">
					<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2547504&csid=0">
						<img src="<{$assets}>/img/neo-slide-4-pc.png.webp" class="w-100" alt="九州産黒毛和牛">
					</a>
				</div>
				<div class="slider-item">
					<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2601547&csid=0">
						<img src="<{$assets}>/img/neo-slide-5-pc.png.webp" class="w-100" alt="その他">
					</a>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.slider-wrapper').slick({
			autoplay: true, //自動再生
			autoplaySpeed: 3000, //自動再生の速度
			dots: false, //ドットのナビゲーションを非表示（デスクトップ・タブレット）
			infinite: true, //スライドのループ有効化
			speed: 500, //切り替えのスピード
			fade: false, //フェードを無効化（デスクトップ・タブレット）
			slidesToShow: 1, //中央フォーカスのため1つ
			slidesToScroll: 1, //一度にスクロールするスライド数
			centerMode: true, //中央フォーカスモード
			centerPadding: '12.5%', //左右に12.5%ずつ見せる（中央画像を大きく）
			arrows: true, //矢印ボタンを表示
			prevArrow: '<button type="button" class="slick-prev"><i class="bi bi-chevron-left"></i></button>',
			nextArrow: '<button type="button" class="slick-next"><i class="bi bi-chevron-right"></i></button>',
			responsive: [
				{
					breakpoint: 768,
					settings: {
						slidesToShow: 1, //モバイルでは1つ表示
						slidesToScroll: 1,
						centerMode: false, //モバイルではセンターモード無効
						centerPadding: '0', //モバイルでは余白なし
						fade: true, //モバイルではフェード効果
						arrows: false, //モバイルでは矢印非表示
						dots: true, //モバイルではドットナビ表示
						dotsClass: 'slick-dots mobile-dots'
					}
				},
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 1, //タブレットでも中央フォーカス
						slidesToScroll: 1,
						centerMode: true,
						centerPadding: '10%'
					}
				}
			]
		});
	});
	</script>
	<{* // スライド *}>
<{/if}>
