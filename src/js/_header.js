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
			//クリックアクションでサブメニュー表示、その他アクション
			$('.main-nav .nav-item').click(function(){
				const $this = $(this);
				$this.find('.sub-nav-wrap').toggle(400);
				$this.find('.sub-nav').toggleClass('show');
				$this.find('.nav-link').toggleClass('rotate');
				$this.find('.nav-link').toggleClass('colorChange');
			});
		}
		else {
			//ホバーアクションでサブメニュー表示、その他アクション
			$('.main-nav .nav-item').hover(
				function(){
					$(this).find('.sub-nav').toggleClass('show');
					$(this).find('.nav-link').toggleClass('colorChange');
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
	}
}
