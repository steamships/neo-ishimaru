<{if $tpl_name == "top"}>
	<{* スライド *}>
	<!-- <link rel="stylesheet" type="text/css" href="https://www.jungleocean.com/demo/jquery-slick/css/slick-theme.css"/>
	<link rel="stylesheet" type="text/css" href="https://www.jungleocean.com/demo/jquery-slick/css/slick.css"/> -->

	<div id="carouselExampleIndicators" class="carousel slide carousel-fade mb-4 px-0" data-bs-ride="carousel">
		<!-- <ol class="carousel-indicators">
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="shadow active"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" class="shadow"></li>
		</ol> -->
		<div class="carousel-inner">
			<!--<div class="carousel-item" data-bs-interval="6000">
				<a href="https://www.saga-ishimaru.co.jp/?mode=f6">
					<img src="<{$assets}>/img/ochugen-cp-pc.webp" class="d-none d-lg-block w-100" alt="お中元キャンペーン">
					<img src="<{$assets}>/img/ochugen-cp-sp.webp" class="d-lg-none d-block w-100" alt="お中元キャンペーン">
				</a>
			</div>-->
			<!--<div class="carousel-item active" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2483504">
					<img src="<{$assets}>/img/oseibo-pc-2023.webp" class="d-none d-lg-block w-100" alt="お歳暮キャンペーン">
					<img src="<{$assets}>/img/oseibo-sp-2023.webp" class="d-lg-none d-block w-100" alt="お歳暮キャンペーン">
				</a>
			</div>-->
			<!--<div class="carousel-item active" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?pid=145586798">
					<img src="<{$assets}>/img/valentine_campaign_pc.webp" class="d-none d-lg-block w-100" alt="バレンタインキャンペーン">
					<img src="<{$assets}>/img/valentine_campaign_sp.webp" class="d-lg-none d-block w-100" alt="バレンタインキャンペーン">
				</a>
			</div>-->
			<div class="carousel-item active" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?pid=179333429">
					<img src="<{$assets}>/img/hamburger_campaign_pc.webp" class="d-none d-lg-block w-100" alt="カタログギフト">
					<img src="<{$assets}>/img/hamburger_campaign_sp.webp" class="d-lg-none d-block w-100" alt="カタログギフト">
				</a>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?mode=grp&gid=2750355">
					<img src="<{$assets}>/img/neo-slide-8-pc.webp" class="d-none d-lg-block w-100" alt="カタログギフト">
					<img src="<{$assets}>/img/neo-slide-8-sp.webp" class="d-lg-none d-block w-100" alt="カタログギフト">
				</a>
			</div>
			<div class="carousel-item" data-bs-interval="6000">
				<a href="https://admane.jp/ad/p/r?_site=3090&_article=2181&_link=9646&_image=10308&admane_reurl=https%3A%2F%2Fwww.furusato-tax.jp%2Fproduct%2Fdetail%2F41327%2F5050356%3Fcity-product_rank%26utm_source=business%26utm_medium=affiliate" target="_blank">
					<img src="<{$assets}>/img/choice-header-pc_01.webp" class="d-none d-lg-block w-100" alt="チョイスイチオシ！">
					<img src="<{$assets}>/img/choice-header-sp_01.webp" class="d-lg-none d-block w-100" alt="チョイスイチオシ！">
				</a>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2543763&csid=0">
					<img src="<{$assets}>/img/neo-slide-3-pc.png.webp" class="d-none d-lg-block w-100" alt="佐賀牛">
					<img src="<{$assets}>/img/neo-slide-3-sp.png.webp" class="d-lg-none d-block w-100" alt="佐賀牛">
				</a>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2547504&csid=0">
					<img src="<{$assets}>/img/neo-slide-4-pc.png.webp" class="d-none d-lg-block w-100" alt="九州産黒毛和牛">
					<img src="<{$assets}>/img/neo-slide-4-sp.png.webp" class="d-lg-none d-block w-100" alt="九州産黒毛和牛">
				</a>
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<a href="https://www.saga-ishimaru.co.jp/?mode=cate&cbid=2601547&csid=0">
					<img src="<{$assets}>/img/neo-slide-5-pc.png.webp" class="d-none d-lg-block w-100" alt="その他">
					<img src="<{$assets}>/img/neo-slide-5-sp.png.webp" class="d-lg-none d-block w-100" alt="その他">
				</a>
			</div>
		</div>
	</div>

	<!-- <script type="text/javascript" src="slick/slick.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.carousel-inner').slick({
			autoplay: true, //自動再生
			dots: true, //ドットのナビゲーションを表示
			infinite: true, //スライドのループ有効化
			speed: 5000, //切り替えのスピード（小さくすると速くなる）
			fade: true, //フェードの有効化
		});
	});
	</script> -->
	<{* // スライド *}>
<{/if}>
