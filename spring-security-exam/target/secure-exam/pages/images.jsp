
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<head>
	<!-- Add jQuery library -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="/pages/fancybox/lib/jquery.mousewheel.pack.js"></script>

	<!-- Add fancyBox -->
	<link rel="stylesheet" href="/pages/fancybox/source/jquery.fancybox.css" type="text/css" media="screen" />
	<script type="text/javascript" src="/pages/fancybox/source/jquery.fancybox.pack.js"></script>

	<!-- Optionally add helpers - button, thumbnail and/or media -->
	<link rel="stylesheet" href="/pages/fancybox/source/helpers/jquery.fancybox-buttons.css" type="text/css" media="screen" />
	<script type="text/javascript" src="/pages/fancybox/source/helpers/jquery.fancybox-buttons.js"></script>
	<script type="text/javascript" src="/pages/fancybox/source/helpers/jquery.fancybox-media.js"></script>

	<link rel="stylesheet" href="/pages/fancybox/source/helpers/jquery.fancybox-thumbs.css" type="text/css" media="screen" />

	<script type="text/javascript">
		$(document).ready(function() {
			$(".fancybox1").fancybox({
			});
		});
	</script>

	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-thumbs.js"></script>

	<link href="<c:url value="/pages/css/bootstrap.css" />" rel="stylesheet">

	<style type="text/css">

		.container {
			width: 100%;
			/*
            min-width: 768px;
            max-width: 1200px;
            */
			padding: 0 10px;
			margin: 0 auto;
		}

		.main-header {
			position: relative;
		}

		.main-header .main-navigation {
		}

		.main-header .main-navigation ul {
			position: relative;
			list-style: none;
			margin: 0;
			padding: 0;
		}

		.main-header .main-navigation ul li {
			float: left;
			width: 20%;
		}

		.main-header .main-navigation ul li:nth-child(1) {
			margin-left: 6%;
			text-align: left;
		}
		.main-header .main-navigation ul li:nth-child(2) {
			text-align: left;
		}
		.main-header .main-navigation ul li:nth-child(3) {
			margin-left: 8%;
			text-align: right;
		}
		.main-header .main-navigation ul li:nth-child(4) {
			float: right;
			margin-right: 6%;
			text-align: right;
		}

		.main-header .main-navigation ul li a {
			display: block;
			padding: 20px 0;
			color: #000;
			background-color: #fff;
			font-weight: bold;
			text-decoration: none;
		}

		.main-header .main-navigation ul li a:hover {
			color: #81b3d2;
		}

		.main-header .main-navigation ul li a:active {
			color: #cacaca;
		}

		.main-header .header-logo {
			position: absolute;
			top: 0;
			left: 50%;
			transform: translateX(-50%);
		}
		.fix{
			position: fixed;
			right: 0;
			bottom: 2%;

		}


	</style>

</head>
<body style="width: 900px; margin: 0px auto; height: auto;">
<header class="main-header container">
	<nav class="main-navigation">
		<ul class="nav-panel clearfix">
			<li>
				<a href="#">Страница 1</a>
			</li>
			<li>
				<a href="#">Страница 2</a>
			</li>
			<li>
				<a href="#">Страница 3</a>
			</li>
			<li>
				<a href="#">Страница 4</a>
			</li>
		</ul>
	</nav>
	<div class="header-logo">
		<img src="/pages/logo.png" width="137" height="70" alt="Лого но я его не придумал">
	</div>
</header>

	<c:forEach var="name" items="${imageNames}">
		<div id="gallery">
			<a class="fancybox1" rel="gallery1" href="images/image/?name=${name}">
				<img style="max-width: 100%; height: auto; padding: 10px;" src="images/image/?name=${name}">
				</a>
		</div>
	</c:forEach>
	<br>
<a class="btn btn-lg btn-danger fix " href="javascript:history.back()" role="button">Назад</a>
</body>
</html>
