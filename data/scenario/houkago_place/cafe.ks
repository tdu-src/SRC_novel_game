*start
[bg storage="../fgimage/houkago_selector_image/background/cafe_background.jpg" time="100" ]

[isHeader text="カフェ" x="-460" width="300"]

[wait time=1000]
[iscript]
f.cafe+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.cafe_normal_flag=='true'"]
[jump target="*cafe_shortpart"]
[endif]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、美術館に立ち寄った！[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
ここのコーヒー、やっぱりおいしいなぁ…[pse]

#
お気に入りのコーヒーを飲んで、リラックスできた！[pse]

[iscript]
f.cafe_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------

*cafe_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
放課後、美術館に立ち寄った！[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#
ここのコーヒー、やっぱりおいしいなぁ…[pse]

#
お気に入りのコーヒーを飲んで、リラックスできた！[pse]

[jump storage="houkago_place/houkago_end.ks"]