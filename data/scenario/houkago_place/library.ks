*start
[bg storage="rouka.jpg" time="100" ]
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