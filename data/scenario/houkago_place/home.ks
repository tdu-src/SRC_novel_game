*start
[bg storage="../fgimage/houkago_selector_image/background/park_background.jpg" time="100" ]

[isHeader text="公園" x="-460" width="300"]

[wait time=1000]

[iscript]
f.art_museum+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.art_museum_normal_flag=='true'"]
[jump target="*myhome_shortpart"]
[endif]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、公園に立ち寄った！[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
鉄棒…  久々に筋トレでもしてみようかな？[pse]

#
公園で久々に体を動かして、良い運動が出来た！[pse]

[iscript]
f.art_museum_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhome_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
放課後、公園に立ち寄った！[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
鉄棒…  久々に筋トレでもしてみようかな？[pse]

#
公園で久々に体を動かして、良い運動が出来た！[pse]

[jump storage="houkago_place/houkago_end.ks"]
