*start
[bg storage="rouka.jpg" time="100" ]

[isHeaderMostSize text="ゲームセンター"]

[wait time=1000]

[iscript]
f.game_center+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.gamesenter_normal_flag=='true'"]
[jump target="*gamesenter_shortpart"]
[endif]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
ここはゲームセンターです[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

[iscript]
f.gamesenter_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*gamesenter_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
ここはゲームセンターのショートパートです[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]


[jump storage="houkago_place/houkago_end.ks"]