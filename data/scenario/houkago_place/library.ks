*start
[bg storage="../fgimage/houkago_selector_image/background/artmusum_background.jpg" time="100" ]
[ptext layer="1" x="-350" y="25" size="40" text="美術館" name="align_ct_h" bold="true"  face="Arial"]
[iscript]
f.park+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.park_normal_flag=='true'"]
[jump target="*library_shortpart"]
[endif]

#
ここは美術館です[p]

[iscript]
f.park_normal_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*library_shortpart

#
ここは美術館のショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]