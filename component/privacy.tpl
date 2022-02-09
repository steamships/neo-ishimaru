<div id="privacy">
	<section class="mb-3 mb-lg-8">
		<div class="text-center mb-2 mb-lg-3 py-1">
			<h2 class="privacy-title TrajanB fs-26px  mb-2 mb-lg-3 py-1 d-inline-block position-relative">プライバシーポリシー</h2>
			<p class="privacy-policy NotoSerifL fw-bold text-start"><{$shop_name}>(以下当ショップ)は、GMOペパボ株式会社(以下サービス提供会社)の提供するショッピングカートASPサービス　カラーミーショップ(当サービス)を利用して当ショップを開設するにあたりGMOペパボ株式会社の定めたプライバシー・ポリシーに則った個人情報の取扱いを行います。</p>
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
