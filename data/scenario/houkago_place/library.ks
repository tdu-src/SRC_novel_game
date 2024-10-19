*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]

[isHeader text="美術館" x="-450" width="330"]

[wait time=1000]

[iscript]
f.park+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.park_normal_flag=='true'"]
[jump target="*library_shortpart"]
[endif]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、美術館に立ち寄った！[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
ここの雰囲気、やっぱり落ち着くなぁ…[pse]

#
様々な展示物を見て、気分転換できた！[pse]


[iscript]
f.park_normal_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*library_shortpart
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
放課後、美術館に立ち寄った！[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
ここの雰囲気、やっぱり落ち着くなぁ…[pse]

#
様々な展示物を見て、気分転換できた！[pse]

[jump storage="houkago_place/houkago_end.ks"]