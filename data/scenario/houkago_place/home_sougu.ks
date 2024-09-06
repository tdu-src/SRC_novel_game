*start
[bg storage="../fgimage/houkago_selector_image/background/park_background.jpg" time="100" ]

[isHeaderLeastSize text="公園"]

[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]
[wait time=1000]

[iscript]
f.art_museum+=f.special_houkagoevent;
[endscript]
[if exp="f.art_museum_special_flag=='true'"]
[jump target="*myhomesougu_shortpart"]
[endif]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

[chara_show name="memori" width="450" height="600" ]
#
放課後、散歩がてら公園を歩いていると…[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]


[chara_mod name=memori face=smaile time="1000" ]
#めもり
お～い、[emb exp="f.player_name"]！！[pse]

#&f.player_name
あっ、めもり！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
ねぇねぇ見てよ、この大きな木を…！[pse]

#&f.player_name
…木？[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そう！思わず登りたくなってこない？！[pse]

#&f.player_name
いや、あんまり…？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
な～に大人ぶっちゃってるのさ！子供心を忘れちゃだめだよ！[pse]

#&f.player_name
いや、もう高校生だし…[pse]

#
めもりは学業に関しては天才だが、こういった部分には幼さを感じる…[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ふーんだ！後から登りたくなっても知らないよ！[pse]

#
そういってめもりは、木をずんずん登っていく…[pse]

#&f.player_name
あ、危ないよ？！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
大丈夫だって！あともう少し…！[pse]

#
（ズルッ！）[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
あっ[pse]

#
あと少しで頂上のところでめもりは大きく足を踏み外した？主人公（なし）めもり？！[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
うわああぁっ？！[pse]

#
慌てて駆け寄るが、間に合いそうにない…！[pse]

#&f.player_name
めもり～～！！[pse]

#
（ぼひゅんっ！）[pse]

#
落ちる瞬間、めもりが背負っているバックパックから、エアバッグが飛び出した！[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
あ、危なかった… エアバッグ作っといてよかった…[pse]

#&f.player_name
めもり？高校生なんだから、もっと気を付けて遊ぼうね？[pse]

[chara_mod name=memori face=sad time="1000" ]
#めもり
ハイ…ゴメンナサイ…[pse]

[iscript]
f.art_museum_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhomesougu_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
ここは公園の遭遇イベントのショートパートです[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]


[jump storage="houkago_place/houkago_end.ks"]
