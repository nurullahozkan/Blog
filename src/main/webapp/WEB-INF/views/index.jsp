<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BLOG</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="açıklama" />
	<meta name="keywords" content="arama kelimeleri" />
	<meta name="author" content="Nurullah Özkan" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Animate -->
	<link rel="stylesheet" href="asset/css/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="asset/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="asset/css/bootstrap.css">

	<link rel="stylesheet" href="asset/css/style.css">


	<!-- Modernizr JS -->
	<script src="asset/js/modernizr-2.6.2.min.js"></script>

	</head>
	
		<body>
		
<!-- 		<div style="position: fixed; width: 100%; height: 100vh; background: #555555; z-index: 4"></div> -->
<!-- 		<div style="position: fixed; vertical-align: middle; z-index: 5" align="center"> -->
<!-- 			<table> -->
<!-- 				<tr><td><input type="text" placeholder="Başlık" /><tr> -->
<!-- 				<tr><td><textarea style="height: 400px"></textarea><tr> -->
<!-- 			</table> -->
		
<!-- 		</div> -->
		
	<div id="fh5co-offcanvas">
		<a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i class="icon-cross3"></i> <span>Kapat</span></span></a>
		<div class="fh5co-bio">
			<figure>
				<img src="asset/images/person1.jpg" alt="Free HTML5 Bootstrap Template" class="img-responsive">
			</figure>
			<h3 class="heading">Hakkımda</h3>
			<h2>${user.name} ${user.surname}</h2>
<!-- 			<p>Bilgisayar Mühendisiyim. Web ve Mobil uygulama geliştirmekteyim.</p> -->
			<ul class="fh5co-social">
				<li><a href="logout">Çıkış</a></li>
			</ul>
		</div>

	</div>
	<!-- END #fh5co-offcanvas -->
	<header id="fh5co-header">
		
		<div class="container-fluid">

			<div class="row">
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
				<ul class="fh5co-social">
					<li><a href="ekle" style="color: blue"><i class="" ></i>Not Ekle</a></li>
				</ul>
				<div class="col-lg-12 col-md-12 text-center">
					<h1 id="fh5co-logo"><a href="index.html">${baslik}</a></h1>
				</div>

			</div>
		
		</div>

	</header>
	<!-- END #fh5co-header -->
	<div class="container-fluid">
	 	<div class="row fh5co-post-entry" id="list"> 
	 	
<%-- 	 	<c:forEach items="${notlar }" var="note"> --%>
<!-- 	 	<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box"> -->
<%-- 				<h2 class="fh5co-article-title"><a href="single.html">${note.title }</a></h2>  --%>
<%-- 				<h3><a href="single.html"  style="color:#999999">${note.content }</a></h3> --%>
<%-- 				<span class="fh5co-meta fh5co-date">6 Mart 2016</span> --%>
<!-- 			</article> -->
<%-- 	 	</c:forEach> --%>
	 	 
		</div>
	</div>

	<footer id="fh5co-footer">
		<p><small>&copy; 2020.</small></p>
	</footer>


	
	<!-- jQuery -->
	<script src="asset/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="asset/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="asset/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="asset/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="asset/js/main.js"></script>

	<script src="asset/custom/index.js"></script>

	</body>
</html>


