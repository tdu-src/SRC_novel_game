*start
[isHeader text="補習の危機"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="scout" time="1000" width="450" height="600" ]
[chara_show name="wakastuki" width="450" height="600"  time="1000"]



#スカウト
うわぁぁぁ～ん！助けてください～！！！[p]

#
授業終わり、スカウトが半泣きでこちらの方に向かってきた...[p]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
（どうしたの...？）[p]
[chara_show name="scout" width="450" height="600" time="1000"  ]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
数学の小テストがひどい点数だったんです！次もひどかったら補習になっちゃいます！[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
数学かぁ... 一番厄介な科目だよね...[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
うぅ.... 何か一晩で最強になれる方法とかないんですか！[p]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
それはこっちが知りたいくらいだよ... [p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
そんなぁ！[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="地道にコツコツと！"  target="*gakuen_tuzyo_part_1_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="解法暗記で切り抜ける！"  target="*gakuen_tuzyo_part_1_2" ]     
[s]
*gakuen_tuzyo_part_1_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
やっぱりそうだよね。絶対その方が身に付くだろうし。[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ほ、ほんとに一からやるんですか...？[p]

[chara_mod name=wakastuki face=smaile time="1000" ]
#ワカツキ
うん。楽はできないと思った方がいいよ。[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ひぃぃ！[p]

#
二人のスパルタ指導を受けたスカウトは、無事に補習を回避できたのだった...[p]

*gakuen_tuzyo_part_1_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#スカウト
やっぱりそれしかありません！徹夜で詰め込みます！！[p]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
ほんとにその方法で大丈夫なの...？[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
もう背に腹は代えられません！やるしかないんですよ！[p]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
最初からやっておけばよかったのでは？[p]

#
スカウトは補習は回避できたが、次の小テストで同じように二人に泣きついてくるのであった...[p]

[jump storage="gakuen/gakuen_end_point.ks"]