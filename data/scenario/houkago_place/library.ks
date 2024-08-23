*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]
[wait time=1000]
[iscript]
f.park+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.park_normal_flag=='true'"]
[jump target="*library_shortpart"]
[endif]

#
ここは美術館です[pse]

[iscript]
f.park_normal_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*library_shortpart

#
ここは美術館のショートパートです[pse]

[jump storage="houkago_place/houkago_end.ks"]