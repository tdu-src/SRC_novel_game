*start
[bg storage="rouka.jpg" time="100" ]
[isHeaderLeastSize text="カフェ"]
[iscript]
f.cafe+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.cafe_normal_flag=='true'"]
[jump target="*cafe_shortpart"]
[endif]

#
ここはカフェです[p]

[iscript]
f.cafe_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------

*cafe_shortpart

#
ここはカフェnのショートパートです[p]


[jump storage="houkago_place/houkago_end.ks"]