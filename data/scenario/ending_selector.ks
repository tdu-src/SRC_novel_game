*start
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

#
test[p]

[iscript]
tf.ending_root='*ending_root_';
if(f.memori_flag=='true'){
    tf.ending_root+='memori';
}else if(f.scout_flag=='true'){
    tf.ending_root+='scout';
}else{
    tf.ending_root+='normal';
}
[endscript]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[jump storage="ending.ks" target="&tf.ending_root"  ]
