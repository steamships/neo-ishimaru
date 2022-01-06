export const get_instagram_API = () => {
	console.log('instagram');
	//facebook-jsonを取得して表示
	var graph_api = 'https://graph.facebook.com/v10.0/';
	var accessToken = 'EAADqPWucJocBAFpHe0FpPq62pZCZAAi9paXhm3yv439fKM9sDiDWFAnfgeXVb73QvgKna5AZBKACIYDiJxUgl4zqzBlHjKO2ijf4lNGS7VEWZB1q5hwZBMYzigUJBQq3StMYHYl5UGyp0z3IYZBEJLwwDGIKZAZCjX8U7fZBqN8m6qbQkOJRNpjiZCRCvqy3hvhXQZD'; // アクセストークン
	var businessID = '17841431464053294'; //グラフAPIエクスプローラで取得したinstagram_business_accountのID
	var medhiaFields = 'media{caption,media_url,permalink,timestamp,username,comments,comments_count,like_count,owner,media_type,shortcode,ig_id}';
	var url = graph_api + businessID + '?fields=' + medhiaFields + "&access_token=" + accessToken;
	if ($('#instagram').size()) {
		$.ajax({
			url: url
		})
		.done(function(res) {
			console.log(res);
			const data = res.media;
			const limit = 4;
			let count = 0;
			let feed = '';
			$.each(data, function(index, val) {
				$.each(val, function(i, elem) {
					if (elem.media_url && count < limit) {
						const caption = elem.caption.replace(/^\./,"").replace(/\r?\n/g, '<br>');
						const feedCaption = caption.replace(/\《Info\》|\«Info\»?\<br\>/,"").replace(/\［.*?\］|\[.*?\]?\<br\>/,"").replace(/\<br\>\【.*?\】(\<br\>)\1/,"");
						//caption内の《Info》の有無で投稿記事反映の分岐処理
						const isInformation = caption.match(/\《Info\》|\«Info\»/);
						if (isInformation) {
							//caption内のリンク先→例:[https://www.saga-ishimaru.co.jp/]の有無でリンクの分岐処理
							let feedLink = elem.permalink;
							caption.match(/\［.*?\］|\[.*?\]/) ? feedLink = caption.match(/(?<=\[|\［).*?(?=\]|\］)/)[0] : feedLink;
							//タイトルを抽出
							let feedTitle = caption.match(/(?<=\【).*?(?=\】)/);
							// const titleLen = feedTitle[0].length;　#を文字の先頭に追加
							// feedTitle = feedTitle[0].padStart(titleLen+1, "#")
							//メンションを抽出し、URLにする
							const instaAccount = caption.match(/(?<=\@).*?(?=\<br\>)/)[0];
							const mentionLink = "https://www.instagram.com/" + instaAccount + "/";
							const feedmention = caption.match(/(?=\@).*?(?=\<br\>)/
							)[0];
							//タイムスタンプの処理、〔T〕の有無で投稿日付表示の分岐処理
							const ts = new Date(elem.timestamp);
							let feedTime = ts.getFullYear() + '-' + (ts.getMonth()+1) + '-' + ts.getDate();
							const isTime = caption.match(/\〔T\〕/);
							isTime ? feedTime : feedTime = "";
							//要素をインクリメント
							feed += `<li class="instagram-feed col-6 col-lg-3 mb-1">
										<a href="${feedLink}" target="_blank" rel="noopener noreferrer">
											<div class="instagram-feed-imgWrap position-relative">
												<img class="img-fluid" src="${elem.media_url}">
											</div>
										</a>
										<div class="fs-6 head">
											<span class="badge bg-primary TrajanB ls-1">NEWS</span><span class="TrajanR date">${feedTime}</span>
										</div>
										<a href="${feedLink}" target="_blank" rel="noopener noreferrer" class="NotoSerifSB title fs-5 d-block">${feedTitle}</a>
									</li>`;
							count ++;
						}
					}
				});
			});
			$('#instagram-lists').html(feed);
		})
		.fail(function(jqXHR, status) {
			$('#instagram-lists').html('<li>読み込みに失敗しました。</li>');
		})
	}
}
