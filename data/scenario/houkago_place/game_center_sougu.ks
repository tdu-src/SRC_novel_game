*start
[bg storage="rouka.jpg" time="100" ]
[isHeaderMostSize text="ゲームセンター"]
[iscript]
f.game_center+=f.special_houkagoevent;
[endscript]
[if exp="f.gamesenter_special_flag=='true'"]
[jump target="*gamesentersougu_shortpart"]
[endif]


#
ここは遭遇イベントのゲームセンターです[p]

[iscript]
f.gamesenter_special_flag="true";
[endscript]
[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*gamesentersougu_shortpart

#
ここはゲームセンターの遭遇イベントのショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]
