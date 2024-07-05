*start
[bg storage="rouka.jpg" time="100" ]
[iscript]
f.my_home+=f.special_houkagoevent;
[endscript]
[if exp="f.my_home_special_flag=='true'"]
[jump target="*myhomesougu_shortpart"]
[endif]

#
ここは遭遇イベントの美術館です[p]

[iscript]
f.my_home_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhomesougu_shortpart

#
ここは美術館の遭遇イベントのショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]
