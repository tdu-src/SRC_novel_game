*start
[ptext layer="1" x="0" y="0" size="40" text="美術の時間" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
今日の美術はデッサンだ。モデルを見ながら描くが、なかなか難しい...[p]

[chara_show name="tsukuri"width="450" height="600"  time="1000" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#tsukuri
どう、描けてる？[p]

#&f.player_name
あんまり自信ないかな...[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#tsukuri
ふ～ん... でも、結構いい感じじゃない？影とかしっかり描けてるし。[p]

#&f.player_name
そっちのも見せて！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#tsukuri
いいよ、まだ完成はしてないけど。[p]

#
日々イラストを嗜んでいるツクリのデッサンは、プロ顔負けのクオリティだった...[p]

#&f.player_name
凄すぎる...[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#tsukuri
そこまででもないよ。さっと書いただけだし。[p]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#memori
ねえねえ！めもりの描いたのも見てー！[p]

#
めもりも描いていたデッサンを見せてきた。[p]

#&f.player_name
こ、これは...[p]

#
あまりにもモデルに近く、この短時間で描けるようなレベルではない... まさか...[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="めもりに天性の才能が..."   target="*gakuen_tuzyo_part_15_1" ]   
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="ズル、した...?"   target="*gakuen_tuzyo_part_15_2" ]
[s]
*gakuen_tuzyo_part_15_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#memori
そう！めもりは千年に一度の画家なんだよ...[p]

[chara_mod name=tsukuri face=weariness time="1000" ]
#tsukuri
いや、これもはや印刷でしょ...[p]

[chara_mod name=memori face=perplexed time="1000" ]
#memori
ギクッ！い、インサツナワケナイジャン...[p]

#&f.player_name
ズルしたの？[p]

[chara_mod name=memori face=sad time="1000" ]
#memori
か、描きなおしてきます...[p]

#
めもりは項垂れながらデッサンを描きなおしていた..[p]

[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_15_2
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=perplexed time="1000" ]
#memori
ギクッ！ず、ズルナンカシテナイヨ...[p]

[chara_mod name=tsukuri face=weariness time="1000" ]
#tsukuri
いや、この時間でこれは流石に...[p]

#&f.player_name
何使ったの？[p]

[chara_mod name=memori face="sad" time="1000" ]
#memori
う...の発明品のどこでも印刷くんＺを使いました...[p]

[chara_mod name=tsukuri face=weariness time="1000" ]
#tsukuri
プリントアウトしてる...[p]

#
めもりはその後先生にも見つかり、こっぴどく叱られていた...[p]

[jump storage="gakuen/gakuen_end_point.ks"]

