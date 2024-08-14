*start
[ptext layer="1" x="0" y="0" size="40" text="体育祭にて" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#
今日は毎年恒例の体育祭の日だ！[pse]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぜぇ...ぜぇ... ごほっ...！げほっ...！[pse]

#
借り物競争を終えたスカウトが、席に戻ってきた。[pse]

#&f.player_name
大丈夫？[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
大丈夫に見えますか...?インドア派に体育祭なんてやらせるもんじゃありません…[pse]


[chara_hide name="scout" width="450" height="600" ]
#
（次の競技は、学年対抗リレーです。）[pse]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
あっ！リレーですよ！さんが代表の！[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
#
ワカツキはトップランナーとして走る準備をしている。しかし…[pse]


[chara_show name="scout" width="450" height="600" ]

[chara_hide name="wakastuki" width="450" height="600" ]
#&f.player_name
緊張してるみたい…[pse]

[chara_mod name=scout face=perplexed time="1000" ]
#スカウト
そうですねぇ… なんかいつもより表情が硬いですし…[pse]

#
足の速さで代表に選ばれたワカツキだが、こういった場には慣れていないのかもしれない…[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
[emb exp="f.player_name"]さん！こんな時こそ私たちが応援してあげなくては！[pse]

#&f.player_name
確かに…！[pse]

#
友達が困っている… 自分に何かできることは無いだろうか…！[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="１. 大きな声で応援！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_2_1" ]      
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="２. 全力でアピール！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_2_2" ]      
[s]
*gakuen_gentei_part_2_1
#&f.player_name
うおぉぉ！！ワカツキー！！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ワカツキさーーーん！！！[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
？！[pse]

#
ワカツキはこちらの声に気づいたようだ！[pse]


[chara_hide name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#&f.player_name
頑張れーーー！！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ワカツキさーーん！！よっ！ソフケン学園のウサイン・ボルト！[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
;恥じ
[chara_mod name=wakastuki face="shy" time="1000" ]
#ワカツキ
ちょ、恥ずかしいんだけど…！[pse]


[chara_hide name="wakastuki" width="450" height="600" ]
#
こちらの声援が届いたおかげで、ワカツキの表情から緊張が消えたみたいだ！[pse]


[chara_show name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#
レース後、顔を赤くしたワカツキがこちらに近づいてきた！[pse]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
ちょっと…！さっきのマジで恥ずかしかったんだけど！[pse]

#&f.player_name
応援、ちゃんと届いてた？！[pse]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ] 
#ワカツキ
とっ、届いてたけど... ああいうのはホントに...！[pse]

#&f.player_name
よかった！[pse]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
あ゛～～！！もうっ！[pse]

#
渾身の応援で、ワカツキの力になれたようだ！[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_2_2
#
スカウトと自分は、全身を使ってアピールし始めた！[pse]

#&f.player_name
うおぉぉ！！ワ・カ・ツ・キー！！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ワカツキさーーーん！！！[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
？！[pse]


[chara_hide name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#&f.player_name
いけいけワカツキ！！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ＧＯＧＯワカツキさーーん！！！[pse]

#
自分は応援団顔負けの３・３・７拍子を、スカウトは隣でぴょんぴょんと跳ねている！[pse]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
ちょ、最悪なんだけど...！[pse]

#
周りの視線が明らかに痛いが、構わず続ける！[pse]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
～～！[pse]

#
ワカツキは顔を真っ赤にし、こっちを見ようとしない... 完全に他人の振りをし始めた...！[pse]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ワカツキさん、そんなに怒らなくても...[pse]

#
その後帰ってきたワカツキに、こっぴどく叱られるはめになった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
