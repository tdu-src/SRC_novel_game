*start
[bg storage="rouka.jpg" time="100" ]
[wait time=1000]
[iscript]
f.game_center+=f.special_houkagoevent;
[endscript]
[if exp="f.gamesenter_special_flag=='true'"]
[jump target="*gamesentersougu_shortpart"]
[endif]


[chara_show name="wakastuki" width="450" height="600" ]

#
放課後、ゲームセンターをうろうろしていると、アーケードゲームで遊ぶワカツキを見つけた。[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]


#&f.player_name
あっ、ワカツキ！[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
あれ、[emb exp="f.player_name"]じゃん。[emb exp="f.player_name"]も遊びに来たの？[pse]

#&f.player_name
うん。ワカツキは何をしてたの？[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
音ゲーだよ。よくここに来て遊んでるんだ。[pse]

#&f.player_name
音ゲー、面白いの？[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
結構面白いよ。私がさっき遊んでたのは、音ゲーマーの中では凄く話題になってるゲームなんだ。[pse]

#&f.player_name
やってみたい！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
お、興味あるんだ。じゃあ試しに一回やってみる？最初は簡単なのがいいかな…[pse]

#&f.player_name
一番難しいのがいい！[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
えぇ…? 最高難易度のやつ、私もクリアしてないんだけど…。[pse]

#
ワカツキとゲームを交代すると、とんでもない速さの曲が始まった…[pse]

#&f.player_name
む、難しい…[pse]

#
結局ミスを連発して、強制終了してしまった…[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
だから言ったでしょ…[pse]

#&f.player_name
ここまでとは思わなくて…[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
ほら、交代して。私がお手本を見せてあげるから。[pse]

#&f.player_name
後は任せた！[pse]

[chara_mod name=wakastuki face=smaile time="1000" ]
#ワカツキ
ふふっ。一瞬でクリアするから見てて。[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
あ゛～もう！！！またミスった…！[pse]

#&f.player_name
あの…ワカツキさん…?[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
わかってるって！あとちょっとでクリアだから！！[pse]

#&f.player_name
……[pse]

#
何度プレイしたのだろうか… 結局、その曲をクリア出来たのは、日が暮れた頃だった…[pse]


[iscript]
f.gamesenter_special_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*gamesentersougu_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
ここはゲームセンターの遭遇イベントのショートパートです[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]


[jump storage="houkago_place/houkago_end.ks"]
