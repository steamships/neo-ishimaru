const ctx = document.getElementById('myChart');
console.log(ctx)
const datasets = [
	{
		data: [7,10,7,8,7],
		backgroundColor: 'rgba(0, 0, 0, 0.5)',
	}
]
const data = {
	labels: [
		'風味（コク）',
		'脂身',
		'肉質（柔らかさ）',
		'サシ（霜降り）',
		'希少性',
	],
	datasets
};
const options = {
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
				lineWidth: '0.5',
			},
			grid: {
				color: '#000',
				lineWidth: '0.5',
				drawTicks: false
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
const myChart = new Chart(ctx, {
	type: 'radar',
	data,
	options
});
myChart.data.datasets[0].data = [10,10,10,1,1]
myChart.update();
