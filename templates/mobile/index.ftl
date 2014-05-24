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
  <link rel="stylesheet" href="/styles/mobile-index.css">

  <script src="/components/jquery/dist/jquery.min.js" async></script>
  <script src="/components/modernizr/modernizr.js" async></script>
</head>
<body>

	<header class="cyp-slides">
		<ul>
			<li>1</li>
			<li>2</li>
			<li>3</li>
		</ul>
	</header>

	<article class="cyp-main">
		<nav class="cyp-switchGroup">
			<a href="#">GAMES</a>
			<a href="#">Q&amp;A</a>
		</nav>
		<div class="cyp-gameList">
			<#list gameList as game>
			<article class="cyp-game">
				<div class="cyp-figure">
				</div>
				<header>
					<h1>${game.name}</h1>
				</header>
				<section>
					${game.introduction}
				</section>
			</article>
			</#list>
		</div>
	</article>

</body>
</html>
