//祝日のライブラリ呼び出し
const findHoliday = date => {
	const holiday = JapaneseHolidays.isHoliday(date);
	return holiday;
}

//4日加算して整える
const dateIncrease = (date, addDays) => {
	date.setDate(date.getDate() + addDays);
	const year = date.getFullYear();
	const month = date.getMonth() + 1 ;
	const day = date.getDate();
	const dayOfWeek = date.getDay();
	const dayOfWeekStr = [ "日", "月", "火", "水", "木", "金", "土" ][dayOfWeek];
	let addedDate = "";
	if (findHoliday(date)) {
		addedDate = `${year}年${month}月${day}日(${dayOfWeekStr}・祝)`;
	}
	else {
		addedDate = `${year}年${month}月${day}日(${dayOfWeekStr})`;
	}
	return addedDate;
}

document.getElementById('js-shipdate-pc').textContent = dateIncrease(new Date(), 7);
document.getElementById('js-shipdate-sp').textContent = document.getElementById('js-shipdate-pc').textContent;

//日付を加算して整える
// const dateIncrease = (date, addDays) => {
// 	date.setDate(date.getDate() + addDays);
// 	const year = date.getFullYear();
// 	const month = date.getMonth() + 1 ;
// 	const day = date.getDate();
// 	const dayOfWeek = date.getDay();
// 	const dayOfWeekStr = [ "日", "月", "火", "水", "木", "金", "土" ][dayOfWeek];
// 	let addedDate = "";
// 	if (findHoliday(date)) {
// 		addedDate = `${year}年${month}月${day}日(${dayOfWeekStr}・祝)`;
// 	}
// 	else {
// 		addedDate = `${year}年${month}月${day}日(${dayOfWeekStr})`;
// 	}
// 	return addedDate;
// }

//特定の曜日と祝日を判定し表示
// const extractDate = () => {
// 	const judgDate = new Date();
// 	if (document.getElementById('js-shipdate-pc') && document.getElementById('js-shipdate-sp')) {
// 		const $displayDatePc = document.getElementById('js-shipdate-pc');
// 		const $displayDateSp = document.getElementById('js-shipdate-sp');
// 		//祝 土日 木金判定
// 		if ((findHoliday(judgDate) || judgDate.getDay() === 6) || judgDate.getDay() === 0 || judgDate.getDay() === 4 || judgDate.getDay() === 5)
// 		{
// 			$displayDatePc.textContent = dateIncrease(judgDate, 4);
// 			$displayDateSp.textContent = $displayDatePc.textContent;
// 		}
// 		//月火水判定
// 		else if (judgDate.getDay() === 1 || judgDate.getDay() === 2 || judgDate.getDay() === 3)
// 		{
// 			$displayDatePc.textContent = dateIncrease(judgDate, 2);
// 			$displayDateSp.textContent = $displayDatePc.textContent;
// 		}
// 	}
// 	return;
// }
// extractDate();
