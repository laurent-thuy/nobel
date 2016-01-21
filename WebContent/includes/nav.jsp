<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="#">Nobel Prize timeline <small
				class="visible-xs-block category_small">${applicationScope.selectedCategory}</small></a>
			&nbsp; &nbsp; &nbsp; &nbsp; <img alt="" src="img/wip.gif" height="65">

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">peace</a></li>
				<li><a href="#">literature</a></li>
				<li><a href="#">physics</a></li>
				<li><a href="#">economics</a></li>
				<li><a href="#">chemistry</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>