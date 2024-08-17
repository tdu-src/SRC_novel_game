*start
[ptext layer="1" x="0" y="0" size="40" text="異種族交流？" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
中庭でスカウトと歩いていると、茂みの方にワカツキを見つけた...[pse]
[chara_show name="wakastuki" time="1000" width="450" height="600"  ]
[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
ほら、怖くないよ～...[pse]

[chara_show name="scout" time="1000" width="450" height="600"   ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
あれ！！何してるんですかワカツキさん！[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
ちょっ！声抑えてっ！！[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
え？！ごめんなさい！！[pse]

#
何かに驚いた様子の黒い影が、茂みの方に走っていった...[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
あぁ... もうちょっとだったのに...[pse]

#&f.player_name
何してたの？[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
野良猫と仲良くなりたくて。警戒心が強い子だったから安心してもらおうと思ったんだけど...[pse]

#
野良猫は茂みの奥の隙間からこちらの様子を窺っている。今のでだいぶ警戒されているようだ...[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ふふふ、私に任せてください！猫ちゃんに逃げられず仲良くなる、良い方法がありますよ！[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
あんたのせいで逃げられたんだけど...[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
[emb exp="f.player_name"]さん！お願いします！[pse]

#&f.player_name
えぇ...[pse]

#
猫と仲良くなる方法か...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="猫じゃらしとか？"   target="*gakuen_tuzyo_part_16_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="声真似してみよう！"   target="*gakuen_tuzyo_part_16_2" ]        
[s]
*gakuen_tuzyo_part_16_1
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
あ～、それいいかも。[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
周りに生えてたの、取ってきましたよ！[pse]

#
ワカツキはスカウトから猫じゃらし草をもらい、振り始めた...[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
ほら、一緒に遊ぼう～...[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あっ！近づいてきましたよ！[pse]

#
好奇心につられてか、野良猫は猫じゃらしでじゃれ始めた[pse]

[chara_mod name=wakastuki face=smaile time="1000" ]
#ワカツキ
ふふ、仲良くなれたみたい。[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
羨ましいです！ワカツキさん私も私も！[pse]

#
野良猫とふれあい、三人は存分に癒されることが出来た。[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_16_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
いや、それは無理でしょ...[pse]

#&f.player_name
物は試しだから...[pse]

#
猫に近づいて、自分は渾身の鳴きまねを披露した..[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
いや...それはちょっと...面白すぎでしょ...（笑）[pse]

#&f.player_name
...[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
なんですか[emb exp="f.player_name"]さんその下手な鳴きまねは！！私のを見ててください！[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
もういいってば...[pse]

#
野良猫は迫真の鳴きまねに同族の気配を感じ取ったのか、自ら近づいてきた...[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ほら、私にかかればこんなもんですよ！！[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
噓でしょ...[pse]

#
野良猫との交流で、スカウトの思いがけない特技を知ったのだった...[pse]


[jump storage="gakuen/gakuen_end_point.ks"]