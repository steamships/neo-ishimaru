/**
 * 牛肉のチャートグラフ
 * ついでに星の位置も
 */
console.log('beef-chart.js')

if ( $('#by-part-beef-tab').length ) {

	// 牛肉のチャートグラフ基本データ
	const beef_chart_data = {
		type: 'radar',
		data: {
			labels: [
				'風味（コク）',
				'脂身',
				'肉質（柔らかさ）',
				'サシ（霜降り）',
				'希少性',
			],
			datasets: [
				{
					// data: [7,10,7,8,7],
					backgroundColor: 'rgba(0, 0, 0, 0.5)',
				}
			]
		},
		options: {
			plugins:{
				legend: {
					display: false
				}
			},
			elements: {
				point: {
					pointBackgroundColor: 'transparent',
					pointBorderColor: 'transparent'
				},
				line: {
					borderWidth: 0
				}
			},
			scales: {
				r: {
					angleLines: {
						color: '#000',
						lineWidth: 1,
					},
					grid: {
						color: '#000',
						lineWidth: 1,
					},
					title: {
						display: false
					},
					ticks: {
						display: false,
						maxTicksLimit: 10
					},
					suggestedMin: 0,
					suggestedMax: 10
				}
			}
		}
	}
	// 星の位置のための配列
	const beef_star = {}

	// activeなチャートデータを取得して設定
	beef_chart_data.data.datasets[0].data = $('#by-part-beef-tab a.active').data('chart').split(',')
	const beef_chart = new Chart( $('#by-part-beef-chart canvas'), beef_chart_data )

	// activeな牛の部位をなんとなく示す星の位置設定
	beef_star['top'] = $('#by-part-beef-tab a.active').data('top')
	beef_star['left'] = $('#by-part-beef-tab a.active').data('left')
	$('#by-part-beef-img-star').css(beef_star)

	$('#by-part-beef-tab a').on('click', function(){
		// チャート更新
		beef_chart.data.datasets[0].data = $(this).data('chart').split(',')
		beef_chart.update();

		// 星の位置更新
		beef_star['top'] = $(this).data('top')
		beef_star['left'] = $(this).data('left')
		$('#by-part-beef-img-star').css(beef_star)
	})
}
