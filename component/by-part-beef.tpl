<div id="by-part-beef" class="NotoSerifL mb-2">
	<h3 class="TrajanB">
		BY PART BEEF
		<span class="NotoSerifL fs-6 ms-1">部位で選ぶ</span>
	</h3>

	<!-- 牛の部位タブ -->
	<ul id="by-part-beef-tab" class="nav nav-pills nav-justified gap-1 my-3 justify-content-center" role="tablist" style="white-space: nowrap;">
		<li class="nav-item" role="presentation">
			<a class="nav-link active" data-bs-toggle="pill" href="#部位ヒレ" role="tab" data-chart="8,5,9,7,9" data-top="20%" data-left="65%">ヒレ</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-bs-toggle="pill" href="#部位ロース" role="tab" data-chart="8,8,9,9,6" data-top="18%" data-left="45%">ロース</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-bs-toggle="pill" href="#部位ウデ" role="tab" data-chart="7,6,6,7,6" data-top="23%" data-left="35%">ウデ</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-bs-toggle="pill" href="#部位モモ" role="tab" data-chart="7,5,7,6,6" data-top="40%" data-left="75%">モモ</a>
		</li>
	</ul>
	<div id="by-part-beef-tab-wrap" class="row justify-content-between flex-column-reverse flex-lg-row">
		<div class="col-lg-7">

			<!-- 牛の部位にスター -->
			<div id="by-part-beef-img" class="col-6 mx-auto mb-2">
				<i id="by-part-beef-img-star" class="bi bi-star-fill"></i>
			</div>

			<!-- 部位ごとの解説＆リンク -->
			<div id="by-part-beef-tab-content" class="tab-content lh-lg">
				<div class="tab-pane show active" id="部位ヒレ" role="tabpanel">
					<p>牛の部位の中で圧倒的に運動量が少なく、キメが細かなヒレは一頭の牛からわずか3％しか取れない希少部位。肉の女王とも呼ばれるこの部位の特徴はとにかく「柔らかい」こと。</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337960" role="button">
						ヒレページへ
					</a>
				</div>
				<div class="tab-pane" id="部位ロース" role="tabpanel">
					<p>赤身の部分は柔らかく、適度に脂のサシが入ってきめ細かな霜降りになっているのが特徴。牛肉の脂の甘みとコクの深い旨味を楽しむには最適の部位。</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337981

					" role="button">ロースページへ</a>
				</div>
				<div class="tab-pane" id="部位ウデ" role="tabpanel">
					<p>
						とろけるような程よい食感で濃厚な味わいが特徴の霜降り肉。
						しゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
					</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337989" role="button">ウデページへ</a>
				</div>
				<div class="tab-pane" id="部位モモ" role="tabpanel">
					<p>
						比較的脂身が少ないヘルシーな赤身肉。
						さっぱりとした味わいが特徴でしゃぶしゃぶ、すき焼きなどの鍋物に最適なお肉。
					</p>
					<a class="btn btn-primary btn-chevron NotoSerifL my-2 p-1" href="./?mode=grp&gid=2337999" role="button">モモページへ</a>
				</div>

			</div>

		</div>

		<!-- 牛の部位レーダーチャート -->
		<div class="col-lg-5" id="by-part-beef-chart">
			<canvas></canvas>
		</div>
	</div>
</div>
