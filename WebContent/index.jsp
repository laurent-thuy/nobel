<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<title>Nobel Prize timeline</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/paper.css">
<link rel="stylesheet" href="css/app.css">
</head>
<body>
	<br>
	<div class="container">
		<%@ include file="includes/nav.jsp"%>
		<br>

		<div class="page-header visible-md-block visible-lg-block"></div>
		<br>
		<ul class="timeline" style="display: none">
			<c:forEach var="prize" items="${applicationScope.prizes}">
				<c:choose>
					<c:when test="${prize.year %2 == 0}">
						<li class="timeline-inverted ${prize.category}"
							style="display: none;">
					</c:when>
					<c:otherwise>
						<li class="${prize.category}" style="display: none;">
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
	</div>

	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<br>
	<hr>
	<br>
</body>
</html>