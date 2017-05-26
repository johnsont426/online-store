function reviewButton(){
	$("#item-reviews-button").on("click", function(e){
		$.ajax({
			url: this.href,
			dataType: 'script'	
		})
		e.preventDefault()
	})
}

function detailButton(){
	$("#item-detail-button").on("click", function(e){
		$.ajax({
			url: this.href,
			dataType: 'script'	
		})
		e.preventDefault()
	})
}

function addListeners(){
	reviewButton();
	detailButton()
}


$(function(){
	addListeners();
})