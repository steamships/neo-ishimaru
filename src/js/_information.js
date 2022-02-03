export const get_instagram_API = () => {
	if ($('#instagram').size()) {
		$.ajax({
			url: "//steamship.co.jp/rakuten-musouapi/gold/gold.html?content=hoge&template=instagram",
			dataType: 'html',
		})
		.done(function(res) {
			console.log(res);
			$('#instagram').html(res);
		})
		.fail(function(jqXHR, status) {
			$('#instagram').html('<p>読み込みに失敗しました。</p>');
		})
	}
}
