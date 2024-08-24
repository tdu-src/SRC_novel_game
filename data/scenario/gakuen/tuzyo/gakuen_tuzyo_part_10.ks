*start
[ptext layer="1" x="0" y="0" size="40" text="ポスターのデザイン" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="tsukuri" width="450" height="600" ]

[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face="angry" time="1000" ]
#めもり
ちーがーうー！絶対この方がいいって！！[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
いやいや、さすがにこれは譲れないよ。[pse]

#
何やら、めもりとツクリが揉めている...[pse]

#&f.player_name
どうしたの？[pse]

[chara_mod name=memori face="angry" time="1000" ]
#めもり
あっ、[emb exp="f.player_name"]！今委員会のポスターのデザインを決めてるんだけど、よくツクリがわかんないことばっかり言うの！！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
デザインには守らなくちゃいけないルールがあるんだって言ってるだけだよ。[pse]

[chara_mod name=memori face="angry" time="1000" ]
#めもり
おっきい文字入れたほうが絶対いいに決まってるじゃん！[pse]

#
このままでは収拾がつかなさそうだ...どうしたものか...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="妥協案を出す"   target="*gakuen_tuzyo_part_10_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="自分の案はどう？"   target="*gakuen_tuzyo_part_10_2" ]
[s]
*gakuen_tuzyo_part_10_1
#&f.player_name
二人のいいところを入れてみたら？[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
...そうだね、めもりの言ってたことも一理あるし。[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
おたがいのいいところを見つけてみるのがいいかも！[pse]

#
二人の良い点を探しあい、それを参考に最高のポスターを完成させることが出来た[pse]     

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_10_2
#
二人のポスターを見て、自分なりのポスターをさっとデザインして見せた...[pse]

#&f.player_name
こんなのはどう？[pse]

[chara_mod name=memori face=weariness time="1000" ]
#めもり
...なんか違う。[pse]

#&f.player_name
えっ[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん、ちょっと悪いとこが目立つかもね。例えばここは...[pse]

#
自分のイマイチなポスターを見たツクリとめもりは、それをヒントにポスターを改善できたのだった...[pse]


[jump storage="gakuen/gakuen_end_point.ks"]