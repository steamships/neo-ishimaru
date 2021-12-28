export const nenshiOverlay = () => {
	console.log("nenshiOverlay");
	const url = location.href;
	if ( url == "https://www.saga-ishimaru.co.jp/" || "http://localhost/neo-ishimaru/" && $("#info").length) {
		console.log();
		$(window).on('load', function (){
			$("#nenshi_overlay").fadeIn();
		});
		$(".nenshi_close").click(function() {
			$("#nenshi_overlay").fadeOut();
		});
		// バブリングを停止
		$(".overlay_inner").click(function(event){
			event.stopPropagation();
		});
	}
}
