<{* assetsの存在でローカルと本番のURLを切り替える *}>
<{if !$assets}>
<{assign var="assets" value="https://cdn.jsdelivr.net/gh/steamships/neo-ishimaru/assets"}>
<{/if}>

<script src="<{$assets}>/js/bundle.js?ver=<{$smarty.now}>" type="module"></script>
<script src="https://cdn.rawgit.com/osamutake/japanese-holidays-js/v1.0.10/lib/japanese-holidays.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="<{$assets}>/css/starter.css?ver=<{$smarty.now}>" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
