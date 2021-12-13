export const product_list = () => {
	if ($('#product_list').length) {
		console.log("product_list");

	}
	if ($('#product_list-header-wide').length) {
		console.log("product_list-header-wide");

	}
	if ($('#product_list-header').length) {
		console.log("product_list-header");

		const getParam = (name, url) => {
			if (!url) url = window.location.href;
			name = name.replace(/[\[\]]/g, "\\$&");
			var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
				results = regex.exec(url);
			if (!results) return null;
			if (!results[2]) return '';
			return decodeURIComponent(results[2].replace(/\+/g, " "));
		}
		const getText = (str,border) => {
			return str.substring(str.length,str.indexOf(border)+border.length);
		}

		if ($('.product_list-dish-group').length) {
			$('.product_list-dish-group li').each(function(i,group){
				const classes = $(group).attr('class');
				const targetWord = 'group-';
				const groupNo = getText(classes,targetWord);
				const img = $(this).find('.product_list-blists-img');
				const link = $(this).find('.product_list-blists-link');
				if (getParam('gid') != groupNo) {
					img.addClass('inactive');
				}
				else {
					link.attr('href', 'javascript: void(0)');
					link.find('span').css({
						'background-color': '#000',
						'color': '#fff',
					});
					link.css({
						'cursor': 'default',
					});
				}
			});
		}
		if ($('.p-sub-category').length) {
			$('.p-sub-category-item').each(function(i,group){
				const categoryId = $(this).data('id');
				const categorySid = $(this).data('csid');
				if (getParam('gid') != categoryId || getParam('csid') != categorySid) {
					$(this).addClass('select');
				}
				else {
					$(this).css({
						'background-color': '#000',
						'color': '#000',
						'pointer-events': 'none',
					});
					$(this).attr('href', 'javascript: void(0)');
				}
			});
		}
	}
}
