export const shindan = () => {
	console.log('shindan');

	$.ajax({
	url: 'https://sheets.googleapis.com/v4/spreadsheets/1GzTelbizmEX5oIiALA4dRGIxn-_GbKi1zkjA64gWNx4/values/questions?key=AIzaSyDdTL68c0PLn0b1nh1opWb-AA6VvtmB1U0'
	})
	.done(function(data){
		const d = data.values;
		d.shift();
		const questions = [];//質問
		for (let i = 0; i < d.length; i++) {
			questions.push(d[i][0]);
		}
		console.log(questions);
		let counter;
		let meats;

		init();
		// testRecommendation();

		function init() {
			counter = 0;
			meats = {
				spColla: { name: "【佐賀牛】小間切れ 1000g", point: 0 },
				nZap85: { name: "【佐賀牛】ももスライス 1000g(しゃぶしゃぶ・すき焼き) ", point: 0 },
				maneuColla: { name: "【佐賀牛】ウデスライス 500g(しゃぶしゃぶ・すき焼き)", point: 0 },
				duaCus: { name: "【佐賀牛】肩ローススライス 1000g(しゃぶしゃぶ・すき焼き)", point: 0 },
				jetCus: { name: "【佐賀牛】サーロインステーキ 400g(200g×2枚) ", point: 0 },
				spCharger: { name: "【佐賀牛】焼肉用ロース 1000g", point: 0 },
				hotCus: { name: "【佐賀牛】ヒレステーキ 480g(120g×4枚) ", point: 0 },
				spRoller: { name: "【九州産黒毛和牛】ヒレステーキ480g(120g×4枚) ", point: 0 },
				pablo: { name: "九州産黒毛和牛】焼肉用(ロース) 1,000g ", point: 0 },
				bucketDeco: { name: "【九州産黒毛和牛】焼肉用カルビ1,000g ", point: 0 },
				barrel: { name: "【九州産黒毛和牛】ももスライス 1000g(しゃぶしゃぶ・すき焼き) ", point: 0 },
				paraShelter: { name: "【九州産黒毛和牛】ももスライス 1000g(しゃぶしゃぶ・すき焼き) ", point: 0 },
				h3d: { name: "【九州産黒毛和牛】サーロインステーキ1,000g(200g×5枚) ", point: 0 },
				quadHopperB: { name: "【九州産黒毛和牛】肩ローススライス 1,000g(しゃぶしゃぶ・すき焼きに) ", point: 0 }
			}
		}

		const app = new Vue({
			el: '#app',
			data: {
				choice: true,
				retry_btn: false,
				count: true,
				message: questions[0],
				counter: counter + 1,
				all: questions.length
			},
			methods: {
				clickAnswer: function (answer) {
					addPoint(answer, counter);
					counter += 1;
					if (counter > questions.length - 1) {
						let maxCount = 0;
						let maxMeat = "";
						for (let meat in meats) {
							if (maxCount < meats[meat].point) {
								maxCount = meats[meat].point;
								maxMeat = meats[meat].name;
							}
						}
						this.choice = false;
						this.count = false;
						this.message = "あなたには「" + maxMeat + "」がオススメです！";
						this.retry_btn = true;
					} else {
						this.counter = counter + 1;
						this.message = questions[counter];
					}
				},
				retry: function () {
					init();
					this.counter = counter + 1;
					this.choice = true;
					this.count = true;
					this.retry_btn = false;
					this.message = questions[counter];
				}
			}
		});

		function addPoint(answer, counter) {
			switch (counter) {
				case 0:
					if (answer === true) {
						meats.nZap85.point += 1;
						meats.jetCus.point += 1;
						meats.duaCus.point += 1;
						meats.maneuColla.point += 1;
						meats.spCharger.point += 1;
						meats.h3d.point += 2;
						meats.quadHopperB.point += 1;
					} else {
						meats.hotCus.point += 1;
						meats.spRoller.point += 1;
						meats.pablo.point += 1;
						meats.bucketDeco.point += 1;
						meats.barrel.point += 1;
						meats.paraShelter.point += 1;
					}
					break;
				case 1:
					if (answer === true) {
						meats.nZap85.point += 1;
						meats.duaCus.point += 1;
						meats.barrel.point += 1;
						meats.bucketDeco.point += 1;
					} else {
						meats.spColla.point += 1;
						meats.jetCus.point += 1;
						meats.hotCus.point += 1;
						meats.spRoller.point += 1;
						meats.paraShelter.point += 1;
						meats.maneuColla.point += 1;
						meats.spCharger.point += 1;
						meats.quadHopperB.point += 1;
					}
					break;
				case 2:
					if (answer === true) {
						meats.spRoller.point += 1;
						meats.pablo.point += 1;
					} else {
						meats.barrel.point += 1;
						meats.spCharger.point += 1;
						meats.h3d.point += 1;
					}
					break;
				case 3:
					if (answer === true) {
						meats.spRoller.point += 1;
						meats.pablo.point += 1;
						meats.bucketDeco.point += 1;
						meats.hotCus.point += 1;
						meats.spColla.point += 1;
						meats.paraShelter.point += 1;
						meats.maneuColla.point += 1;
						meats.quadHopperB.point += 1;
					} else {
						meats.nZap85.point += 1;
						meats.duaCus.point += 1;
						meats.jetCus.point += 1;
						meats.barrel.point += 1;
						meats.spCharger.point += 1;
						meats.h3d.point += 1;
					}
					break;
				case 4:
					if (answer === true) {
						meats.spRoller.point += 1;
						meats.pablo.point += 1;
						meats.nZap85.point += 1;
						meats.duaCus.point += 1;
						meats.spColla.point += 1;
						meats.maneuColla.point += 1;
						meats.quadHopperB.point += 1;
					} else {
						meats.hotCus.point += 1;
						meats.bucketDeco.point += 1;
						meats.jetCus.point += 1;
						meats.barrel.point += 1;
						meats.spCharger.point += 1;
					}
					break;
				case 5:
					if (answer === true) {
						meats.paraShelter.point += 2;
						meats.quadHopperB.point += 2;
						meats.h3d.point += 1;
						meats.pablo.point += 1;
					} else {
					}
					break;
				case 6:
					if (answer === true) {
						meats.jetCus.point += 1;
						meats.duaCus.point += 1;
						meats.barrel.point += 1;
						meats.spCharger.point += 1;
						meats.h3d.point += 1;
						meats.bucketDeco.point += 1;
					} else {
						meats.spRoller.point += 1;
						meats.nZap85.point += 1;
						meats.spColla.point += 1;
						meats.maneuColla.point += 1;
						meats.hotCus.point += 1;
						meats.paraShelter.point += 1;
						meats.pablo.point += 1;
					}
					break;
				case 7:
					if (answer === true) {
						meats.spColla.point += 1;
						meats.maneuColla.point += 1;
						meats.hotCus.point += 1;
					} else {
					}
					break;
			}
		}

		function testRecommendation() {
			let distribution = {
				spColla: { name: "【佐賀牛】小間切れ 1000g", point: 0 },
				nZap85: { name: "【佐賀牛】ももスライス 1000g(しゃぶしゃぶ・すき焼き) ", point: 0 },
				maneuColla: { name: "【佐賀牛】ウデスライス 500g(しゃぶしゃぶ・すき焼き)", point: 0 },
				duaCus: { name: "【佐賀牛】肩ローススライス 1000g(しゃぶしゃぶ・すき焼き)", point: 0 },
				jetCus: { name: "【佐賀牛】サーロインステーキ 400g(200g×2枚) ", point: 0 },
				spCharger: { name: "【佐賀牛】焼肉用ロース 1000g", point: 0 },
				hotCus: { name: "【佐賀牛】ヒレステーキ 480g(120g×4枚) ", point: 0 },
				spRoller: { name: "【九州産黒毛和牛】ヒレステーキ480g(120g×4枚) ", point: 0 },
				pablo: { name: "九州産黒毛和牛】焼肉用(ロース) 1,000g ", point: 0 },
				bucketDeco: { name: "【九州産黒毛和牛】焼肉用カルビ1,000g ", point: 0 },
				barrel: { name: "【九州産黒毛和牛】ももスライス 1000g(しゃぶしゃぶ・すき焼き) ", point: 0 },
				paraShelter: { name: "【九州産黒毛和牛】ももスライス 1000g(しゃぶしゃぶ・すき焼き) ", point: 0 },
				h3d: { name: "【九州産黒毛和牛】サーロインステーキ1,000g(200g×5枚) ", point: 0 },
				quadHopperB: { name: "【九州産黒毛和牛】肩ローススライス 1,000g(しゃぶしゃぶ・すき焼きに) ", point: 0 }
			}
			let answerPattern = ["0", "1"];
			let tempAnswerPattern = [];
			let loopCounter = 0;

			while (loopCounter < questions.length - 1) {
				for (let answer of answerPattern) {
					tempAnswerPattern.push(answer + "0");
					tempAnswerPattern.push(answer + "1");
				}
				answerPattern = tempAnswerPattern;
				tempAnswerPattern = [];
				loopCounter += 1;
			}

			for (let answer of answerPattern) {
				let answerList = answer.split("");
				for (let singleAnswer of answerList) {
					if (singleAnswer === "0") {
						singleAnswer = true;
					} else {
						singleAnswer = false;
					}
					addPoint(singleAnswer, counter);
					counter += 1;
				}

				let maxCount = 0;
				let maxMeat = "";
				for (let meat in meats) {
					if (maxCount < meats[meat].point) {
						maxCount = meats[meat].point;
						maxMeat = meat;
					}
				}
				distribution[maxMeat].point += 1;
				init();
			}
			console.log(distribution);
		}

	})
	.fail(function(jqXHR, textStatus, errorThrown){ // 通信が失敗したときの処理
		console.log("エラーが発生しました。ステータス：" + jqXHR.status);
	});
}
