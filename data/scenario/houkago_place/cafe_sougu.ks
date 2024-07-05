*start
[bg storage="rouka.jpg" time="100" ]

[iscript]
//パラメータの増加
f.cafe+=f.special_houkagoevent;
[endscript]
;分岐のための処理
[if exp="f.cafe_special_flag=='true'"]
[jump target="*cafesougu_shortpart"]
[endif]

#
ここは遭遇イベントのカフェです[p]

[iscript]
f.cafe_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*cafesougu_shortpart

#
ここは遭遇イベントショートパートのカフェです[p]

[jump storage="houkago_place/houkago_end.ks"]
