<{* assetsの存在でローカルと本番のURLを切り替える *}>
<{if !$assets}>
<{assign var="assets" value="https://cdn.jsdelivr.net/gh/steamships/neo-ishimaru/assets"}>
<{/if}>

<script src="<{$assets}>/js/bundle.js?ver=<{$smarty.now}>" type="module"></script>
<script src="https://cdn.rawgit.com/osamutake/japanese-holidays-js/v1.0.10/lib/japanese-holidays.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="<{$assets}>/css/starter.css?ver=<{$smarty.now}>" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<script>
	(function (d) {
		var config = {
			kitId: 'sxv0fee',
			scriptTimeout: 3000,
			async: true
		},
			h = d.documentElement, t = setTimeout(function () { h.className = h.className.replace(/\bwf-loading\b/g, "") + " wf-inactive"; }, config.scriptTimeout), tk = d.createElement("script"), f = false, s = d.getElementsByTagName("script")[0], a; h.className += " wf-loading"; tk.src = 'https://use.typekit.net/' + config.kitId + '.js'; tk.async = true; tk.onload = tk.onreadystatechange = function () { a = this.readyState; if (f || a && a != "complete" && a != "loaded") return; f = true; clearTimeout(t); try { Typekit.load(config) } catch (e) { } }; s.parentNode.insertBefore(tk, s)
	})(document);
</script>
