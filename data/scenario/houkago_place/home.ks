*start
[bg storage="rouka.jpg" time="100" ]
[iscript]
f.art_museum+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.art_museum_normal_flag=='true'"]
[jump target="*myhome_shortpart"]
[endif]
#
ここは公園です[pse]


[iscript]
f.art_museum_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhome_shortpart

#
ここは公園のショートパートです[pse]
[jump storage="houkago_place/houkago_end.ks"]
