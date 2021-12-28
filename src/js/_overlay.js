export const nenshiOverlay = () => {
	console.log("nenshiOverlay");
	if (location.href == "https://www.saga-ishimaru.co.jp/" || "http://localhost/neo-ishimaru/") {
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
