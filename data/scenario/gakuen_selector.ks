*start

[cm  ]
[clearfix]
[start_keyconfig]

;背景は各会話の初めに宣言する
[bg storage="room.jpg" time="1000"  ]

;メニューボタンの表示
@showmenubutton

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

;メニューボタン非表示
@hidemenubutton


;ロールボタン追加;;;;;;;;;;;;;;


; ロールボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="740" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="840" y="690"]

;セーブボタン
;[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
;[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="940" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="1040" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="1140" y="690"]

;フルスクリーン切替ボタン
;[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
;[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
;[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
;[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトルに戻るボタン
;[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ロールボタン追加終わり

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="normal" storage="chara/akane/normal.png"  ]
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

[chara_face name="yamato" face="happy" storage="chara/yamato/happy.png"  ]
[chara_face name="yamato" face="angry" storage="chara/yamato/angry.png"  ]
[chara_face name="yamato" face="sad" storage="chara/yamato/sad.png" ]

;kinoshita
[chara_new name="kinoshita" storage="chara/kinoshita/jkbk.png"jname="木下" ]

;ここがシナリオ名と月
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
[freeimage layer="1" time="0"]
[iscript]
tf.mouth_logic_turn=f.gakuen_turn;
tf.now_mouth=f.gakuen_mouth_turn[tf.mouth_logic_turn]
if(tf.mouth_logic_turn%2==0){
    tf.now_mouth+="月前半";
}else{
    tf.now_mouth+="月後半";
}
[endscript]
[ptext layer="1" x="0" y="0" size="40" text="&tf.now_mouth" name="mouth" ]
;あとで直しておきます がるむさんへ
[ptext layer="2" x="500" y="0" size="40" text="ここにタイトル" name="title_name"]
;ここまでシナリオ名と月のメソッド

[iscript]
f.gakuen_FT=1;
tf.gakuen_now_turn=f.gakuen_turn_list[f.gakuen_turn]
if(tf.gakuen_now_turn==0){
    //学園限定イベントを選択
    f.gakuen_turn_gentei+=1;
    tf.gakuen_path='gakuen_gentei_part_'
    tf.gakuen_path+=f.gakuen_turn_gentei;
}else{
    //学園通常イベントを選択
    try{
        tf.list_range=f.gakuen_turn_tuzyo.length;
        tf.math_range=tf.list_range-1;
        tf.random = Math.floor( Math.random() *tf.math_range );
        tf.random_ivent=f.gakuen_turn_tuzyo[tf.random];
        f.gakuen_turn_tuzyo.splice(tf.random,tf.random);
        tf.gakuen_path='gakuen_tuzyo_part_';
        tf.gakuen_path+=tf.random_ivent;
    }catch{
            if(tf.list_range==0){
                tf.gakuen_path='ending';
            }
    }
    //一様logicのend_turnの値が上手くいかないたら
} 
f.gakuen_turn+=1;
[endscript]
[jump storage="gakuen.ks" target="&tf.gakuen_path" ]

