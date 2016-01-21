<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<br>
	<div class="container">
		<%@ include file="includes/header.jsp"%>
		<%@ include file="includes/nav.jsp"%>
		<br>

		<div class="page-header visible-md-block visible-lg-block"
			style="height: 250px; border: none"></div>
		<hr>
		<div class="category_small">
			<p class="visible-xs-block">${applicationScope.selectedCategory}</p>
		</div>

		<ul class="timeline"
			data-selectedCategory=${applicationScope.selectedCategory}>

			<c:forEach var="prize" items="${applicationScope.prizes}">

				<c:choose>
					<c:when
						test="${prize.category == applicationScope.selectedCategory}">
						<c:choose>
							<c:when test="${prize.year %2 == 0}">
								<li class="timeline-inverted ${prize.category} selectedCategory">
							</c:when>
							<c:otherwise>
								<li class="${prize.category} selectedCategory">
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${prize.year %2 == 0}">
								<li class="timeline-inverted ${prize.category}"
									style="display: none">
							</c:when>
							<c:otherwise>
								<li class="${prize.category}" style="display: none">
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>


				<c:choose>
					<c:when test="${prize.year %10 == 0}">
						<div class="timeline-badge warning">
					</c:when>
					<c:otherwise>
						<div class="timeline-badge">
					</c:otherwise>
				</c:choose>

				<i>${prize.year}</i>
	</div>
	<div class="timeline-panel">
		<div class="timeline-heading">
			<p class="timeline-title">
				<c:forEach var="laureate" items="${prize.laureates}">
											- ${laureate.firstname} ${laureate.surname}<br>
				</c:forEach>
			</p>
		</div>
		<div class="timeline-body">
			<p>${prize.laureates[0].motivation}</p>
		</div>
	</div>
	</li>

	</c:forEach>

	</ul>
	<%@ include file="includes/footer.jsp"%>
	</div>

	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/script.js"></script>

</body>
</html>