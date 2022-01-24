export const product_list = () => {
	if ($('#product_list').length) {
		console.log("product_list");

	}
	if ($('#product_list-header-wide').length) {
		console.log("product_list-header-wide");

	}
	if ($('#product_list-header').length) {
		console.log("product_list-header");

		//パラメータを取得する関数
		const getParam = (name, url) => {
			if (!url) url = window.location.href;
			name = name.replace(/[\[\]]/g, "\\$&");
			var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
				results = regex.exec(url);
			if (!results) return null;
			if (!results[2]) return '';
			return decodeURIComponent(results[2].replace(/\+/g, " "));
		}
		//対象の文字列から指定した文字列以降を抽出する関数
		const getText = (str,border) => {
			return str.substring(str.length,str.indexOf(border)+border.length);
		}

		//開いている料理グループページのリストの色変更
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
		//開いているサブカテゴリーページのリストの色変更
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
		//開いている価格グループのリストの色変更
		if ($('.product_list-price-group').length) {
			$('.p-sub-category-item').each(function(i,group){
				const groupId = $(this).data('id');
				if (getParam('gid') != groupId) {
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

		//部位のグループページの時、部位別でスターの位置を調整
		const cateBeefImg = $('.p-sub-category-description-beefimg');
		const cateBeefStar = $('.p-sub-category-description-beefstar');
		const starPosition = [
			{ gid: '2337960', name: 'ヒレ', top: '20%', left: '65%' },
			{ gid: '2337981', name: 'ロース', top: '18%', left: '45%' },
			{ gid: '2337989', name: 'ウデ', top: '23%', left: '35%' },
			{ gid: '2337999', name: 'モモ', top: '40%', left: '75%' },
		];
		if (cateBeefImg.length) {
			for (let i = 0; i < starPosition.length; i++) {
				const obj = starPosition[i];
				if (obj.gid === getParam('gid')) {
					cateBeefStar.css({'top':obj.top,'left':obj.left});
					break;
				}
			}
		}
	}
}
