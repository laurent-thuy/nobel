
$(document).ready(function() {

	function init() {
		var category = getRequestParams("category");
		if (!category) {
			category = "peace";
		}
		updateNavbar(category);
		showCategory(category);
		updateSmallCategoryLabel(category);
	}

	function updateNavbar(category) {
		$("#" + category + "Btn").toggleClass("active", true);
	}

	function showCategory(category) {
		$(".timeline li." + category).each(function() {
			$(this).show();
		})
		$(".timeline").fadeIn("slow");
	}

	function getRequestParams(searchParam) {
		var pageURL = window.location.search.substring(1);
		var requestParams = pageURL.split('&');
		for (var i = 0; i < requestParams.length; i++) {
			var currentRequestParam = requestParams[i].split('=');
			if (currentRequestParam[0] === searchParam) {
				return currentRequestParam[1];
			}
		}
	}

	function updateSmallCategoryLabel(category) {
		$("#smallCategoryLabel").text(category);
	}

	init();
});
