<#list gameList as game>
<article class="cyp-game clearfix">
	<figure class="cyp-gameFigure">
		<img src="${game.pic}" />
		<div class="cyp-gameDownload">
			<a href="#" class="btn">FREE</a>
		</div>
	</figure>
	<header>
		<h1>
			${game.name}
			<span>HOT</span>
		</h1>
		<div class="cyp-game-stat">
			<span class="fn_right">
				<i class="icon-download-alt"></i>
				${game.downloads}
			</span>
			<span>${game.size}</span>
		</div>
	</header>
	<section>
		${game.introduction}
		<a href="#" class="btn-more">more</a>
	</section>
</article>
<hr>
</#list>