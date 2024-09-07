*start
[bg storage="../fgimage/houkago_selector_image/background/cafe_background.jpg" time="100" ]

[isHeaderLeastSize text="カフェ"]
[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]

[wait time=1000]
[iscript]
f.cafe+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.cafe_normal_flag=='true'"]
[jump target="*cafe_shortpart"]
[endif]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
カフェに来た[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#
小一時間ほどカフェで勉強をして帰った[pse]

[iscript]
f.cafe_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------

*cafe_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
カフェに来た[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#
小一時間ほどカフェで勉強をして帰った[pse]

[jump storage="houkago_place/houkago_end.ks"]