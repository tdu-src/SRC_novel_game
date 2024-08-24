*start
;夏休み
[ptext layer="1" x="0" y="0" size="40" text="砂浜で" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

#
夏休みが終わる前日、思い出作りとしてワカツキとスカウトの三人で海を見に来ていた。[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="scout" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
いや～、浜辺を散歩するのって気持ちいいですね！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ほら二人とも！少し遊んでいきますよ！[pse]

#&f.player_name
お～！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
お～[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
ってワカツキさん！何スマホ見てるんですか？！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
何って、ゲームの夏イベの周回だけど。[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
海に来てまでゲームしてる人いませんよ！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
私がいるよ？[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
そういう話じゃないです！[pse]

#
なんやかんや言い合っているが、二人はとても楽しそうに遊んでいる…[pse]

#&f.player_name
そういえば、もうすぐ夏休みが終わっちゃうね。[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
うわ…、気分下がること言わないでよ。(主人公)…[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
そうですよ(主人公)さん！先のことなんて考えてもいいことないです！[pse]

#&f.player_name
ご、ごめん…[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
でも、夕暮れの海を眺めてると、感慨深くなっちゃうのはわかります！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
まぁ、今年の夏は皆で遊びに行ったりして、楽しかったね。[pse]

#&f.player_name
そうだね～…。[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
いっぱい楽しい思い出作れたし、きっと憂鬱な学校も楽しめますよ！[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
そうはいっても私は憂鬱なままだけどな…。 数学の宿題もちょっと残ってるし…[pse]

[chara_mod name=scout face=perplexed time="1000" ]
#スカウト
え、数学の宿題？[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
…。[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
あっ！！！！[pse]

#&f.player_name
ど、どうしたの？[pse]

#
突然声を上げたスカウトは、信じられないほど青ざめた表情をしている…！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
私…数学の宿題忘れてました！！！！！！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
えっ… あれって一日で終わる量じゃないような…[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
どどどどうしましょう？！出せなかったらあの厳しい数学の先生に、めちゃくちゃ叱られちゃいます！！！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
まぁ… もう潔く諦めた方が…[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
うわ～ん！！主人公さんさん、助けて下さ～い！！！！！[pse]

#
結局、帰ってスカウトの宿題を手伝うことになり、波乱万丈な夏の終わりになった…[pse]

[jump storage="gakuen/gakuen_end_point.ks"]