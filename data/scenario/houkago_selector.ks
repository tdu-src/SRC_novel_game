*start
[iscript]
f.gakuen_FT=0;
tf.place_cafe_name="*place_cafe";
tf.place_library_name="*place_library";
tf.place_home_name="*place_home";
tf.place_geme_center_name="*place_game_center";
tf.place_color=["blue","green"];
tf.place_color_number=0;
tf.place_random_list=[];
//あとでまとめた綺麗な文を作る
for(var i=0;i<4;i++){
    tf.random_place=Math.floor( Math.random() *2 );
    tf.place_random_list.push(tf.random_place);
}
if(tf.place_cafe_name[0]%2==0){
    tf.place_cafe_name+="_sougu";
    tf.place_color_number=1;
}
if(tf.place_cafe_name[1]%2==0){
    tf.place_library_name+="_sougu";
    tf.place_color_number=1;
}
if(tf.place_cafe_name[2]%2==0){
    tf.place_home_name+="_sougu";
    tf.place_color_number=1;
}
if(tf.place_cafe_name[3]%2==0){
    tf.place_geme_center_name+="_sougu";
    tf.place_color_number=1;
}
[endscript]
;バックグラウンドの宣言
[bg storage="map.jpg" time="1000"  ]

[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="1100" y="50"]
[glink  color="&tf.place_color[tf.place_color_number]"  size="21"  x="50"  width="100"  y="600"  text="カフェ" target="*houkago_selector_1" exp="&tf.place_cafe_name"  ]
[glink  color="&tf.place_color[tf.place_color_number]"  size="21"  x="250"  width="100"  y="600"  text="図書館" target="*houkago_selector_2" exp="tf.place_library_name" ]
[glink  color="&tf.place_color[tf.place_color_number]"  size="21"  x="450"  width="100"  y="600"  text="自宅" target="*houkago_selector_3" exp="tf.place_home_name" ]
[glink  color="&tf.place_color[tf.place_color_number]"  size="21"  x="650"  width="100"  y="600"  text="ゲーセン" target="*houkago_selector_4" exp="tf.place_geme_center_name" ]
[glink  color="red"  size="21"  x="1050"  width="100"  y="600"  text="交流" storage="relation_ship_selector.ks" ]
[s]

;以下はただの宣言読む必要ない
;----------------------------------------
*houkago_selector_1
;メッセージウィンドウの設定
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="740" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="840" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="940" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="1040" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="1140" y="690"]

[jump storage="place.ks" target="*place_cafe"  ]
;----------------------------------------
*houkago_selector_2
;メッセージウィンドウの設定
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="740" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="840" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="940" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="1040" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="1140" y="690"]


[jump storage="place.ks"   target="*place_library"]
;----------------------------------------
*houkago_selector_3
;メッセージウィンドウの設定
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="740" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="840" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="940" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="1040" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="1140" y="690"]



[jump storage="place.ks"   target="*place_home"]
;----------------------------------------
*houkago_selector_4
;メッセージウィンドウの設定
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="740" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="840" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="940" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="1040" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="1140" y="690"]


[jump storage="place.ks"   target="*place_game_center"]
;----------------------------------------
