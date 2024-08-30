*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]

[isHeaderLeastSize text="美術館"]

[wait time=1000]

[iscript]
f.park+=f.special_houkagoevent;
[endscript]
[if exp="f.park_special_flag=='true'"]
[jump target="*librarysougu_shortpart"]
[endif]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、新聞契約の特典でもらった優待券で、美術館に来ていた。[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]


#&f.player_name
（う～ん … 自分には芸術的すぎる…。）[pse]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
なんだか難しそ～な顔をしてるね。[pse]

#&f.player_name
あっ、ツクリ！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
こんにちは。美術館、楽しめてる？[pse]

#&f.player_name
自分には正直難しくて…[pse]

#&f.player_name
ツクリはよくここに来るの？[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん。創作に行き詰ったときに、いつもこの美術館に来るんだ。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
[emb exp="f.player_name"]はどう？[pse]

#&f.player_name
自分は美術館自体ほと ど行ったことないかな…[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そ～なんだ。じゃあ、私が案内してあげるよ。[pse]

#&f.player_name
いいの？！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
もちろん。美術館の楽しみ方を教えてあげるね。[pse]

#
ツクリのガイドもあり、美術館を最大限楽しむことが出来た！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ここで終わりだね。美術館は満喫できた？[pse]

#&f.player_name
うん！絵の楽しみ方を知れてよかったよ！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そうだね。難しく見えるけど、構図とか色合いとか、注目してみると見えてくるものがたくさんあるんだ。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
今度、違う美術館にも行ってみない？作品が変わると、また別の面白さが見えてくると思うよ。[pse]

#&f.player_name
行きたい！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
ふふ、約束だよ。一緒に楽しめる美術館を探しておくね。[pse]

#
ツクリのガイドのおかげで、美術館を楽しむことが出来た！[pse]


[iscript]
f.park_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*librarysougu_shortpart
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
ここは美術館の遭遇イベントのショートパートです[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]



[jump storage="houkago_place/houkago_end.ks"]