export const header = () => {
	if ($('#header').length) {
		console.log('header');

		//右に溢れ出す固定ナビを強制スクロールさせる
		$(window).on("scroll", function(){
			$("#header-nav").css("left", -$(window).scrollLeft());
		});




		//デバイスサイズでアクション分岐
		const windowWidth = $(window).width();
		const windowSm = 768;
		if (windowWidth <= windowSm) {
			$('.sub-nav').wrap('<div class="sub-nav-wrap">')
			//クリックアクションでサブメニュー表示
			$('.main-nav .nav-item').click(function(){
				const $this = $(this);
				$this.find('.sub-nav-wrap').toggle(400);
				$this.find('.sub-nav').toggleClass('show');
				$this.find('.nav-link').toggleClass('rotate');
			});

		}
		else {
			//ホバーアクションでサブメニュー表示
			$('.main-nav .nav-item').hover(
				function(){
					$(this).find('.sub-nav').toggleClass('show');
				}
			);
		}

		//検索オーバーレイ
		$("#open-btn").click(function() {
			$("#overlay").fadeIn(200);
			$(".form-input").focus();
		});
		$(".close").click(function() {
			$("#overlay").fadeOut(200);
		});
		// // バブリングを停止
		// $(".overlay-inner").click(function(e){
		// 	e.stopPropagation();
		// });

		// モーダルが開いたら、bodyにfixedを付与

		// $('body').css('position','fixed');
		// $('body').css('top',`-${window.scrollY}px`);

		// // モーダルが閉じられ時...
		// const top = document.body.style.top;
		// $('body').css('position','');
		// $('body').css('top','');
		// document.body.style.top = '';
		// window.scrollTo(0, parseInt(scrollY || '0') * -1);
	}
}
