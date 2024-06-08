*start
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
今日は毎年恒例の体育祭の日だ！[p]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぜぇ...ぜぇ... ごほっ...！げほっ...！[p]

#
借り物競争を終えたスカウトが、席に戻ってきた。[p]

#&f.player_name
大丈夫？[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
大丈夫に見えますか...?インドア派に体育祭なんてやらせるもんじゃありません…[p]


[chara_hide name="scout" width="450" height="600" ]
#
（次の競技は、学年対抗リレーです。）[p]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
あっ！リレーですよ！さんが代表の！[p]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
#
ワカツキはトップランナーとして走る準備をしている。しかし…[p]


[chara_show name="scout" width="450" height="600" ]

[chara_hide name="wakastuki" width="450" height="600" ]
#&f.player_name
緊張してるみたい…[p]

[chara_mod name=scout face=perplexed time="1000" ]
#スカウト
そうですねぇ… なんかいつもより表情が硬いですし…[p]

#
足の速さで代表に選ばれたワカツキだが、こういった場には慣れていないのかもしれない…[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
 （主人公）さん！こんな時こそ私たちが応援してあげなくては！[p]

#&f.player_name
確かに…！[p]

#
友達が困っている… 自分に何かできることは無いだろうか…！[p]


[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="１. 大きな声で応援！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_2_1" ]      
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="２. 全力でアピール！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_2_2" ]      
[s]
*gakuen_gentei_part_2_1
#&f.player_name
うおぉぉ！！ワカツキー！！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ワカツキさーーーん！！！[p]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
？！[p]

#
ワカツキはこちらの声に気づいたようだ！[p]


[chara_hide name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#&f.player_name
頑張れーーー！！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ワカツキさーーん！！よっ！ソフケン学園のウサイン・ボルト！[p]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=wakastuki face=恥じ time="1000" ]
#ワカツキ
ちょ、恥ずかしいんだけど…！[p]


[chara_hide name="wakastuki" width="450" height="600" ]
#
こちらの声援が届いたおかげで、ワカツキの表情から緊張が消えたみたいだ！[p]


[chara_show name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#
レース後、顔を赤くしたワカツキがこちらに近づいてきた！[p]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
ちょっと…！さっきのマジで恥ずかしかったんだけど！[p]

#&f.player_name
応援、ちゃんと届いてた？！[p]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ] 
#ワカツキ
とっ、届いてたけど... ああいうのはホントに...！[p]

#&f.player_name
よかった！[p]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
あ゛～～！！もうっ！[p]

#
渾身の応援で、ワカツキの力になれたようだ！[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_2_2
#
スカウトと自分は、全身を使ってアピールし始めた！[p]

#&f.player_name
うおぉぉ！！ワ・カ・ツ・キー！！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ワカツキさーーーん！！！[p]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
？！[p]


[chara_hide name="wakastuki" width="450" height="600" ]

[chara_show name="scout" width="450" height="600" ]
#&f.player_name
いけいけワカツキ！！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ＧＯＧＯワカツキさーーん！！！[p]

#
自分は応援団顔負けの３・３・７拍子を、スカウトは隣でぴょんぴょんと跳ねている！[p]


[chara_hide name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
ちょ、最悪なんだけど...！[p]

#
周りの視線が明らかに痛いが、構わず続ける！[p]

;恥じ
[chara_mod name=wakastuki face="normal" time="1000" ]
#ワカツキ
～～！[p]

#
ワカツキは顔を真っ赤にし、こっちを見ようとしない... 完全に他人の振りをし始めた...！[p]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ワカツキさん、そんなに怒らなくても...[p]

#
その後帰ってきたワカツキに、こっぴどく叱られるはめになった...[p]

[jump storage="gakuen/gakuen_end_point.ks"]