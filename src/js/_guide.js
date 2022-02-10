export const guide = () => {
	console.log('guide');

	const ChangeCareer = (elm) => {
		elm.each(function() {
			let str = $(this).text();
			str = str.replace(/\t/g,'');
			str = str.trim(/\r?\n/);
			str = str.replace(/\r?\n/g,'<br>');
			$(this).html(str);
		});
	}

	ChangeCareer($(".guide-content"));
	ChangeCareer($(".guide-content p"));

}
