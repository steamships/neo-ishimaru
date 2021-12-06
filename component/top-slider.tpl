<{if $tpl_name == "top"}>
	<{* スライド *}>
	<div id="carouselExampleIndicators" class="carousel slide mb-4" data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="shadow active"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="shadow"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="shadow"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<{$assets}>/img/neo-slide-1-pc.png" class="d-none d-lg-block w-100" alt="黒毛和牛">
				<img src="<{$assets}>/img/neo-slide-1-sp.png" class="d-lg-none d-block w-100" alt="黒毛和牛">
			</div>
			<div class="carousel-item">
				<img src="<{$assets}>/img/neo-slide-2-pc.png" class="d-none d-lg-block w-100" alt="黒毛和牛">
				<img src="<{$assets}>/img/neo-slide-2-sp.jpg" class="d-lg-none d-block w-100" alt="黒毛和牛">
			</div>
			<div class="carousel-item">
				<img src="<{$assets}>/img/neo-slide-3-pc.png" class="d-none d-lg-block w-100" alt="黒毛和牛">
				<img src="<{$assets}>/img/neo-slide-3-sp.png" class="d-lg-none d-block w-100" alt="黒毛和牛">
			</div>
		</div>
	</div>
	<{* // スライド *}>
<{/if}>
