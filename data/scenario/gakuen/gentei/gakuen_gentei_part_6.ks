*start
;お正月
[ptext layer="1" x="0" y="0" size="40" text="初詣!" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]
[eval exp="f.tsukiri+=f.gakuen_tuzyou_koukando"]

#
元旦の朝、近くの神社に初詣に来た！[p]


[chara_show name="scout" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
あ、[emb exp="f.player_name"]さん！明けましておめでとうござい ます！[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
明けましておめでとう。[p]

#&f.player_name
奇遇だね！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
私たちもさっき偶然会ったとこなんだ。[p]        

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
それで、これからお参りに行くところだったんです ！[emb exp="f.player_name"]さんも一緒に行きますよ！[p]        

#&f.player_name
行こう！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
並ぶの、すごく時間かかったね。[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
皆さんは何をお願いしましたか？！私は億万長者に なれるようにお願いしましたよ！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あれ、お願い事って言ったら叶わないんじゃなかっ た？[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
あ゛っっ！！忘れてました...[p]

#
（あと、初詣でやり残したことといえば...！）[p] 

#&f.player_name
皆でおみくじひかない？[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
いいね。みんなで引きにいこう。[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
これ、好きなところからおみくじを引く形式らしい ですよ！みんなでこの中から引きましょう！[p]    

#&f.player_name
どこから引こうかな...？[p]


[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="上の箱！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_6_1" ]      
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="真ん中の箱！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_6_2" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="下の箱！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_6_3" ]
[s]
*gakuen_gentei_part_6_1
[chara_mod name=scout face=normal time="1000" ]
#スカウト
みんな引けましたね！それじゃあ開きますよ！[p]


#&f.player_name
せーの！[p]

#
自分が引いたのは...[p]

#&f.player_name
中吉だ！[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
私も中吉でした！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ん、私も中吉だったよ。[p]

#&f.player_name
みんなお揃いだね！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
今年も良い一年になりそうです！[p]

#
初詣に行って、年初に順調なスタートを切ることが出来た！[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_6_2
#&f.player_name
せーの！[p]

#
自分が引いたのは...[p]

#&f.player_name
凶だ...[p]

;煽り
[chara_mod name=scout face="normal" time="1000" ]  
#スカウト
あははは！[emb exp="f.player_name"]さん、凶引いてるじゃないで すか！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
まぁ、きっといいことあるはずだよ。[p]

#&f.player_name
とほほ...[p]

#
初詣に行ったが、年初に幸先の悪いスタートを切ることになった...[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_6_3
#&f.player_name
せーの！[p]

#
自分が引いたのは...[p]

#&f.player_name
大吉だ！[p]

[chara_mod name=wakastuki face="sad" time="1000" ]
#ワカツキ
うわっ！ずるいです[emb exp="f.player_name"]さん！私のと交換し てください！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
今年は良い一年になりそうだね、[emb exp="f.player_name"]。[p]      

#&f.player_name
うん！[p]

#
初詣に行って、年初に最高のスタートを切ることが出来た！[p]


[jump storage="gakuen/gakuen_end_point.ks"]