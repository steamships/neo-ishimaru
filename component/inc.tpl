<!-- inc.tpl ▼ -->
<{if $tpl_name == "free1" || $tpl_name == "free3" || $tpl_name == "free6"}>
<main id="main" class="col-12">
<{else}>
<main id="main" class="col-lg-9 ps-lg-3">
<{/if}>
	<!-- <{$file_name}> ▼ -->
	<{include file = $file_name}>
	<!-- <{$file_name}> ▲ -->
</main>
<!-- inc.tpl ▲ -->
