*start
[isHeaderMostSize text="理科準備室のうわさ"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="memori" width="450" height="600" ]
#
授業が終わった後、めもりが話しかけてきた。 [s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ねぇ、知ってる?理科準備室の怖～いうわさ...[pse]

#&f.player_name
何それ？[pse]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
昔この学校で、病気で亡くなっちゃった学生がいてね、科学部だったらしいんだ...[pse] 

[chara_mod name=memori face=surprise time="1000" ]
#めもり
その人はこの世への未練で地縛霊になっちゃって、誰もいないはずの理科準備室に人影を見たって人がいるんだって...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="こ、怖い..."   target="*gakuen_tuzyo_part_8_root_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="所詮噂でしょ？"   target="*gakuen_tuzyo_part_8_root_2" ]
[s]
*gakuen_tuzyo_part_8_root_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]


#
購買に移った[pse]
[chara_mod name=memori face=smaile time="1000" ]

#めもり
[emb exp="f.player_name"]も気になるでしょ！実際に確かめに行くよ![pse]

[isTimePassage]
[chara_mod name=memori face="normal" time="1000" ]
#めもり
ここが理科準備室だよ！[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


#
めもりに連れてこられた準備室は、薄暗くて中々に雰囲気がある...[pse]

#&f.player_name
ぶ、不気味だなぁ...[pse]

#
（ガタンッ！）[pse]

#
急に入り口の扉が大きな音を立てて閉まった！[pse]

#&f.player_name
？！[pse]

#
（ガタガタガタッ！）[pse]

#
それと同時に掃除用具入れが音を立てながら揺れ始めた！[pse]

#
(ガタガタッ！)[pse]

#
(バンッ！)[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
ぐお～～～！！！！！[pse]

#&f.player_name
うわぁっ？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
ドッキリ大成功！！驚いた？！驚いた？！[pse]

#&f.player_name
め、めもり...?[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
いや～、[emb exp="f.player_name"]の驚いた顔最高だよ！噂なんて作り話に決まっ...て...[pse]        

#
めもりがある一点を見つめると、みるみる顔が青ざめていく...[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
お化け～～～～～？！！！！[pse]

#
絶叫しながら走って準備室から出て行ってしまった...いったい何を見たのだろうか...[pse] 

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_8_root_2
[chara_mod name=memori face=normal time="1000" ]
#めもり
も～！噂だから気になるんでしょ！来てくれないと成り立たないよ！![pse]

#&f.player_name
成り立たない?[pse]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
あっ...成り立たないていうか...うまくいかないっていうか...[pse]

#&f.player_name
うまくいかない?[pse]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
うぐ...[pse]

#&f.player_name
もしかして、何か企んでた?[pse]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
ゴ、ゴメンナサイ...[pse]

#
めもりのいたずら作戦は失敗に終わったのだった...[pse]


[jump storage="gakuen/gakuen_end_point.ks"]