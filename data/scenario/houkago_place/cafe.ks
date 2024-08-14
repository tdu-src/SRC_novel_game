*start
[bg storage="rouka.jpg" time="100" ]
[iscript]
f.cafe+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.cafe_normal_flag=='true'"]
[jump target="*cafe_shortpart"]
[endif]

#
ここはカフェです[pse]

[iscript]
f.cafe_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------

*cafe_shortpart

#
ここはカフェnのショートパートです[pse]


[jump storage="houkago_place/houkago_end.ks"]