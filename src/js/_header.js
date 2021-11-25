export const header = () => {
	console.log('header');

	//ハンバーガーメニューの処理
	$(".openbtn").click(function () {
		$(this).toggleClass('active');
	});

	//ヘッダーの高さを取得→bodyのpadding-topへ設定
	const headerHight = $('.header-nav').outerHeight();
	$('body').css('padding-top', headerHight+10);
}
