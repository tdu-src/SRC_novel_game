*start
[bg storage="rouka.jpg" time="1000"  ]
[isHeader text="めもりの発明品" x="-360" width="500"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="wakastuki" width="450" height="600" ]
[chara_show name="memori" width="450" height="600" ]

#
休み時間、ワカツキと話しながら廊下で歩いていると...[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
ねぇ、なんか聞こえない...？[pse]

#
（キュィィィン...）[pse]

#
耳を澄ましてみると、廊下の奥から音が聞こえる....[pse]

#
（キュィィイン...）[pse]

#
（ギュイイイイイン！！！！！！）[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
ちょっ...！何あれ?！[pse]

#
段ボール箱にロボットの顔を乗せたような何かが猛スピードで迫ってくる!![pse]

#&f.player_name
危ない！[pse]

#
（キキキキィィ！！！）[pse]

#
暴走していた機械は急ブレーキをかけて目の前で止まった。間一髪だった...[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
大丈夫？！ケガしなかった？[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
大丈夫...でもこの機械はいったい何...？！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
これはどこでもおそうじくん Z！自動で色んなところを掃除してくれる優れ者なんだよ！[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
安全性は優れてないけど...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
でもこの発明、まだまだ改良の余地があると思うんだよね...何かいい案ないかな？[pse]

#&f.player_name
いい案か...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="まずは安全性を..."   target="*gakuen_tuzyo_part_7_root_1" ]     
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="思い切って見た目をチェンジ！"   target="*gakuen_tuzyo_part_7_root_2" ]
[s]
*gakuen_tuzyo_part_7_root_1
[chara_mod name=memori face=normal time="1000" ]
#めもり
ん～、まぁそうだよねぇ。とりあえず直してみる![pse]

#
（トントンカンカン）[pse]

#
めもりはその場で機械を改造し始めた... すごい技術だ...！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
とりあえずこれで大丈夫なはず！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
はずって.... 本当に大丈夫...？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ん～、多分？[pse]

[chara_mod name=wakastuki face=weariness time="1000" ]
#ワカツキ
多分って...[pse]

#
その後学校中に、校内を徘徊する生首の乗った段ボール箱の都市伝説が広まるのであった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_7_root_2
[chara_mod name=memori face=normal time="1000" ]
#めもり
それってイメチェンするってこと？面白そうだしやってみる！[pse]

#
（トントンカンカン）[pse]

#
めもりはその場で機械を改造し始めた... すごい技術だ...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
できた！流行りの感じにしてみたよ！[pse]

#
そこには自分くらいの身長をしたガ〇ダムのようなロボットが立っていた...[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
これ、どこかで見たような...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
もうこれで弱点はないよ！どこでもおそうじくん Z！発進 ！[pse]

#
その後学校中に、校内を徘徊するガ〇ダムの都市伝説が広まるのであった...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]