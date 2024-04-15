
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 

[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="outgame/config.ks" keyfocus="3"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="story/loop/entry_point.ks"



