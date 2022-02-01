export const privacy = () => {
	console.log('praivacy');

	$(".jsonTxt").each(function() {
		const text = $(this).text();
		console.log(text);
		text.replace(/\\n/g, '<br>');
	});
}
