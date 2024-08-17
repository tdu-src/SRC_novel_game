*start
[ptext layer="1" x="0" y="0" size="40" text="雑学クイズ" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=normal time="1000" ]
#scout
問題です！メロンの生産量日本一の県は？！[p]

#&f.player_name
北海道！！[p]

[chara_mod name=scout face=smaile time="1000" ]
#scout
ぶぶー！正解は茨城県です！[p]

#&f.player_name
また負けた...[p]

#
休み時間、スカウトと雑学クイズをしていたが、結果は完敗だ...[p]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=normal time="1000" ]
#memori
ねぇねぇ、何してるの？！[p]

[chara_mod name=scout face=smaile time="1000" ]
#scout
雑学クイズです！結果は私の圧勝でしたけどね！あはは！[p]

#&f.player_name
うぐぐ...[p]

[chara_mod name=memori face=normal time="1000" ]
#memori
へ～！面白そう！[p]

#
スカウトは完全に調子に乗っている... 何とか一矢報いる方法はないだろうか...[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="めもり、任せた！"   target="*gakuen_tuzyo_part_14_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="泣きのもう一回！"   target="*gakuen_tuzyo_part_14_2" ]
[s]
*gakuen_tuzyo_part_14_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#memori
わかった！クイズは得意なんだよ！[p]

[chara_mod name=scout face=smaile time="1000" ]
#scout
ふふふ、それはどうですかねぇ...！[p]

[chara_mod name=scout face=normal time="1000" ]
#scout
問題です！しめじの生産量日本一の県は？！[p]

[chara_mod name=memori face=normal time="1000" ]
#memori
長野県！[p]

[chara_mod name=scout face=surprise time="1000" ]
#scout
なっ、やるじゃないですか...！[p]

[chara_mod name=memori face=smaile time="1000" ]
#memori
えへへ～！そんなの朝飯前だよ！[p]

[chara_mod name=scout face=surprise time="1000" ]
#scout
じゃ、じゃあ... スロバキアの首都は？！[p]

[chara_mod name=memori face=normal time="1000" ]
#memori
ブラチスラバ！[p]

[chara_mod name=scout face="half_sad" time="1000" ]
#scout
ぐぬぬ... p-キシレンの化学式は？！[p]

[chara_mod name=memori face=smaile time="1000" ]
#memori
C6H4(CH3)2！！[p]

[chara_mod name=scout face=half_sad time="1000" ]
#scout
[emb exp="f.player_name"]さんの右腕のほくろの数は？！[p]

[chara_mod name=memori face=smaile time="1000" ]
#memori
６つ！[p]

#&f.player_name
何で知ってるの？！[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_14_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

[chara_mod name=scout face=smaile time="1000" ]
#scout
いいですよ？何回やっても結果は同じですけどね？！[p]

#&f.player_name
どんと来い！[p]

#&f.player_name
...[p]

[chara_mod name=memori face=normal time="1000" ]
#memori
長野県！[p]

[chara_mod name=scout face=normal time="1000" ]
#scout
なっ！めもりさん、やるじゃないですか...！[p]

[chara_mod name=memori face=smaile time="1000" ]
#memori
えへへ～！これぐらい朝飯前だよ！[p]

[chara_mod name=scout face=perplexed time="1000" ]
#scout
じゃ、じゃあ... スロバキアの首都は？！[p]

#&f.player_name
...[p]

[chara_mod name=memori face=normal time="1000" ]
#memori
ブラチスラバ！[p]

[chara_mod name=scout face=surprise time="1000" ]
#scout
ぐぬぬ... p-キシレンの化学式は？！[p]

#&f.player_name
めもり！！[p]

[chara_mod name=memori face=smaile time="1000" ]
#memori
C6H4(CH3)2！！[p]

[chara_mod name=scout face="half_sad" time="1000" ]
#scout
なんでめもりさんが全部答えてるんですか！！[p]

#
クイズを通して、めもりの雑学知識の多さを知ることになった...[p]

[jump storage="gakuen/gakuen_end_point.ks"]