*start
[bg storage="rouka.jpg" time="100" ]
[iscript]
f.library+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.library_normal_flag=='true'"]
[jump target="*library_shortpart"]
[endif]

#
ここは公園です[p]

[iscript]
f.library_normal_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*library_shortpart

#
ここは公園のショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]