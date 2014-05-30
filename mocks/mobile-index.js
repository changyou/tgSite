
module.exports = [{
	view: '/mobile/index.ftl',
	out: '/mobile.html',
	data: {
		name: 'ijse',
		slideList: [
			{
				text: 'no zuo no die',
				src: 'http://lorempixel.com/480/200'
			},
			{
				text: 'no zuo no die',
				src: 'http://lorempixel.com/480/200/cats'
			},
			{
				text: 'no zuo no die',
				src: 'http://placehold.it/480x200'
			}
		],
		gameList: [
			{
				id: '1001',
				name: 'Texas Poker',
				size: "999.9M",
				downloads: "99998",
				pic: 'http://lorempixel.com/144/144',
				downUrl: 'http://nozuonodie.com',
				introduction: 'This is a very newbility game, no zuo no die why you try'
			},
			{
				id: '1001',
				name: 'Texas Poker2',
				size: "999.9M",
				downloads: "99998",
				pic: 'http://lorempixel.com/144/144?334',
				downUrl: 'http://nozuonodie.com',
				introduction: 'This is a very newbility game, no zuo no die why you tryadsfasdf asd ad '
			}
		]
	}
}, {
	view: '/mobile/detail.ftl',
	out: '/mobile-detail.html',
	data: {
		game: {
			id: '1001',
			name: 'Texas Poker',
			size: "999.9M",
			stars: 5, // 0...10
			version: "v1.0.2",
			company: "CANGYOU",
			updateAt: "2014-05-15",
			downloads: "99998",
			pic: 'http://lorempixel.com/144/144',
			downUrl: 'http://nozuonodie.com',
			screenshots: [
				'http://lorempixel.com/225/400',
				'http://lorempixel.com/225/400',
				'http://lorempixel.com/225/400',
				'http://lorempixel.com/225/400'
			],
			introduction: 'This is a very newbility game, no zuo no die why you try'
		}
	}
}];