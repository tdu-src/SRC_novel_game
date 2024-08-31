*start
[bg storage="rouka.jpg" time="100" ]

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

#
ここは遭遇イベントの公園です[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]


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
