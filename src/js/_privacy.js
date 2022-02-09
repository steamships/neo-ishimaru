export const privacy = () => {
	console.log('praivacy');

	$(".privacy-contents-block-note").each(function() {
		let str = $(this).text();
		str = str.replace(/\r?\n/g,'<br>');
		$(this).html(str);
	});
}
