*start
[bg storage="room.jpg" time="1000"  ]
[isHeader text="雑学クイズ"]
[playbgm storage="../bgm/SofucharaHappenning.mp3" ]

[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=normal time="1000" ]
#スカウト
問題です！メロンの生産量日本一の県は？！[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
北海道！！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ぶぶー！正解は茨城県です！[pse]

#&f.player_name
また負けた...[pse]

#
休み時間、スカウトと雑学クイズをしていたが、結果は完敗だ...[pse]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=normal time="1000" ]
#めもり
ねぇねぇ、何してるの？！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
雑学クイズです！結果は私の圧勝でしたけどね！あはは！[pse]

#&f.player_name
うぐぐ...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
へ～！面白そう！[pse]

#
スカウトは完全に調子に乗っている... 何とか一矢報いる方法はないだろうか...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="めもり、任せた！"   target="*gakuen_tuzyo_part_14_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="泣きのもう一回！"   target="*gakuen_tuzyo_part_14_2" ]
[s]
*gakuen_tuzyo_part_14_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
わかった！クイズは得意なんだよ！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ふふふ、それはどうですかねぇ...！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
問題です！しめじの生産量日本一の県は？！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
長野県！[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
なっ、やるじゃないですか...！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
えへへ～！そんなの朝飯前だよ！[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
じゃ、じゃあ... スロバキアの首都は？！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ブラチスラバ！[pse]

[chara_mod name=scout face="half_sad" time="1000" ]
#スカウト
ぐぬぬ... p-キシレンの化学式は？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
C6H4(CH3)2！！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
[emb exp="f.player_name"]さんの右腕のほくろの数は？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
６つ！[pse]

#&f.player_name
何で知ってるの？！[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_14_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
いいですよ？何回やっても結果は同じですけどね？！[pse]

#&f.player_name
どんと来い！[pse]

#&f.player_name
...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
長野県！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
なっ！めもりさん、やるじゃないですか...！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
えへへ～！これぐらい朝飯前だよ！[pse]

[chara_mod name=scout face=perplexed time="1000" ]
#スカウト
じゃ、じゃあ... スロバキアの首都は？！[pse]

#&f.player_name
...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ブラチスラバ！[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
ぐぬぬ... p-キシレンの化学式は？！[pse]

#&f.player_name
めもり！！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
C6H4(CH3)2！！[pse]

[chara_mod name=scout face="half_sad" time="1000" ]
#スカウト
なんでめもりさんが全部答えてるんですか！！[pse]

#
クイズを通して、めもりの雑学知識の多さを知ることになった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]