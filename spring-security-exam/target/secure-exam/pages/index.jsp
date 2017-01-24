<%@page import="com.photo.wesked.service.impl.ImageServiceImpl"%>
<%@page import="com.photo.wesked.service.ImageService"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Spring Security</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/pages/css/bootstrap.css" />" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/pages/css/jumbotron-narrow.css" />"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <!-- Add jQuery library -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- Add mousewheel plugin (this is optional) -->
<script type="text/javascript"
	src="fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>

<!-- Add fancyBox -->
<link rel="stylesheet"
	href="fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>

<!-- Optionally add helpers - button, thumbnail and/or media -->
<link rel="stylesheet"
	href="fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript"
	src="fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

<link rel="stylesheet"
	href="fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

<!-- Add packery -->
<link rel="stylesheet" href="packery/packery.css" />
<script type="text/javascript" src="packery/packery.pkgd.min.js"></script>
<script type="text/javascript" src="packery/imagesloaded.pkgd.js"></script>
<![endif]-->
</head>

<body>

	<div class="container">

		<div class="jumbotron" style="margin-top: 20px;">
			<h1>Фотогалерея</h1>

			<p class="lead">Пока как тоо так...</p>
			<sec:authorize access="!isAuthenticated()">
				<p>
					<a class="btn btn-lg btn-success" href="<c:url value="/login" />"
						role="button">Войти</a>
				</p>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<p>
					Ваш логин:
					<sec:authentication property="principal.username" />
				</p>
				<p>
					<a class="btn btn-lg btn-danger" href="<c:url value="/logout" />" role="button">Выйти</a> 
					<a class="btn btn-lg btn-danger" href="<c:url value="/images" />" role="button">Картинки</a>
				</p>

			</sec:authorize>
		</div>
		<p>wesked 2k16&copy;</p>
	</div>

	</div>
</body>
</html>
