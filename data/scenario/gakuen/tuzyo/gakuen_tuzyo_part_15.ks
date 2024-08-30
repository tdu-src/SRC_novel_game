*start
[ptext layer="1" x="0" y="0" size="40" text="美術の時間" name="align_ct_h"]
[playbgm storage="../bgm/SofucharaHappenning.mp3" ]

#
今日の美術はデッサンだ。モデルを見ながら描くが、なかなか難しい...[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="tsukuri"width="450" height="600"  time="1000" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
どう、描けてる？[pse]

#&f.player_name
あんまり自信ないかな...[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふ～ん... でも、結構いい感じじゃない？影とかしっかり描けてるし。[pse]

#&f.player_name
そっちのも見せて！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
いいよ、まだ完成はしてないけど。[pse]

#
日々イラストを嗜んでいるツクリのデッサンは、プロ顔負けのクオリティだった...[pse]

#&f.player_name
凄すぎる...[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
そこまででもないよ。さっと書いただけだし。[pse]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
ねえねえ！めもりの描いたのも見てー！[pse]

#
めもりも描いていたデッサンを見せてきた。[pse]

#&f.player_name
こ、これは...[pse]

#
あまりにもモデルに近く、この短時間で描けるようなレベルではない... まさか...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="めもりに天性の才能が..."   target="*gakuen_tuzyo_part_15_1" ]   
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="ズル、した...?"   target="*gakuen_tuzyo_part_15_2" ]
[s]
*gakuen_tuzyo_part_15_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そう！めもりは千年に一度の画家なんだよ...[pse]

[chara_mod name=tsukuri face=weariness time="1000" ]
#ツクリ
いや、これもはや印刷でしょ...[pse]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
ギクッ！い、インサツナワケナイジャン...[pse]

#&f.player_name
ズルしたの？[pse]

[chara_mod name=memori face=sad time="1000" ]
#めもり
か、描きなおしてきます...[pse]

#
めもりは項垂れながらデッサンを描きなおしていた..[pse]

[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_15_2
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=perplexed time="1000" ]
#めもり
ギクッ！ず、ズルナンカシテナイヨ...[pse]

[chara_mod name=tsukuri face=weariness time="1000" ]
#ツクリ
いや、この時間でこれは流石に...[pse]

#&f.player_name
何使ったの？[pse]

[chara_mod name=memori face="sad" time="1000" ]
#めもり
う...の発明品のどこでも印刷くんＺを使いました...[pse]

[chara_mod name=tsukuri face=weariness time="1000" ]
#ツクリ
プリントアウトしてる...[pse]

#
めもりはその後先生にも見つかり、こっぴどく叱られていた...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]

