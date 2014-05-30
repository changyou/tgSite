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
  <link rel="stylesheet" href="/components/swiper-scrollbar/dist/idangerous.swiper.scrollbar.css" />
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
				<div class="menuItem active">
					<a href="#">HOME</a >
					<cite>Homepage</cite>
				</div>
				<div class="menuItem">
					<a href="#">LOBBY</a >
					<cite>Enjoy games</cite>
				</div>
				<div class="menuItem">
					<a href="#">ABOUT</a >
					<cite>Contact</cite>
				</div>
			</nav>
		</header>

		<div class="contentWrap">
			<div class="cyp-gameInfo clearfix">
				<figure class="cyp-gameFigure">
					<img src="${game.pic}" />
					<div class="cyp-gameDownload">
						<a href="#" class="btn">FREE</a>
					</div>
				</figure>
				<section class="cyp-gameBaseInfo">
					<h3>${game.name}</h3>
					<div class="cyp-gameStars">
						<div class="stars" style="width:${27*5}px" data-stars="${game.stars}">
							<i style="width:${game.stars/10*100}%"> </i>
						</div>
					</div>
					<p>${game.company}</p>
					<p>${game.size}</p>
					<p>${game.version}</p>
					<p>Update ${game.updateAt}</p>
				</section>
				<section class="cyp-gameSummary">
					${game.introduction}
				</section>
			</div>

			<div class="cyp-gameScreenshots">
				<div class="swiper-wrapper">
					<#list game.screenshots as ss>
					<div class="swiper-slide">
						<div><img src="${ss}"></div>
					</div>
					</#list>
				</div>
			</div>
			<div class="swiper-scrollbar"></div>

			<div class="cyp-gameIntroduction">
				${game.introduction}
			</div>


		</div>

		<script src="/components/swiper/dist/idangerous.swiper.min.js"></script>
		<script src="/components/swiper-scrollbar/dist/idangerous.swiper.scrollbar.min.js"></script>
		<script>
			$(function() {
				$('.cyp-gameScreenshots').swiper({
					slidesPerView: 3,
					// mode: 'horizontal',
					// scrollContainer: true,
					scrollbar: {
						container: '.swiper-scrollbar',
						draggable : true,
						hide: false,
						snapOnRelease: true
					}
				})

			});
		</script>
</body>
</html>
