$(document).ready(function() {

	$(".navbar-right li a").click(function() {
		var selectedCategory = $("ul.timeline").attr("data-selectedCategory");
		var newCategory = $(this).text();

		// nothing to do
		if (selectedCategory === newCategory) {
			return;
		}

		// update attribute for new selected category
		$("ul.timeline").attr("data-selectedCategory", newCategory);

		// hide previously selected category
		$("ul.timeline").fadeOut("slow", function() {
			$("ul.timeline li." + selectedCategory).hide();

			// show new selected category
			$("ul.timeline li." + newCategory).fadeIn("slow");
			$("ul.timeline").show();
		});

		// update nav bar
		$(".navbar-right li").toggleClass("active", false);
		$(this).parent().toggleClass("active", true);

		if ($(".navbar-collapse.collapse").hasClass("in")) {
			$(".navbar-collapse.collapse").collapse('toggle');
		}
		
		// // category info for small screens
		$(".category_small p").text(newCategory);
		

	});
});
