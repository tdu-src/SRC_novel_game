*start
[bg storage="rouka.jpg" time="100" ]
[ptext layer="1" x="-350" y="25" size="40" text="カフェ" name="align_ct_h" bold="true"  face="Arial"]
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