*start
;背景は各会話の初めに宣言する
[SceneMove]
[bg storage="room.jpg" time="1000"  ]
[iscript]
tf.game_start_path="";
[endscript]

[if exp="f.boolean_firstpart=='true'"]
[eval exp="tf.game_start_path='*first_game_play'"]
[elsif exp="f.boolean_firstpart=='false'"]
[eval exp="tf.game_start_path='*nofirst_game_play'"]
[endif]

[jump target="&tf.game_start_path"]
*first_game_play
; ロールボタン配置


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

[eval exp="f.boolean_firstpart='false'"]
;;ロールボタン追加終わり
*nofirst_game_play

;ここがシナリオ名と月
[layopt layer="1" visible="true"]
[freeimage layer="1" time="0"]
[iscript]
tf.mouth_logic_turn=f.gakuen_turn;
tf.now_mouth=f.gakuen_mouth_turn[tf.mouth_logic_turn]
if(tf.mouth_logic_turn%2==0){
    tf.now_mouth+="月前半";
    //ここも放課後イベント用変数(entory_pointでは宣言していない)
    f.playmouth_string="前半";
}else{
    tf.now_mouth+="月後半";
    //放課後イベント用変数
    f.playmouth_string="後半";
}
//放課後パートだけになる可能性があるため仮で変数を宣言
f.playmouth=f.gakuen_mouth_turn[tf.mouth_logic_turn]
f.playmouth+="月";
[endscript]
[ptext layer="1" x="0" y="0" size="40" text="&tf.now_mouth" name="mouth" ]
;あとで直しておきます がるむさんへ
;ここまでシナリオ名と月のメソッド

;学園通常パートの好感度増加定数
[iscript]
f.gakuen_tuzyou_koukando=5;
[endscript]

[iscript]
f.gakuen_FT=1;
tf.gakuen_now_turn=f.gakuen_turn_list[f.gakuen_turn]
if(tf.gakuen_now_turn==0){
    //学園限定イベントを選択
    f.gakuen_turn_gentei+=1;
    tf.gakuen_path='gakuen/gentei/';
    tf.gakuen_path+='gakuen_gentei_part_';
    tf.gakuen_path+=f.gakuen_turn_gentei;
    tf.gakuen_path+='.ks';
}else{
    //学園通常イベントを選択
    try{
        tf.list_range=f.gakuen_turn_tuzyo.length;
        tf.math_range=tf.list_range-1;
        tf.random = Math.floor( Math.random() *tf.math_range );
        tf.random_ivent=f.gakuen_turn_tuzyo[tf.random];
        f.gakuen_turn_tuzyo.splice(tf.random,1);
        tf.gakuen_path='gakuen/tuzyo/gakuen_tuzyo_part_';
        tf.gakuen_path+=tf.random_ivent;
        tf.gakuen_path+='.ks';
    }catch{
            if(tf.list_range==0){
                tf.gakuen_path='ending';
            }
    }
    //一様logicのend_turnの値が上手くいかないたら
} 
f.gakuen_turn+=1;
[endscript]

[jump storage="&tf.gakuen_path" ]
