<div id="privacy">
	<section class="mb-3 mb-lg-8">
		<div class="text-center mb-2 mb-lg-3 py-1">
			<h2 class="privacy-title TrajanB fs-26px py-1 d-inline-block position-relative">プライバシーポリシー</h2>
		</div>
		<div class="privacy-contents">
			<{section name=num loop=$privacy}>
			<div class="privacy-contents-block mb-3 mb-lg-4">
				<h3 class="privacy-contents-block-title NotoSerifSB fs-26px mb-1 mb-lg-2"><{$privacy[num].title}></h3>
				<p class="privacy-contents-block-note NotoSerifL p-1 p-lg-2"><{$privacy[num].note}></p>
			</div>
			<{/section}>
		</div>
	</section>
</div>
