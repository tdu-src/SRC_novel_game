
[cm]

@clearstack
[bg storage="../fgimage/items/titles/game_title.png" time="0"  ]
@wait time = 200

*start 

;[button x=135 y=410 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
;[button x=135 y=500 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
;[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
;[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
;[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]

;回転角の定義
[keyframe name="spinner"]
[frame p=0% rotate="0deg" ]
[frame p=100% rotate="-5deg" ]
[endkeyframe]


[button name="start_button" x=135 y=410 graphic="../fgimage/items/titles/gamestart.png"  target="gamestart" keyfocus="1"]
[button name="load_button" x=135 y=500 graphic="../fgimage/items/titles/gameload.png" role="load" keyfocus="2"]
[button name="config_button1" x=135 y=590 graphic="../fgimage/items/titles/gameconfig.png"  role="sleepgame" storage="config.ks" keyfocus="5"]
[button name="config_button2" x=315 y=575 graphic="../fgimage/items/titles/gameconfig.png"  role="sleepgame" storage="config.ks" keyfocus="5"]
;回転の実行
[kanim keyframe="spinner" name="start_button" time="0" count="1" easing="linear"]
[kanim keyframe="spinner" name="load_button" time="0" count="1" easing="linear"]
[kanim keyframe="spinner" name="config_button1" time="0" count="1" easing="linear"]
[kanim keyframe="spinner" name="config_button2" time="0" count="1" easing="linear"]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする

;これがないとメッセージウインドウがバグる恐らく初期設定の変更が必要
[free layer="message0" name="chara_name_area"  ]

[jump storage="entry_point.ks" ]


