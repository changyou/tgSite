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

		<div class="pageCarousel">
			<div class="showPic-swiper-container">
				<div class="swiper-wrapper">
					<#list slideList as slide>
					<div class="swiper-slide">
						<img src="${slide.pic}" alt="">
						<div class="text">
							${slide.text}
						</div>
					</div>
					</#list>
				</div>
			</div>
			<div class="picThumbs">
				<div class="picThumb-swiper-container">
					<div class="swiper-wrapper">
						<#list slideList as slide>
						<div class="swiper-slide" data-index="${slide_index}">
							<img src="${slide.thumb}" alt="">
						</div>
						</#list>
					</div>
				</div>
				<div class="thumbNavs">
					<a class="moveLeft"><i class="icon-left-open"></i></a>
					<a class="moveRight"><i class="icon-right-open"></i></a>
				</div>
			</div>
		</div>

		<script src="/components/swiper/dist/idangerous.swiper.min.js"></script>
		<script>
			$(function() {

				var showPicSwiper = $('.showPic-swiper-container').swiper({
					moveStartThreshold: 100,
					onlyExternal: true
				});
				var picThumbSwiper = $('.picThumb-swiper-container').swiper({
					loop: true,
					slidesPerView: 4
				});
				$(".picThumbs .moveLeft").on('click', function() {
					picThumbSwiper.swipePrev();
				});
				$(".picThumbs .moveRight").on('click', function() {
					picThumbSwiper.swipeNext();
				});

				$(".picThumb-swiper-container .swiper-slide img").click(function() {
					var slide = $(this).closest(".swiper-slide");
					showPicSwiper.swipeTo(slide.data('index'));
					slide.siblings(".active").removeClass('active');
					slide.addClass("active");
					return false
				});

			});
		</script>
</body>
</html>
