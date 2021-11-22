<{*共通テンプレート*}>
<script>
// headタグの中にviewportのmetaタグを入れる
(function () {
	var jsScript = document.createElement('script');
	jsScript.setAttribute('type', 'module');
	jsScript.setAttribute('src', "assets/js/bundle.js?ver=<{$smarty.now|date_format:'%Y%m%d%H%M%S'}>");
	document.getElementsByTagName('head')[0].appendChild(jsScript);

	var cssLink = document.createElement('link');
	cssLink.setAttribute('rel', 'stylesheet');
	cssLink.setAttribute('type', 'text/css');
	cssLink.setAttribute('href', "assets/css/starter.css?ver=<{$smarty.now|date_format:'%Y%m%d%H%M%S'}>");
	document.getElementsByTagName('head')[0].appendChild(cssLink);

	var viewport = document.createElement('meta');
	viewport.setAttribute('name', 'viewport');
	viewport.setAttribute('content', 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no');
	document.getElementsByTagName('head')[0].appendChild(viewport);
}());
</script>
<{include file=$file_name}>
