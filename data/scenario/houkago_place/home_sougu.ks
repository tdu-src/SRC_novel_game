*start
[bg storage="rouka.jpg" time="100" ]
[wait time=1000]
[iscript]
f.art_museum+=f.special_houkagoevent;
[endscript]
[if exp="f.art_museum_special_flag=='true'"]
[jump target="*myhomesougu_shortpart"]
[endif]

#
ここは遭遇イベントの公園です[pse]

[iscript]
f.art_museum_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhomesougu_shortpart

#
ここは公園の遭遇イベントのショートパートです[pse]

[jump storage="houkago_place/houkago_end.ks"]
