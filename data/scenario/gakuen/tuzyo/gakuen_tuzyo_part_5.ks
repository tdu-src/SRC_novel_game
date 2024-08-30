*start
[isHeaderMostSize text="流行りのスマホゲーム"]

[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="tsukuri" width="450" height="600" ]
[chara_show name="wakastuki" width="450" height="600" ]

#
昼休み、ご飯を食べ終えてゆっくりしていると、ツクリが話しかけてきた。[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

#ツクリ
ねぇねぇ、昨日新しいスマホゲームが出たんだけど、いっしょにやらない？[pse]

#&f.player_name
（新しいスマホゲーム？）[pse]

#ツクリ
うん、『マジックスクランブル』っていう魔法と銃を合わせた FPS ゲームなんだ。[pse]

#ワカツキ
私もやってる。スマホゲームなのに意外と本格派なんだよね。[pse]


[isTimePassage2]
#
#&f.player_name
やってみる！[s]
*Timepassage2
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
右の敵倒した！[pse]

#ツクリ
スキル使った！攻撃して！[pse]

#ワカツキ
回復足りない！先に回復したほうがいいかも！[pse]

#
三人でゲームをはじめ、試合は最終盤だ！ピンチだけどもう少しで倒せそう・・・[pse]

#
次の行動を決めなければ![pse]

[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="攻撃して倒しきる！"   target="gakuen_tuzyo_part_5_root_1"]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text=" 回復して体制を整える！"   target="*gakuen_tuzyo_part_5_root_2" ]
[s]



*gakuen_tuzyo_part_5_root_1
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

#ツクリ
もう少しで倒せる...！今！[pse]

#
（ズドドドド！！）[pse]

#
ツクリのキャラが一気に畳みかけ、敵を撃破した。[pse]

#&f.player_name
勝った！[pse]

#ワカツキ
ふぅ... 危なかった... なかなか白熱したね。[pse]

#ツクリ
スマホゲームにはうるさい方だけど、これはハマりそうかも...![pse]

#
三人は無事マジックスクランブルの沼にはまり、毎晩の日課になった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_5_root_2
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

#ワカツキ
一回体勢を整えるよ！[pse]

#
メモリの采配でチームの体勢を立て直し、無事敵を撃破した![pse]

#&f.player_name
勝った！[pse]

#ツクリ
スマホゲームにはうるさい方だけど、これはハマりそうかも...! [pse]

#
三人は無事マジックスクランブルの沼にはまり、毎晩の日課になった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]