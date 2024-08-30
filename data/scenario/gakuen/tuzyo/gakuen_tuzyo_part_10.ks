*start
[isHeaderMostSize text="ポスターのデザイン"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="tsukuri" width="450" height="600" ]

[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face="angry" time="1000" ]
#めもり
ちーがーうー！絶対この方がいいって！！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
いやいや、さすがにこれは譲れないよ。[p]

#
何やら、めもりとツクリが揉めている...[p]

#&f.player_name
どうしたの？[p]

[chara_mod name=memori face="angry" time="1000" ]
#めもり
あっ、[emb exp="f.player_name"]！今委員会のポスターのデザインを決めてるんだけど、よくツクリがわかんないことばっかり言うの！！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
デザインには守らなくちゃいけないルールがあるんだって言ってるだけだよ。[p]

[chara_mod name=memori face="angry" time="1000" ]
#めもり
おっきい文字入れたほうが絶対いいに決まってるじゃん！[p]

#
このままでは収拾がつかなさそうだ...どうしたものか...[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="妥協案を出す"   target="*gakuen_tuzyo_part_10_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="自分の案はどう？"   target="*gakuen_tuzyo_part_10_2" ]
[s]
*gakuen_tuzyo_part_10_1
#&f.player_name
二人のいいところを入れてみたら？[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
...そうだね、めもりの言ってたことも一理あるし。[p]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
おたがいのいいところを見つけてみるのがいいかも！[p]

#
二人の良い点を探しあい、それを参考に最高のポスターを完成させることが出来た[p]     

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_10_2
#
二人のポスターを見て、自分なりのポスターをさっとデザインして見せた...[p]

#&f.player_name
こんなのはどう？[p]

[chara_mod name=memori face=weariness time="1000" ]
#めもり
...なんか違う。[p]

#&f.player_name
えっ[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん、ちょっと悪いとこが目立つかもね。例えばここは...[p]

#
自分のイマイチなポスターを見たツクリとめもりは、それをヒントにポスターを改善できたのだった...[p]


[jump storage="gakuen/gakuen_end_point.ks"]