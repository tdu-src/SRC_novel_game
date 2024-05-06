*start
;遭遇イベントの実装
[iscript]
f.gakuen_FT=0;
tf.random_button_list=[];
tf.random_place_list=["*place_cafe","*place_library","*place_home","*place_game_center"];
tf.selection_button;
for(var i=0;i<4;i++){
    tf.random_place=Math.floor( Math.random() *2 );
    if(tf.random_place%2==0){
        tf.random_button_list.push("green");
        tf.random_place_list[i]+="_sougu";
    }else{
        tf.random_button_list.push("blue");
    }
}
[endscript]

*start_sab
[layopt layer="1" visible="false" ]
[layopt layer="2" visible="false" ]

;バックグラウンドの宣言
[bg storage="map.jpg" time="1000"  ]


[glink  color="&tf.random_button_list[0]"  size="21"  x="50"  width="100"  y="600"  text="カフェ" target="*houkago_selector_1" exp="tf.selection_button=0"]
[glink  color="&tf.random_button_list[1]"  size="21"  x="250"  width="100"  y="600"  text="図書館" target="*houkago_selector_1"exp="tf.selection_button=1" ]
[glink  color="&tf.random_button_list[2]"  size="21"  x="450"  width="100"  y="600"  text="自宅" target="*houkago_selector_1"exp="tf.selection_button=2" ]
[glink  color="&tf.random_button_list[3]"  size="21"  x="650"  width="100"  y="600"  text="ゲーセン" target="*houkago_selector_1"exp="tf.selection_button=3" ]
[glink  color="red"  size="21"  x="1050"  width="100"  y="500"  text="交流" storage="relation_ship_selector.ks" ]
[glink color="blue" size="12" width="100" height="100" x="1050" y="600" text="メニュー" storage="chara_menu.ks"  ]
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

[jump storage="place.ks" target="&tf.random_place_list[tf.selection_button]"  ]
