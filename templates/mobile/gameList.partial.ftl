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