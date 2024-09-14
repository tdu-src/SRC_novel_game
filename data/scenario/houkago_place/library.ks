*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]

[isHeader text="美術館" x="-450" width="330"]

[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]
[wait time=1000]

[iscript]
f.park+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.park_normal_flag=='true'"]
[jump target="*library_shortpart"]
[endif]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、新聞契約の特典でもらった優待券で、美術館に来ていた。[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#
少し難しい絵が多いな…[pse]

#
でも、こういうのも芸術なんだろうな…[pse]


[iscript]
f.park_normal_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*library_shortpart
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
放課後、新聞契約の特典でもらった優待券で、美術館に来ていた。[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
少し難しい絵が多いな…[pse]

#&f.player_name
でも、こういうのも芸術なんだろうな…[pse]

[jump storage="houkago_place/houkago_end.ks"]