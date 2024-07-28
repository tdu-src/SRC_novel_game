*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]
[iscript]
f.my_home+=f.special_houkagoevent;
[endscript]
[if exp="f.my_home_special_flag=='true'"]
[jump target="*myhomesougu_shortpart"]
[endif]


#
放課後、新聞契約の特典でもらった優待券で、美術館に来ていた。[p]

#&f.player_name
（～ん … 自分には芸術的すぎる…。）[p]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
な だか難しそ～な顔をしてるね。[p]

#&f.player_name
あっ、ツクリ！[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
こ にちは。美術館、楽しめてる？[p]

#&f.player_name
自分には正直難しくて…[p]

#&f.player_name
ツクリはよくここに来るの？[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
～ 。創作に行き詰ったときに、いつもこの美術館に来る だ。[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
（主人公）はど～？[p]

#&f.player_name
自分は美術館自体ほと ど行ったことないかな…[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そ～な だ。じゃあ、私が案内してあげるよ。[p]

#&f.player_name
いいの？！[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
もちろ 。美術館の楽しみ方を教えてあげるね。[p]

#
ツクリのガイドもあり、美術館を最大限楽しむことが出来た！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ここで終わりだね。美術館は満喫できた？[p]

#&f.player_name
～ ！絵の楽しみ方を知れてよかったよ！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そ～だね。難しく見えるけど、構図とか色合いとか、注目してみると見えてくるものがたくさ ある だ。[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
今度、違～美術館にも行ってみない？作品が変わると、また別の面白さが見えてくると思～よ。[p]

#&f.player_name
行きたい！[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
ふふ、約束だよ。一緒に楽しめる美術館を探しておくね。[p]

#
ツクリのガイドのおかげで、美術館を楽しむことが出来た！[p]

[iscript]
f.my_home_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhomesougu_shortpart

#
ここは美術館の遭遇イベントのショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]
