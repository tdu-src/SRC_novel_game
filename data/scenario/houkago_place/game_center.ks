*start
[bg storage="Gamecenter.jpg" time="100" ]

[isHeader text="ゲームセンター" x="-360" width="500"]

[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]
[wait time=1000]

[iscript]
f.game_center+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.gamesenter_normal_flag=='true'"]
[jump target="*gamesenter_shortpart"]
[endif]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]

#
放課後、ゲームセンターに遊びに来た！[s]

*Point
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
今日はあのゲームで遊ぼう！[pse]

#
気になっていた最新のゲームを遊びつくすことが出来た！[pse]

[iscript]
f.gamesenter_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*gamesenter_shortpart

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point_2"]

#
放課後、ゲームセンターに遊びに来た！[s]

*Point_2
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
今日はあのゲームで遊ぼう！[pse]

# 
気になっていた最新のゲームを遊びつくすことが出来た！[pse]

[jump storage="houkago_place/houkago_end.ks"]