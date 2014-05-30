<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Cy-Poker: No zuo no die!</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" href="/components/normalize-css/normalize.css" />
	<link rel="stylesheet" href="/components/swiper/dist/idangerous.swiper.css" />
	<link rel="stylesheet" href="/styles/webicons/css/webicons.css" />
	<link rel="stylesheet" href="/styles/web-index.css">
	<script src="/components/modernizr/modernizr.js"></script>
	<script src="/components/jquery/dist/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<header class="pageHeader clearfix">
			<a href="/" class="logo">CY-Poker</a>
			<nav class="topMenus">
				<div class="menuItem">
					<a href="#">HOME</a >
					<cite>Homepage</cite>
				</div>
				<div class="menuItem active">
					<a href="#">LOBBY</a >
					<cite>Enjoy games</cite>
				</div>
				<div class="menuItem">
					<a href="#">ABOUT</a >
					<cite>Contact</cite>
				</div>
			</nav>
		</header>
		<div class="games-list">
			<div class="clearfix">
				<#list games as game>
				<article class="item clearfix">
				<figure>
					<img src="http://lorempixel.com/144/144">
					<p class="download">
					<a>Download</a>
					</p>
				</figure>
				<header>
					<div class="title">
						<h3>
						${game.name}
						</h3>
						<#if game.isHot>
						<span class="status hot">HOT</span>
						</#if>
						<#if game.isNew>
						<span class="status new">NEW</span>
						</#if>
					</div>
					<div class="info">
						<p>${game.version}</p>
						<span class="size">${game.size}</span>
					</div>
				</header>
				<section>
					${game.description}
				</section>
				<a href="#" class="more">more</a>
				</article>
				</#list>
			</div>
		</div>
	<footer>&copy; Copyright</footer>
</body>
</html>