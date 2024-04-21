*start
[bg storage="relation_ship_selector_background.jpg" time="1000"  ]
[free layer="message0" name="chara_name_area"  ]
[clearfix]
[layopt layer="message0" visible="false"  ]
[chara_hide name="akane" time="1000" ]
[chara_hide name="yamato" time="1000" ]

[glink  color="blue"  size="28"  x="100"  width="100"  y="100"  text="戻る" storage="houkago_selector.ks"   ]
[glink  color="blue"  size="28"  x="100"  width="1000"  y="300"  text="メモリ" target="*memori_koryu"  ]
[glink  color="blue"  size="28"  x="100"  width="1000"  y="400"  text="スカウト" target="*scout_kouryu" ]

[s]
;好感度による会話の操作
;-------------------------------------------------
*memori_koryu
[iscript]
tf.koryu_person='memori';
[endscript]
[jump target="*kouryu_ivent" ]
;-------------------------------------------------
*scout_kouryu
[iscript]
tf.koryu_person='scout';
[endscript]
[jump target="*kouryu_ivent" ]
;-------------------------------------------------
*kouryu_ivent
[iscript]
//ここメソッドにできたかも
if(tf.koryu_person=='memori'){
    if(f.memori>=100&&f.memori_kouryu_key>=4){
        f.memori_flag='true';
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=80&&f.memori_kouryu_key>=3){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=60&&f.memori_kouryu_key>=2){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=40&&f.memori_kouryu_key>=1){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=20){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
}else if(tf.koryu_person=='scout'){
    if(f.scout>=100&&f.scout_kouryu_key>=4){
        f.scout_flag='true';
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=80&&f.scout_kouryu_key>=3){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=60&&f.scout_kouryu_key>=2){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=40&&f.scout_kouryu_key>=1){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>20){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
} 
[endscript]

;メッセージウインドウの宣言
;-----------------------------------------------------------------------------------------------------
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

;-----------------------------------------------------------------------------------------------------------------

[jump storage="relation_ship.ks" target="&tf.koryu_person" cond="tf.koryu_person!='none'" ]
[jump storage="relation_ship_selector.ks" ]
