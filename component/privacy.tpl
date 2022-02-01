<div class="c-section p-layout-container">
	<div class="c-topic-path">
	  <ul class="c-topic-path__list">
		<li class="c-topic-path__item">
		  <a href="<{$home_url}>">ホーム</a>
		</li>
		<li class="c-topic-path__item">
		  <svg role="img" aria-hidden="true"><use xlink:href="#angle-right"></use></svg>
			 プライバシーポリシー
		</li>
	  </ul>
	</div>
	<h2 class="c-section__heading">
		<div class="c-section__heading--title">
		<span>プライバシーポリシー</span>
		</div>
	</h2>
	<div class="c-section__container">
		<{section name=num loop=$privacy}>
		<h3 class="c-section__label"><{$privacy[num].title}></h3>
		<div class="c-section__content">
			<p><{$privacy[num].note}></p>
		</div>
		<{/section}>
	</div>
</div>
