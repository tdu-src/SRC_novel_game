*start
[bg storage="../fgimage/houkago_selector_image/background/park_background.jpg" time="100" ]

[isHeaderLeastSize text="公園"]

[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]
[wait time=1000]

[iscript]
f.art_museum+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.art_museum_normal_flag=='true'"]
[jump target="*myhome_shortpart"]
[endif]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
公園に来てみた[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#
公園で少し遊んで帰った[pse]


[iscript]
f.art_museum_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhome_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
公園に来てみた[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#
公園で少し遊んで帰った[pse]

[jump storage="houkago_place/houkago_end.ks"]
