<div id="freepage">
	<div class="freepage-shindan d-none d-lg-block text-center">
		診断ページ
	</div>
</div>


<div id="app">
	<p id="counter" v-if="count">
		{{ counter }} / {{ all }}
	</p>
	<transition appear name="message" mode="out-in">
		<h2 id="message" :key="message">
			{{ message }}
		</h2>
	</transition>
	<div id="choice" v-if="choice">
		<a href="#" class="square_btn yes" v-on:click="clickAnswer(true)">はい</a>
		<a href="#" class="square_btn no" v-on:click="clickAnswer(false)">いいえ</a>
	</div>
	<div id="retry" v-if="retry_btn">
		<a href="#" class="square_btn yes" v-on:click="retry">もう一度試す</a>
	</div>
</div>
