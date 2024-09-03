*start
[bg storage="SchoolGate.jpg" time="1000"  ]
[isHeaderLeastSize text="幕間"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[eval exp="f.scouまt+=f.gakuen_tuzyou_koukando"]
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]
#
１年前に入学した「ソフケン学園」様々な出会い、発見があり、これ
までの一年は本当にあっという間だった...[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

#
そして、今日からソフケン学園高等部の新年度だ！[pse]


[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
おはよう～、今日から二年生だね。[pse]

#&f.player_name
おはよう！[pse]

#
この子は柔守ツクリ、イラストやデザインが趣味の女の子だ。[pse]

#&f.player_name
そういえば、言ってたコンクールの絵はどう？[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
いい感じ。自分でも納得いく絵が描けたから、きっといい評価がもらえると思う。[pse]

#
ツクリの絵はどれもプロ並みで、きっとコンクールでは凄い賞をもらうだろう...[pse]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=normal time="1000" ]
#スカウト
[emb exp="f.player_name"]さ～ん！ツクリさ～ん！おっはようございます！！[pse]

#&f.player_name
おはよう！スカウト！[pse]


[chara_hide name="tsukuri" width="450" height="600" ]
#
この子はスカウト。ゲームとサウナが趣味の、明るい女の子だ。[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
いや～[emb exp="f.player_name"]さんが一年の期末試験でひぃひぃ言ってたので、もう二年生では会えないのかと思いましたよ！[pse]

#&f.player_name
ひぃひぃ言ってたのはそっちもじゃん...[pse]

#
こんな風に調子乗りな性格ではあるが...[r]（ 学校でよく話す友達の一人だ。）[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]

[chara_show name="memori" width="450" height="600" ]
[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
三人とも、何こんなところで騒いでるの...[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
おはようみんな！！元気だった？！[pse]

#
この子達はワカツキと紀伊めもり。どちらも一年で同じクラスだった友達だ。[pse]


[chara_hide name="wakastuki" width="450" height="600" ]
#
めもりはいつも様々な発明品を作っている天才少女。子供っぽく見えても、頭の良さは学校... いや世界でもトップクラスらしい...[pse]


[chara_hide name="memori" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
#
そして、ワカツキはゲームや音楽が好きなクールな女の子だ。[pse]
基本的には一匹狼スタイルだが、面倒見がよく、人付き合いも大切にするタイプだ。[pse]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
うぅ... 学年が上がるにつれ、受験も迫ってくるのがしんどいですねぇ...[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
まぁ、三年になったら受験が終わるまで、ほとんど遊べないよね。[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_hide name="wakastuki" width="450" height="600" ]

[chara_show name="memori" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=memori face=surprise time="1000" ]
#めもり
じゃあ、遊べるのは今だけってことじゃん！みんなで思い出作らないと！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
そうだね。みんなとたくさん話せるといいな。[pse]

#&f.player_name
楽しみ！[pse]


[chara_show name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#
学校生活の１年なんてあっという間だ。そして何よりも貴重な１年でもある...[pse]

#
学園のみんなとたくさんの交流をして、最高の青春を謳歌しよう！[pse]


[jump storage="gakuen/gakuen_end_point.ks"]