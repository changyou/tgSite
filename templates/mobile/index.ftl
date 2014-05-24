<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=480,target-densitydpi=device-dpi,user-scalable=yes;"/>
  <meta name="screen-orientation" content="portrait">
  <meta name="full-screen" content="yes">
  <title>Cy-Poker: No zuo no die!</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />

  <link rel="stylesheet" href="/components/normalize-css/normalize.css" />
  <link rel="stylesheet" href="/components/swiper/dist/idangerous.swiper.css" />
  <link rel="stylesheet" href="/styles/webicons/css/webicons.css" />
  <link rel="stylesheet" href="/styles/mobile-index.css">

  <script src="/components/modernizr/modernizr.js"></script>
  <script src="/components/jquery/dist/jquery.min.js"></script>
</head>
<body>

	<header class="cyp-slides">
		<div class="slider-swiper">
			<div class="swiper-wrapper">
				<#list slideList as slide>
				<div class="swiper-slide">
					<img src="${slide.src}" alt="">
					<div class="slide-text">
						${slide.text}
					</div>
				</div>
				</#list>
			</div>
		</div>
		<div class="pagination"></div>
	</header>

	<article class="cyp-main">
		<nav class="cyp-switchTab clearfix">
			<ul>
				<li> <a href="#" class="active">GAMES</a> </li>
				<li> <a href="#">Q&amp;A</a> </li>
			</ul>
		</nav>
		<hr>
		<div class="tabs-swiper">
			<div class="swiper-wrapper">

				<div class="cyp-gameList swiper-slide">
					<div class="content-slide">
						<#include "./gameList.partial.ftl" />
					</div>
				</div>

				<div class="cyp-helpList swiper-slide">
					<div class="content-slide">
						<#include "./qa.partial.ftl" />
					</div>
				</div>

			</div>
		</div>
	</article>


	<script src="/components/swiper/dist/idangerous.swiper.min.js"></script>

	<script>

		$(function(){
			$('.slider-swiper').swiper({
				mode:'horizontal',
				pagination: '.pagination',
				createPagination: true,
				loop: true
			});

			var tabsSwiper = $('.tabs-swiper').swiper({
				speed:500,
				onSlideChangeStart: function(){
					$(".cyp-switchTab .active").removeClass('active');
					$(".cyp-switchTab a").eq(tabsSwiper.activeIndex).addClass('active');
				}
			})
			$(".cyp-switchTab a").on('touchstart mousedown click',function(e){
				e.preventDefault()
				$(".cyp-switchTab .active").removeClass('active')
				$(this).addClass('active')
				tabsSwiper.swipeTo( $(this).parent().index() )
			})
			$(".cyp-switchTab a").click(function(e){
			  e.preventDefault()
			})
		});

	</script>
</body>
</html>
