export const get_instagram_API = () => {
	if ($('#instagram').size()) {
		$.ajax({
			url: "//api.steamship.co.jp/musouapi/musou.php?content=ishimaru&template=instagram",
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
