*start
;アニメーションのレイヤーより下にするための処理
[iscript]
f.AnimationLayerFlag = 0;
f.ButtonAnimationTime = 1800;
[endscript]

;ボタンの宣言
;矢印 マウスカーソルを合わせると矢印を大きくする
[button name="rightarrow" graphic="../fgimage/houkago_selector_image/UI/rightarrow.png" enterimg="../fgimage/houkago_selector_image/UI/afterrightarrow.png"   x="1000" y="-2500" target="*houkago_select_arrow" exp="tf.select_arrow=-1"]
[button name="leftarrow" graphic="../fgimage/houkago_selector_image/UI/leftarrow.png" enterimg="../fgimage/houkago_selector_image/UI/afterleftarrow.png"  x="100" y="-2500" target="*houkago_select_arrow" exp="tf.select_arrow=1"]



;選択ボタン
[button clickse="&f.button_clicking_se" name="koryu_field" graphic="../fgimage/houkago_selector_image/background/game_center_background.png" enterimg="../fgimage/houkago_selector_image/background/game_center_backgroundaffter.png"  x="280" y="-1500"  target="*houkago_selector_1"   ]


;交流ボタンの作成
[button clickse="&f.button_clicking_se" name="houkagokouryu_button" graphic="../fgimage/houkago_selector_image/UI/koryu_button.png" enterimg="../fgimage/houkago_selector_image/UI/koryu_buttonaffter.png"   x="1080"  y="-500" storage="relation_ship_selector.ks" ]

;アニメーションでレイヤーの処理
[anim name="leftarrow" top="250" time="&f.ButtonAnimationTime"]
[anim name="koryu_field" top="150"  time="&f.ButtonAnimationTime"]
[anim name="rightarrow" top="250" time="&f.ButtonAnimationTime"]
[anim name="houkagokouryu_button" top="50" time="&f.ButtonAnimationTime"]

[SceneMove]
[clearfix]
[free layer="message0" name="chara_name_area"  ]
[layopt layer="message0" visible="false"  ]
[freeimage layer="1" time="0" ]
[fadeoutbgm time="3000"]
[chara_hide_all time=0 wait=true]
[playbgm storage="../bgm/secene_moving_se.mp3" ]
[jump storage="logic.ks" ]