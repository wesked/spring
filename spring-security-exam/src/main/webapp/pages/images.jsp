
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<head>
	<link href="<c:url value="/pages/css/bootstrap.css" />" rel="stylesheet">

	<link rel="stylesheet" type="text/css" media="all" href="jgallery/dist/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" media="all" href="jgallery/dist/css/jgallery.min.css?v=1.6.0" />
	<script type="text/javascript" src="jgallery/dist/js/jquery-2.0.3.min.js"></script>
	<script type="text/javascript" src="jgallery/dist/js/jgallery.min.js?v=1.6.0"></script>
	<link rel="stylesheet" href="packery/packery.css" />
	<script type="text/javascript" src="packery/packery.pkgd.min.js"></script>
	<script type="text/javascript" src="packery/imagesloaded.pkgd.js"></script>
	<style type="text/css">

		.container {
			width: 768px;
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
<body style="width: 900px; margin: 100px auto; height: auto;">
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
		<img src="image/sbg/logo.png" width="137" height="70" alt="Лого но я его не придумал">
	</div>
</header>

	<c:forEach var="name" items="${imageNames}">
		<div id="gallery">
			<a href="images/image/?name=${name}">
			<img style="max-width: 100%; height: auto; padding: 10px;" src="images/image/?name=${name}">
			</a>
		</div>
		<script type="text/javascript">
			$( function() {
				$( '#gallery' ).jGallery( { mode: 'full-screen' } );
			} );
		</script>
	</c:forEach>
	<br>
<a class="btn btn-lg btn-danger fix " href="javascript:history.back()" role="button">Назад</a>
</body>
</html>
