*start
[bg storage="../fgimage/houkago_selector_image/background/cafe_background.jpg" time="100" ]

[isHeader text="カフェ" x="-460" width="300"]
[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]
[wait time=1000]

[iscript]
//パラメータの増加
f.cafe+=f.special_houkagoevent;
[endscript]
;分岐のための処理
[if exp="f.cafe_special_flag=='true'"]
[jump target="*cafesougu_shortpart"]
[endif]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、特にあてもなくふらふらと道を歩いていた。[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]


#&f.player_name
この通りは滅多に通らないから、何か新鮮だなぁ…[pse]

#&f.player_name
あ、こんなところにカフェが…[pse]

#
始めて見たカフェだが、なかなかに雰囲気が良さそうだ…[pse]

#&f.player_name
入ってみようかな…？[pse]

[bg storage="../fgimage/houkago_selector_image/background/cafe_background.jpg"]
[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=surprise time="1000" ]
#スカウト
あれ、[emb exp="f.player_name"]さんじゃないですか！[pse]

#&f.player_name
スカウト？！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
奇遇ですね！私のイチオシのカフェで出会うとは！[pse]

#&f.player_name
スカウトはよくここに来るの？[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
はい！ここのドーナツが本当に絶品なんです！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
そうだ！私の頼んだドーナツ、一つ食べてみませんか？[pse]

#&f.player_name
え、いいの？[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
はい！一度味わってみてほしいので！[pse]

#&f.player_name
じゃあ、いただきます！[pse]

#
もぐもぐ…[pse]

#&f.player_name
す…すごく美味しい！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ふふふ、それは良かったです！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
今度暇なとき、また行きましょうね！[pse]

#&f.player_name
ありがとう！次は何か奢るよ！[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
えっ、いいんですか？！[pse]

#&f.player_name
もちろん！なんでも奢るよ！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
やった～！私、ここの爆盛りフルーツパンケーキが気になってたんです！[pse]

#&f.player_name
えっ[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
絶対に約束ですからね！いや～、楽しみですね[emb exp="f.player_name"]さん！[pse]

#&f.player_name
ソ、ソウダネ…[pse]

#
次にカフェに行くまでに、お金を貯めておこうと心に誓った…[pse]


[iscript]
f.cafe_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*cafesougu_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
ここは遭遇イベントショートパートのカフェです[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

[jump storage="houkago_place/houkago_end.ks"]
