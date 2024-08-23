*start
;お正月
[ptext layer="1" x="0" y="0" size="40" text="初詣!" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

#
元旦の朝、近くの神社に初詣に来た！[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="scout" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
あ、[emb exp="f.player_name"]さん！明けましておめでとうござい ます！[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
明けましておめでとう。[pse]

#&f.player_name
奇遇だね！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
私たちもさっき偶然会ったとこなんだ。[pse]        

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
それで、これからお参りに行くところだったんです ！[emb exp="f.player_name"]さんも一緒に行きますよ！[pse]        

#&f.player_name
行こう！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
並ぶの、すごく時間かかったね。[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
皆さんは何をお願いしましたか？！私は億万長者に なれるようにお願いしましたよ！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あれ、お願い事って言ったら叶わないんじゃなかっ た？[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
あ゛っっ！！忘れてました...[pse]

#
（あと、初詣でやり残したことといえば...！）[pse] 

#&f.player_name
皆でおみくじひかない？[pse]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
いいね。みんなで引きにいこう。[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
これ、好きなところからおみくじを引く形式らしい ですよ！みんなでこの中から引きましょう！[pse]    

#&f.player_name
どこから引こうかな...？[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="上の箱！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_6_1" ]      
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="真ん中の箱！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_6_2" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="350"  text="下の箱！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_6_3" ]
[s]
*gakuen_gentei_part_6_1
[chara_mod name=scout face=normal time="1000" ]
#スカウト
みんな引けましたね！それじゃあ開きますよ！[pse]


#&f.player_name
せーの！[pse]

#
自分が引いたのは...[pse]

#&f.player_name
中吉だ！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
私も中吉でした！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ん、私も中吉だったよ。[pse]

#&f.player_name
みんなお揃いだね！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
今年も良い一年になりそうです！[pse]

#
初詣に行って、年初に順調なスタートを切ることが出来た！[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_6_2
#&f.player_name
せーの！[pse]

#
自分が引いたのは...[pse]

#&f.player_name
凶だ...[pse]

;煽り
[chara_mod name=scout face="normal" time="1000" ]  
#スカウト
あははは！[emb exp="f.player_name"]さん、凶引いてるじゃないで すか！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
まぁ、きっといいことあるはずだよ。[pse]

#&f.player_name
とほほ...[pse]

#
初詣に行ったが、年初に幸先の悪いスタートを切ることになった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_6_3
#&f.player_name
せーの！[pse]

#
自分が引いたのは...[pse]

#&f.player_name
大吉だ！[pse]

[chara_mod name=wakastuki face="sad" time="1000" ]
#ワカツキ
うわっ！ずるいです[emb exp="f.player_name"]さん！私のと交換し てください！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
今年は良い一年になりそうだね、[emb exp="f.player_name"]。[pse]      

#&f.player_name
うん！[pse]

#
初詣に行って、年初に最高のスタートを切ることが出来た！[pse]


[jump storage="gakuen/gakuen_end_point.ks"]