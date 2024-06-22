*start
;遭遇イベントの実装
[iscript]
//遭遇イベントの実装
f.gakuen_FT=0;
f.random_button_list=[];
f.random_place_list=["cafe","library","home","game_center"];
f.selection_button;
for(var i=0;i<4;i++){
    tf.random_place=Math.floor( Math.random() *2 );
    if(tf.random_place%2==0){
        f.random_button_list.push("green");
        f.random_place_list[i]+="_sougu";
    }else{
        f.random_button_list.push("blue");
    }
}

//放課後イベントのアニメーション
f.houkago_now_place=0;
f.houkago_now_place_list=["../fgimage/houkago_selector_image/cafe_button.jpg","../fgimage/houkago_selector_image/liblry_button.jpeg","../fgimage/houkago_selector_image/my_home_button.jpg","../fgimage/houkago_selector_image/game_center_button.jpg"]
[endscript]

*start_sab
;バックグラウンドの宣言
[bg storage="&f.houkago_now_place_list[f.houkago_now_place]" time="1000" ]
[freeimage layer="1" ]
[freeimage layer="2" ]

[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
[ptext layer="2" x="0" y="0" size="40" text="&tf.now_mouth" name="mouth" ]

;パラメータの枠組み
[image name="parameter_frame" storage="items/parameter_frame.png" x="-200" y="500" height="300" width="1500" layer="1"  time="0" ]

;主人公パラメータ
[ptext layer="1" x="350" y="620" size="40" text="&f.cafe"]
[ptext layer="1" x="570" y="620" size="40" text="&f.library"]
[ptext layer="1" x="1000" y="620" size="40" text="&f.my_home"]
[ptext layer="1" x="800" y="620" size="40" text="&f.game_senter"]

[button graphic="config/arrow_next.png"  x="1000" y="250" target="*houkago_select_arrow" exp="tf.select_arrow=1"]
[button graphic="config/arrow_prev.png" x="100" y="250" target="*houkago_select_arrow" exp="tf.select_arrow=-1"]
[button graphic="../fgimage/houkago_selector_image/air_button/air_button.png" x="400" y="250"  target="*houkago_selector_1" ]

[glink  color="red"  size="21"  x="1050"  width="100"  y="500"  text="交流" storage="relation_ship_selector.ks" ]
[glink color="blue" size="12" width="100" height="100" x="1050" y="600" text="メニュー" storage="chara_menu.ks"  ]
[s]

;メッセージウインドウの遷移
;----------------------------------------
*houkago_select_arrow
[iscript]
f.houkago_now_place+=tf.select_arrow;
if(f.houkago_now_place>=4){
    f.houkago_now_place=0;
}else if(f.houkago_now_place<=-1){
    f.houkago_now_place=3;
}

[endscript]

[jump target="*start_sab"]
;----------------------------------------


;以下はただの宣言読む必要ない
;----------------------------------------
*houkago_selector_1

[cm  ]
[clearfix]
[start_keyconfig]

[freeimage layer="1" ]
[freeimage layer="2" ]
;メッセージウィンドウの設定
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x="250"  y=510]

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

[iscript]
f.houkago_select_path="houkago_place/";
f.houkago_select_path+=f.random_place_list[f.houkago_now_place];
f.houkago_select_path+=".ks"
[endscript]

;[jump storage="place.ks" target="&tf.random_place_list[tf.selection_button]"  ]
[jump storage="&f.houkago_select_path"]