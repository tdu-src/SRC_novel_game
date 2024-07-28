*start


;遭遇イベントの実装
[iscript]
//遭遇イベントの実装
f.gakuen_FT=0;
f.random_button_list=[];
//家→美術館 図書館→公園
f.random_place_list=["game_center","home","cafe","library"];
f.selection_button;
for(var i=0;i<4;i++){
    tf.random_place=Math.floor( Math.random() *2 );
    if(tf.random_place%2==0){
        f.random_button_list.push("../fgimage/houkago_selector_image/UI/houkagoselectbutton.png");
        f.random_place_list[i]+="_sougu";
    }else{
        f.random_button_list.push("../fgimage/houkago_selector_image/UI/emepty_houkagoselectbutton.png");
    }
}

//放課後イベントのアニメーション
f.houkago_now_place=0;
f.houkago_now_place_list=["../fgimage/houkago_selector_image/background/game_center_background.png","../fgimage/houkago_selector_image/background/park_background.png","../fgimage/houkago_selector_image/background/cafe_background.png","../fgimage/houkago_selector_image/background/artmusum_background.png"]

f.houkago_select_upparameter_listx=[350,930,730,530]
[endscript]

*start_sab
[freeimage layer="0" ]
[freeimage layer="1" ]
[freeimage layer="2" ]

;bgm
[playbgm storage="../bgm/sohuchara_bgm_normal2.mp3" ]

;再読み込みが必要ないものの宣言 →再読み込みを行うと処理が重くなる
;--------------------------------
;バックグラウンドの宣言
[bg storage="../fgimage/houkago_selector_image/background/trainplatform_background.png" time="1000" ]


;フッターの作成
[image layer="0" x="-30" y="-10" width="377" height="100"  storage="houkago_selector_image/UI/partwindow_houkago_futa.png" time="0"  ]
[ptext layer="2" x="20" y="-10" size="40" text="&f.playmouth" ]
[ptext layer="2" x="20" y="40" size="40" text="&f.playmouth_string" ]


;パラメータの枠組み
[image name="parameter_frame" storage="houkago_selector_image/UI/parameterbackground.png" x="200" y="600" width="809" height="75"  layer="0" time="0"  ]

;主人公パラメータ
[ptext layer="2" x="300" y="620" size="40" text="&f.game_center"]
[ptext layer="2" x="480" y="620" size="40" text="&f.park"]
[ptext layer="2" x="680" y="620" size="40" text="&f.cafe"]
[ptext layer="2" x="880" y="620" size="40" text="&f.art_museum"]


;スマホ画面の宣言
;[image storage="houkago_selector_image/UI/backgroundsmartphone.png" layer="0"   x="280" y="150" width="654" height="400"  time="0"  target="*houkago_selector_1" ]


*reloadselect
;--------------------------------
;バックグラウンドの宣言

;[freeimage layer="0" ]
[freeimage layer="1" ]
;[freeimage layer="2" ]

[layopt layer="0" visible="true"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]

;フッターの作成

;パラメータの枠組み

;up画面の表示
[image name="parameter_up" layer="1"  storage="houkago_selector_image/UI/confirm_up_parameter.png" x="&f.houkago_select_upparameter_listx[f.houkago_now_place]" y="620" width="41" height="50"  time="0" ]

;主人公パラメータ

;矢印 マウスカーソルを合わせると矢印を大きくする
[button name="rightarrow" graphic="../fgimage/houkago_selector_image/UI/rightarrow.png" enterimg="../fgimage/houkago_selector_image/UI/afterrightarrow.png"   x="1000" y="250" target="*houkago_select_arrow" exp="tf.select_arrow=-1"]
[button name="leftarrow" graphic="../fgimage/houkago_selector_image/UI/leftarrow.png" enterimg="../fgimage/houkago_selector_image/UI/afterleftarrow.png"  x="100" y="250" target="*houkago_select_arrow" exp="tf.select_arrow=1"]



;スマホ画面の宣言


;選択ボタン
[button name="koryu_field" graphic="&f.houkago_now_place_list[f.houkago_now_place]" x="280" y="150" width="654" height="400" target="*houkago_selector_1"   ]

;遭遇イベントの宣言
[button name="sougu_event" graphic="&f.random_button_list[f.houkago_now_place]" x="800" y="400" width="100" height="100"  ]

;交流ボタンの作成
[button name="houkagokouryu_button" graphic="../fgimage/houkago_selector_image/UI/kouryubutton_2.png"  x="1050"  y="50" width="150" height="150" storage="relation_ship_selector.ks" ]
;メニューボタンの作成
;[glink name="houkagomenu" color="blue" size="12" width="100" height="100" x="1050" y="600" text="メニュー" storage="chara_menu.ks"  ]

[s]

;場所画像の差し替え
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

;ボタンの削除
[clearfix name="leftarrow"]
[clearfix name="rightarrow"]
[clearfix name="koryu_field"]
[clearfix name="sougu_event"]
[clearfix name="houkagokouryu_button"]
[clearfix name="houkagomenu"]

[jump target="*reloadselect"]
;----------------------------------------


;以下はただの宣言読む必要ない
;----------------------------------------
*houkago_selector_1


[cm  ]
[clearfix]
[start_keyconfig]

[freeimage layer="0" ]
[freeimage layer="1" ]
[freeimage layer="2" ]

;bgmのフェードアウト
[fadeoutbgm time="3000"]
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

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="640" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="740" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="840" y="690"]

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

[layopt layer="1" visible="true"]
;月の追加
[ptext layer="1" x="0" y="0" size="40" text="&tf.now_mouth" name="mouth" ]

[jump storage="&f.houkago_select_path"]