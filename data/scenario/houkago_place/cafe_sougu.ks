*start
[bg storage="rouka.jpg" time="100" ]
[isHeaderLeastSize text="カフェ"]
[iscript]
//パラメータの増加
f.cafe+=f.special_houkagoevent;
[endscript]
;分岐のための処理
[if exp="f.cafe_special_flag=='true'"]
[jump target="*cafesougu_shortpart"]
[endif]

#
放課後、特にあてもなくふらふらと道を歩いていた。[p]

#&f.player_name
この通りは滅多に通らないから、何か新鮮だなぁ…[p]

#&f.player_name
あ、こんなところにカフェが…[p]

#
始めて見たカフェだが、なかなかに雰囲気が良さそうだ…[p]

#&f.player_name
入ってみようかな…？[p]

[bg storage="../fgimage/houkago_selector_image/background/cafe_background.jpg"]
[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=surprise time="1000" ]
#スカウト
あれ、（主人公）さんじゃないですか！[p]

#&f.player_name
スカウト？！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
奇遇ですね！私のイチオシのカフェで出会うとは！[p]

#&f.player_name
スカウトはよくここに来るの？[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
はい！ここのドーナツが本当に絶品なんです！[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
そうだ！私の頼んだドーナツ、一つ食べてみませんか？[p]

#&f.player_name
え、いいの？[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
はい！一度味わってみてほしいので！[p]

#&f.player_name
じゃあ、いただきます！[p]

#
もぐもぐ…[p]

#&f.player_name
す…すごく美味しい！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ふふふ、それは良かったです！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
今度暇なとき、また行きましょうね！[p]

#&f.player_name
ありがとう！次は何か奢るよ！[p]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
えっ、いいんですか？！[p]

#&f.player_name
もちろん！なんでも奢るよ！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
やった～！私、ここの爆盛りフルーツパンケーキが気になってたんです！[p]

#&f.player_name
えっ[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
絶対に約束ですからね！いや～、楽しみですね（主人公）さん！[p]

#&f.player_name
ソ、ソウダネ…[p]

#
次にカフェに行くまでに、お金を貯めておこうと心に誓った…[p]


[iscript]
f.cafe_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*cafesougu_shortpart

#
ここは遭遇イベントショートパートのカフェです[p]

[jump storage="houkago_place/houkago_end.ks"]
