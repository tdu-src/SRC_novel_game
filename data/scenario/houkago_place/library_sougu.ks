*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]
[wait time=1000]
[iscript]
f.park+=f.special_houkagoevent;
[endscript]
[if exp="f.park_special_flag=='true'"]
[jump target="*librarysougu_shortpart"]
[endif]

#
放課後、新聞契約の特典でもらった優待券で、美術館に来ていた。[pse]

#&f.player_name
（～ん … 自分には芸術的すぎる…。）[pse]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
な だか難しそ～な顔をしてるね。[pse]

#&f.player_name
あっ、ツクリ！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
こ にちは。美術館、楽しめてる？[pse]

#&f.player_name
自分には正直難しくて…[pse]

#&f.player_name
ツクリはよくここに来るの？[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
～ 。創作に行き詰ったときに、いつもこの美術館に来る だ。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
（主人公）はど～？[pse]

#&f.player_name
自分は美術館自体ほと ど行ったことないかな…[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そ～な だ。じゃあ、私が案内してあげるよ。[pse]

#&f.player_name
いいの？！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
もちろ 。美術館の楽しみ方を教えてあげるね。[pse]

#
ツクリのガイドもあり、美術館を最大限楽しむことが出来た！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ここで終わりだね。美術館は満喫できた？[pse]

#&f.player_name
～ ！絵の楽しみ方を知れてよかったよ！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そ～だね。難しく見えるけど、構図とか色合いとか、注目してみると見えてくるものがたくさ ある だ。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
今度、違～美術館にも行ってみない？作品が変わると、また別の面白さが見えてくると思～よ。[pse]

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

#
ここは美術館の遭遇イベントのショートパートです[pse]


[jump storage="houkago_place/houkago_end.ks"]