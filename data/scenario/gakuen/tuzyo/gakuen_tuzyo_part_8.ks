*start
[isHeaderMostSize text="理科準備室のうわさ"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="memori" width="450" height="600" ]
#
授業が終わった後、めもりが話しかけてきた。 [p]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ねぇ、知ってる?理科準備室の怖～いうわさ...[p]

#&f.player_name
何それ？[p]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
昔この学校で、病気で亡くなっちゃった学生がいてね、科学部だったらしいんだ...[p] 

[chara_mod name=memori face=surprise time="1000" ]
#めもり
その人はこの世への未練で地縛霊になっちゃって、誰もいないはずの理科準備室に人影を見たって人がいるんだって...[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="こ、怖い..."   target="*gakuen_tuzyo_part_8_root_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="所詮噂でしょ？"   target="*gakuen_tuzyo_part_8_root_2" ]
[s]
*gakuen_tuzyo_part_8_root_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
[emb exp="f.player_name"]も気になるでしょ！実際に確かめに行くよ![p]

[chara_mod name=memori face="normal" time="1000" ]
#めもり
ここが理科準備室だよ！[p]

#
めもりに連れてこられた準備室は、薄暗くて中々に雰囲気がある...[p]

#&f.player_name
ぶ、不気味だなぁ...[p]

#
（ガタンッ！）[p]

#
急に入り口の扉が大きな音を立てて閉まった！[p]

#&f.player_name
？！[p]

#
（ガタガタガタッ！）[p]

#
それと同時に掃除用具入れが音を立てながら揺れ始めた！[p]

#
(ガタガタッ！)[p]

#
(バンッ！)[p]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
ぐお～～～！！！！！[p]

#&f.player_name
うわぁっ？！[p]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
ドッキリ大成功！！驚いた？！驚いた？！[p]

#&f.player_name
め、めもり...?[p]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
いや～、[emb exp="f.player_name"]の驚いた顔最高だよ！噂なんて作り話に決まっ...て...[p]        

#
めもりがある一点を見つめると、みるみる顔が青ざめていく...[p]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
お化け～～～～～？！！！！[p]

#
絶叫しながら走って準備室から出て行ってしまった...いったい何を見たのだろうか...[p] 

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_8_root_2
[chara_mod name=memori face=normal time="1000" ]
#めもり
も～！噂だから気になるんでしょ！来てくれないと成り立たないよ！![p]

#&f.player_name
成り立たない?[p]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
あっ...成り立たないていうか...うまくいかないっていうか...[p]

#&f.player_name
うまくいかない?[p]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
うぐ...[p]

#&f.player_name
もしかして、何か企んでた?[p]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
ゴ、ゴメンナサイ...[p]

#
めもりのいたずら作戦は失敗に終わったのだった...[p]


[jump storage="gakuen/gakuen_end_point.ks"]