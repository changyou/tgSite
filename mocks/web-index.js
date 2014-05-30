module.exports =[{
  view: "/web/index.ftl",
  out: "/index.html",
  data: {

    slideList: [
    	{
    		id: "1345",
    		pic: "/styles/img/big1.jpg",
    		thumb: "/styles/img/small1.jpg",
            text: "Ntex tte xttext te xtte xttext text textt extt <br>Vextte xttext1"
    	},
    	{
    		id: "1345",
    		pic: "http://placehold.it/910x300",
    		thumb: "http://placehold.it/90x60",
            text: "Ntexttexttexttex ttexttexttexttexttexttexttexttext2"
    	},
    	{
    		id: "1345",
    		pic: "http://placehold.it/910x300",
    		thumb: "http://placehold.it/90x60",
            text: "texttexttexttexttexttexttexttexttexttexttexttext3"
    	},
    	{
    		id: "1345",
    		pic: "http://placehold.it/910x300",
    		thumb: "http://placehold.it/90x60",
            text: "texttexttexttexttexttexttexttexttexttexttexttext4"
    	},
    	{
    		id: "1345",
    		pic: "http://placehold.it/910x300",
    		thumb: "http://placehold.it/90x60",
            text: "texttexttexttexttexttexttexttexttexttexttexttext5"
    	}
    ]
  }
}, {
    view: "/web/detail.ftl",
    out: "/detail.html",
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