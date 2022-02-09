export const guide = () => {
	console.log('guide');

	$(".privacy-contents-block-note").each(function() {
		let str = $(this).text();
		str = str.replace(/\r?\n/g,'<br>');
		$(this).html(str);
	});
}
