*start
[ptext layer="1" x="0" y="0" size="40" text="金欠問題" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#&f.player_name
お、お金がない...[p]

#
限られたお小遣いでやりくりしていたが、ついに財布の底が尽きてしまった...[p]


[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
どうしたの、そんなしょんぼりした顔して。[p]

#&f.player_name
最近金欠で...[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あ～、金欠なんだ。私は創作用の機材のためにバイトしてるよ。[p]

#&f.player_name
どんなバイトしてるの？[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
カフェのバイト。千住庵ってところなんだけど、知ってる？[p]

#&f.player_name
知ってる！[p]

#
千住庵はこの辺でも有名なカフェだ。平日でも並ばないと入れないぐらいの人気だ...[p]  

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
それでさ、最近バイトが足りないてないらしいんだよね。良かったら紹介するよ。[p]     


[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="いいの？！"   target="*gakuen_tuzyo_part_11_1" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="バイトする暇が..."   target="*gakuen_tuzyo_part_11_2" ]
[s]
*gakuen_tuzyo_part_11_1
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
うん、もちろん。短期でも長期でも歓迎してくれると思うよ。[p]

#&f.player_name
ありがとう！[p]

#
その後の週末、仕事は激務だったが、無事金欠を乗り切ることが出来た！[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_11_2
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あ～、それならしょうがないね。[p]

#
そういうと、ツクリは自販機でジュースを買い、こっちに差し出してきた...[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
はい、これ。[p]

#&f.player_name
さ、さすがに悪いよ！[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
大丈夫。第一、あんなにしょんぼりしてる人をほっておけないでしょ？[p]

#&f.player_name
ありがとう...[p]

#
ツクリの優しさを身に染みて感じた...[p]

[jump storage="gakuen/gakuen_end_point.ks"]