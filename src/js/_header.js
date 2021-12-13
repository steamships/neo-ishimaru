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

		let start = 0, scroll_top = 0;
		$(window).on('scroll', function(){
			scroll_top = $(this).scrollTop();
			if ( scroll_top < 300 ) {
				$('#header-nav-icons').addClass('hide');
			}
			// else if( $('body').height() - ( scroll_top + $(this).height() ) < 300 ) {
			// 	$('#header-nav-icons').addClass('hide');
			// }
			else if (scroll_top >= start) {
				$('#header-nav-icons').removeClass('hide');

			} else {
				$('#header-nav-icons').addClass('hide');
			}
			start = scroll_top;
		});

		//SP版　タッチでアカウントリスト表示
		$('.header-account-icon').bind('touchend', function() {
			$('.header-account-lists').toggleClass('active');
		});
		$('.header-account-lists').bind('touchend', function(e){
			e.stopPropagation();
		});

	}

	// 戻るボタンにanimate（フッター）
	const backtotop = $('#backtotop');
	backtotop.click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 500);
		return false;
	});
}
