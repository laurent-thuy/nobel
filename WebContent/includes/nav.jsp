<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="index.jsp?category=peace">Nobel Prize timeline <span
				class="visible-xs-block" id="smallCategoryLabel"></span></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li id="peaceBtn"><a href="index.jsp?category=peace">peace</a></li>
				<li id="literatureBtn"><a href="index.jsp?category=literature">literature</a></li>
				<li id="physicsBtn"><a href="index.jsp?category=physics">physics</a></li>
				<li id="economicsBtn"><a href="index.jsp?category=economics">economics</a></li>
				<li id="chemistryBtn"><a href="index.jsp?category=chemistry">chemistry</a></li>
				<li id="aboutBtn"><a href="about.jsp">about</a></li>
			</ul>
		</div>
	</div>
</nav>