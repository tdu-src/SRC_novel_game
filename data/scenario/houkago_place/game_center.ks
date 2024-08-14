*start
[bg storage="rouka.jpg" time="100" ]
[iscript]
f.game_center+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.gamesenter_normal_flag=='true'"]
[jump target="*gamesenter_shortpart"]
[endif]

#
ここはゲームセンターです[pse]

[iscript]
f.gamesenter_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*gamesenter_shortpart

#
ここはゲームセンターのショートパートです[pse]

[jump storage="houkago_place/houkago_end.ks"]