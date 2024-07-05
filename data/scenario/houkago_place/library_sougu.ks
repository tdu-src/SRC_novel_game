*start
[bg storage="rouka.jpg" time="100" ]
[iscript]
f.library+=f.special_houkagoevent;
[endscript]
[if exp="f.library_special_flag=='true'"]
[jump target="*librarysougu_shortpart"]
[endif]



#
ここは遭遇イベントの公園です[p]

[iscript]
f.library_special_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*librarysougu_shortpart

#
ここは公園の遭遇イベントのショートパートです[p]


[jump storage="houkago_place/houkago_end.ks"]