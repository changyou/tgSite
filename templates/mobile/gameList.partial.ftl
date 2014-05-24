<#list gameList as game>
<article class="cyp-game clearfix">
	<div class="cyp-figure">
		<img src="${game.pic}" alt="">
		<a href="${game.downUrl}" class="btn-gameDownload">Download</a>
	</div>
	<header>
		<h1>
			${game.name}
			<span>HOT</span>
		</h1>
		<div class="cyp-game-stat">
			<span>999.9M</span>
			<span>999999</span>
		</div>
	</header>
	<section>
		${game.introduction}
		<a href="#" class="btn-more">more</a>
	</section>
</article>
<hr>
</#list>