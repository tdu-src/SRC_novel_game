*start
[bg storage="room.jpg" time="1000"  ]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
机の中に何か入っている… どうやら手紙のようだ…[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

#
午後、ソフ研公園に集合！──紀伊めもり[pse]

#&f.player_name
なんだこれ…[pse]

#
怪しさ満点の手紙だ… またいたずら好きのめもりが何か企んでいるのだろうか…[pse]

#&f.player_name
…とりあえず行ってみるか…[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
よく来たね！[emb exp="f.player_name"][pse]

#&f.player_name
あの手紙はどうしたの？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
あぁ、今日は暇だから、遊び相手が欲しくて！[pse]

#&f.player_name
普通に言ってくれればいいのに…[pse]

#&f.player_name
それで、ここで何するの？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
それはね…かくれんぼだよ！[pse]

#&f.player_name
かくれんぼ！？[pse]

#
流石に高校生にもなって、二人でやることがかくれんぼなのだろうか…？[pse]

#&f.player_name
というか、隠れるところなんてほとんど無いんだけど…[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
細かいことはいいから！とりあえず[emb exp="f.player_name"]が鬼ね！[pse]

#&f.player_name
ちょっ、もう始めるの？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
うん！ちゃんと 30 秒数えてね！[pse]


[chara_hide name="memori" width="450" height="600" ]
#&f.player_name
しょうがない…とりあえず数えるか…[pse]

#&f.player_name
…30！ よし、行くぞ！[pse]

#
幸い公園に隠れるところは少ない… きっとすぐ見つかるはずだ…！[pse]

#&f.player_name
い、いない…[pse]

#
もうかれこれ 30 分以上探しているはずだが、一向に見つからない…[pse]

#
まさか、外に出たんじゃ…？[pse]

[chara_mod name=memori face=weariness time="1000" ]
#めもり
ね～！まだ見つけられないの～？[pse]

#&f.player_name
め、めもり？！[pse]

#
確かに目の前からめもりの声が聞こえたが、そこには何もいない…[pse]

#&f.player_name
も、もうギブアップ！[pse]

[chara_mod name=memori face=weariness time="1000" ]
#めもり
え～、もうギブアップ？しょうがないなぁ～。[pse]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
じゃーん！、登場～！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
これはね、僕が発明した透明マントだよ！！[pse]

#&f.player_name
透明マント？！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
そう！周りの光を反射して、姿を見えなくしてくれるんだよ！[pse]

#
めもりはマントを自分を隠すように持ち上げた。[pse]

#&f.player_name
き、消えた…！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
えへへ、すごいでしょ！リアクションの良い[emb exp="f.player_name"]を呼んだ甲斐があったよ！[pse]

#&f.player_name
…もしかして、今日誘ったのって…？[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
うん、新しい発明のデモンストレーションのためだよ！[pse]

#&f.player_name
やっぱり…[pse]

#
相変わらず、めもりの自由人っぷりには振り回されてばかりなのだった…[pse]


[jump storage="relation_ship/relation_ship_end_point.ks"]