<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>about</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/paper.css">
</head>
<body>

	<div class="container">
		<%@ include file="includes/nav.jsp"%>
		<br> <br> <br> <br> <br>
		<div class="row">

			<div class="col-md-10 col-md-offset-1">
				<h3>Nobel Prize timeline</h3>
				<h5>Simple timeline ordered by prize category. Backend consumes
					Nobel Prize api.</h5>
				<p>
					Website by <a href="mailto:laurent_soublin@hotmail.com">Laurent-Thuy
						Soublin</a>&nbsp;&nbsp;&nbsp;<a href="https://github.com/laurent-thuy"
						target="_blank"><i class="fa fa-github fa-lg"></i> </a>&nbsp;<a
						href="https://no.linkedin.com/pub/laurent-thuy-soublin/112/167/a21"
						target="_blank"><i class="fa fa-linkedin fa-lg"></i></a>
				</p>

				<br>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th>backend</th>
						</tr>
						<tr>
							<td>java, JSP</td>
						</tr>
						<tr>
							<td><a href="http://www.nobelprize.org/" target="_blank">Nobel
									Prize</a> api</td>
						</tr>
						<tr>
							<td><a href="http://unirest.io/java.html" target="_blank">unirest.io</a>
								REST client</td>
						</tr>
						<tr>
							<td><a href="http://code.google.com/p/json-simple/"
								target="_blank">json simple</a></td>
						</tr>
					</tbody>
				</table>
				<br>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th>frontend</th>
						</tr>
						<tr>
							<td>timelime <a href="http://codepen.io/betdream"
								target="_blank">betul</a></td>
						</tr>
						<tr>
							<td>photo of Malala Yousafzai by <a
								href="http://www.antonioolmos.com" target="_blank">Antonio
									Olmos</a></td>
						</tr>
						<tr>
							<td><a href="http://bootswatch.com/paper/" target="_blank">bootswatch</a>
								paper theme</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script>
		$("#aboutBtn").toggleClass("active", true);
	</script>
</body>
</html>