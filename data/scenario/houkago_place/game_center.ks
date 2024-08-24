*start
[bg storage="rouka.jpg" time="100" ]
[ptext layer="1" x="-350" y="25" size="40" text="ゲームセンター" name="align_ct_h" bold="true"  face="Arial"]
[iscript]
f.game_center+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.gamesenter_normal_flag=='true'"]
[jump target="*gamesenter_shortpart"]
[endif]

#
ここはゲームセンターです[p]

[iscript]
f.gamesenter_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*gamesenter_shortpart

#
ここはゲームセンターのショートパートです[p]

[jump storage="houkago_place/houkago_end.ks"]