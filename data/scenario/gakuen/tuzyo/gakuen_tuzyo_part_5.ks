*start
[ptext layer="1" x="0" y="0" size="40" text="流行りのスマホゲーム" name="align_ct_h" bold="true"  face="Arial"]

[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="tsukuri" width="450" height="600" ]
[chara_show name="wakastuki" width="450" height="600" ]

#
昼休み、ご飯を食べ終えてゆっくりしていると、ツクリが話しかけてきた。[p]

#ツクリ
ねぇねぇ、昨日新しいスマホゲームが出たんだけど、いっしょにやらない？[p]

#&f.player_name
（新しいスマホゲーム？）[p]

#ツクリ
うん、『マジックスクランブル』っていう魔法と銃を合わせた FPS ゲームなんだ。[p]

#ワカツキ
私もやってる。スマホゲームなのに意外と本格派なんだよね。[p]

#&f.player_name
やってみる！[p]

#
（時間経過）[p]

#&f.player_name
右の敵倒した！[p]

#ツクリ
スキル使った！攻撃して！[p]

#ワカツキ
回復足りない！先に回復したほうがいいかも！[p]

#
三人でゲームをはじめ、試合は最終盤だ！ピンチだけどもう少しで倒せそう・・・[p]

#
次の行動を決めなければ![p]

[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="攻撃して倒しきる！"   target="gakuen_tuzyo_part_5_root_1"]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text=" 回復して体制を整える！"   target="*gakuen_tuzyo_part_5_root_2" ]
[s]



*gakuen_tuzyo_part_5_root_1
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

#ツクリ
もう少しで倒せる...！今！[p]

#
（ズドドドド！！）[p]

#
ツクリのキャラが一気に畳みかけ、敵を撃破した。[p]

#&f.player_name
勝った！[p]

#ワカツキ
ふぅ... 危なかった... なかなか白熱したね。[p]

#ツクリ
スマホゲームにはうるさい方だけど、これはハマりそうかも...![p]

#
三人は無事マジックスクランブルの沼にはまり、毎晩の日課になった...[p]

[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_5_root_2
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

#ワカツキ
一回体勢を整えるよ！[p]

#
メモリの采配でチームの体勢を立て直し、無事敵を撃破した![p]

#&f.player_name
勝った！[p]

#ツクリ
スマホゲームにはうるさい方だけど、これはハマりそうかも...! [p]

#
三人は無事マジックスクランブルの沼にはまり、毎晩の日課になった...[p]

[jump storage="gakuen/gakuen_end_point.ks"]