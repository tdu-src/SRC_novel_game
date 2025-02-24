*start
[bg storage="Festival.jpg" time="1000"  ]
[isHeader text="夏祭り"  x="-450" width="330"]
[playbgm storage="../bgm/SofucharaHappenning.mp3" ]

[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]


#
今日は近くの神社で、夏祭りが行われていた！[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="tsukuri" width="450" height="600" ]

[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
おーい！ここだよー！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
こんばんは、[emb exp="f.player_name"]。[pse]

#&f.player_name
ごめん、待った？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
大丈夫だよ！ぼく、楽しみ過ぎて早く来ちゃった！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
めもり、張り切って１時間前から会場に居たらしいよ。[pse]

#&f.player_name
そんなに前から？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
うん！りんご飴、金魚すくい、わたあめ、全部回るつもり！[pse]

#&f.player_name
ま、回り切れるかな…?[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そんなことより早く行こう！屋台が売り切れちゃうよ！[pse]

#&f.player_name
うん！行こう！[pse]

#
こうして、3 人で様々な屋台を回った…[pse]

[isTimePassage]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
ふぅ～… 行きたいところ、全部回れたね！[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そういえば、そろそろ花火が打ちあがる時間だよ。[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
えっ！見たい見たい！[pse]

#&f.player_name
じゃあ、見やすい場所に移動しようか。[pse]

[isTimePassage2]
#
(ドーン…)[s]
*Timepassage2
[playse storage="../bgm/text_click_se.mp3" ]


[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
見て、すごい綺麗だよ！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
うわ～！本当だ！[pse]

#&f.player_name
すごい迫力だね！[pse]

#
打ちあがる花火は、一つの町の花火大会とは思えないクオリティだ！[pse]

#&f.player_name
ん？あれは…[pse]

#
煌びやかな花火が打ちあがると同時に、何かの顔型の花火が打ちあがり始めた…[pse]   

#&f.player_name
あれは…めもりの顔？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
[emb exp="f.player_name"]、気づいちゃった？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
実は打ち上げ準備をしてる時に、特製の花火をこっそり入れておいたんだ！[pse]      

#&f.player_name
流石にまずいんじゃ…[pse]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
だ、大丈夫なの…？これ…[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
大丈夫だよ！、火薬類製造保安責任者の資格持ってるから！[pse]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
知らない言葉が出てきた…[pse]

#
屋台や花火を満喫し、夏の思い出を作ることが出来た！[pse]

[jump storage="gakuen/gakuen_end_point.ks"]