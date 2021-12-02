export const header = () => {
	console.log('header');

	//ヘッダーの高さを取得→bodyのpadding-topへ設定
	const headerHight = $('.header-nav').outerHeight();
	$('body').css('padding-top', headerHight + 10 + "px");

	//ハンバーガーメニューの処理
	$(".openbtn").click(function () {
		$(this).toggleClass('active');
	});

	//
	$('.main-nav .nav-item').hover(
		function(){
			$(this).find('.sub-nav').toggleClass('show');
		}
	);
}
