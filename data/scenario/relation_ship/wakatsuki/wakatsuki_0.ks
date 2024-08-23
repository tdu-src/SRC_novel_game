*start
[bg storage="room.jpg" time="1000"  ]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="wakastuki" width="450" height="600" ]
#
放課後、町を歩いていると、駅前に立っているワカツキを見つけた。[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
……[pse]

#
ワカツキは電話をしながら、周囲を見渡している…誰かと待ち合わせをしているみたいだ…[pse]

#
そのまま様子を見ていると、お爺さんが歩いてきた。どうやら待ち合わせ相手のようだ。[pse]

#
そして、何かを話し終えた後、なんとお爺さんから怪しい封筒を受け取った！[pse]

#&f.player_name
？！[pse]

#&f.player_name
（もしかして、闇アルバイト…?！）[pse]

#
ワカツキがそんなことをするはずが…[pse]

#
しかし、友達が非行の道に走るのならば、止めなければならない！[pse]

#&f.player_name
ダメだよ！ワカツキ！！[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
うわっ！[emb exp="f.player_name"]？！[pse]

#&f.player_name
闇バイトなんかしちゃだめだ！！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
は…？何言ってるの…？[pse]

#&f.player_name
えっ？[pse]

#
勢いで突っ込んでしまったが、ワカツキは意味が分からないといった様子でこちらを見ている…[pse]

#&f.player_name
…その封筒は？[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
これ？ペットフード代だけど…[pse]

#&f.player_name
さっき話してた人は…？ワカツキ（困惑保護猫のお世話のボランティアの人…[pse]

#&f.player_name
あ～…[pse]

#
なにやら、自分は大きな勘違いをしていたようだ…[pse]

#&f.player_name
怪しいバイトをしてるのかと思った…[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
私のことどんな奴だと思ってるの？！[pse]

[isTimePassage]
[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
はぁ、まさか闇バイトをやってると思われるとはね…[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


#&f.player_name
本当にごめん…[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
別にいいけど… それじゃ、私は買い出しに行くから。[pse]

#&f.player_name
自分も手伝うよ！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
いや、さすがに悪いよ。結構時間かかりそうだし。[pse]

#&f.player_name
暇だから大丈夫！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
そうなの…?まぁ、人手は多い方がいいか…[pse]

[isTimePassage2]
[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
はぁ…やっと終わった…[s]
*TimePassage2
[playse storage="../bgm/text_click_se.mp3" ]


#&f.player_name
大変だったね…[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
うん、でも助かったよ。[pse]

[chara_mod name=wakastuki face=smaile time="1000" ]
#ワカツキ
そうだ、今度お世話してる猫たちに会いに来てよ。[pse]

#&f.player_name
いいの？！[pse]

[chara_mod name=wakastuki face=smaile time="1000" ]
#ワカツキ
私がやってることが怪しいことじゃないって証明しないとね。[pse]

#&f.player_name
ご、ごめん…[pse]


[jump storage="relation_ship/relation_ship_end_point.ks"]