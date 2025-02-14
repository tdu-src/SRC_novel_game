*start
[SceneMove]
[freeimage layer="0" time="0"]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
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
tf.ending_directory='ending/';
if(f.memori_flag=='true'){
    tf.ending_directory+='memori.ks';
}else if(f.scout_flag=='true'){
    tf.ending_directory+='scout.ks';
}else if(f.tsukuri_flag=='true'){
    tf.ending_directory+='tsukuri.ks';
}else if(tf.wakatsuki_flag=='true'){
    tf.ending_directory+='wakatsuki.ks';
}else{
    tf.ending_directory+='normal.ks';
}
[endscript]

[ptext layer="1"x="20" y="0" size="40" text="&f.playmouth"  bold="true"  face="Arial" ]
[ptext layer="1" x="20" y="40" size="40" text="&f.playmouth_string"  bold="true"  face="Arial"]

[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]
[jump storage="&tf.ending_directory"  ]
