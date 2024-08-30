*start
[bg storage="rouka.jpg" time="100" ]
[isHeaderLeastSize text="公園"]
[iscript]
f.art_museum+=f.special_houkagoevent;
[endscript]
[if exp="f.art_museum_special_flag=='true'"]
[jump target="*myhomesougu_shortpart"]
[endif]

#
ここは遭遇イベントの公園です[p]

[iscript]
f.art_museum_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhomesougu_shortpart

#
ここは公園の遭遇イベントのショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]
