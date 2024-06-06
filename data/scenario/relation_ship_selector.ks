*start
[bg storage="relation_ship_selector_background.jpg" time="1000"  ]
[free layer="message0" name="chara_name_area"  ]
[clearfix]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[layopt layer="message0" visible="false"]
[layopt layer="2" visible="true" ]
[chara_hide name="akane" time="1000" ]
[chara_hide name="yamato" time="1000" ]

;キャラ交流解放度
[iscript]
tf.memori_achievement="メモリ"
tf.scout_achievement="スカウト"
var obj = {
    chara_achievement: function(name,person,kouryu_key) {
        tf.space_achievement="　　";
        tf.koukando_achievement="●";
        tf.achievement="";
        for(i=1;i<6;i++){
            if(person>=i*20&&kouryu_key>=i){
                tf.koukando_achievement="●";
            }else if(person>=i*20&&kouryu_key<=i){
                tf.koukando_achievement="○";
            }else{
                tf.koukando_achievement="🔒";
            }
            tf.achievement+=tf.space_achievement+tf.koukando_achievement;
        }
        name=name+tf.achievement;
        return name;
    }
}
tf.memori_achievement=obj.chara_achievement(tf.memori_achievement,f.memori,f.memori_kouryu_key);
tf.scout_achievement=obj.chara_achievement(tf.scout_achievement,f.scout,f.scout_kouryu_key);
[endscript]



[glink  color="blue"  size="28"  x="100"  width="100"  y="100"  text="戻る" storage="houkago_selector.ks" target="*start_sab" ]
[glink  color="blue"  size="28"  x="200"  width="800"  y="300"  text="&tf.memori_achievement" target="*kouryu_ivent" exp="tf.koryu_person='memori'"  ]
[glink  color="blue"  size="28"  x="200"  width="800"  y="400"  text="&tf.scout_achievement" target="*kouryu_ivent"exp="tf.koryu_person='scout'"  ]


[image name="scout_icon"  storage="kouryu/scout/scout_icon.png" height="100" width="100"    layer="2"  x="100" y="400" time="0"]
[image name="scout_icon"  storage="kouryu/memori/memori_icon.png" height="100" width="100"    layer="2"  x="100" y="280" time="0"]
[s]
;好感度による会話の操作
;-------------------------------------------------
*kouryu_ivent
[layopt layer="2" visible="false" ]
[iscript]
//ここメソッドにできたかも
if(tf.koryu_person=='memori'){
    if(f.memori>=100&&f.memori_kouryu_key==4){
        f.memori_flag='true';
        tf.koryu_person+='_'+f.memori_kouryu_key;
    }else if(f.memori>=80&&f.memori_kouryu_key==3){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=60&&f.memori_kouryu_key==2){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=40&&f.memori_kouryu_key==1){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=20&&f.memori_kouryu_key==0){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
}else if(tf.koryu_person=='scout'){
    if(f.scout>=100&&f.scout_kouryu_key==4){
        f.scout_flag='true';
        tf.koryu_person+='_'+f.scout_kouryu_key;
    }else if(f.scout>=80&&f.scout_kouryu_key==3){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=60&&f.scout_kouryu_key==2){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=40&&f.scout_kouryu_key==1){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=20&&f.scout_kouryu_key==0){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
} else if(tf.koryu_person=='tsukuri'){//ここから変える」
    if(f.scout>=100&&f.scout_kouryu_key==4){
        f.scout_flag='true';
        tf.koryu_person+='_'+f.scout_kouryu_key;
    }else if(f.scout>=80&&f.scout_kouryu_key==3){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=60&&f.scout_kouryu_key==2){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=40&&f.scout_kouryu_key==1){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=20&&f.scout_kouryu_key==0){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
} else if(tf.koryu_person=='wakatsuki'){
    if(f.scout>=100&&f.scout_kouryu_key==4){
        f.scout_flag='true';
        tf.koryu_person+='_'+f.scout_kouryu_key;
    }else if(f.scout>=80&&f.scout_kouryu_key==3){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=60&&f.scout_kouryu_key==2){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=40&&f.scout_kouryu_key==1){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=20&&f.scout_kouryu_key==0){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
} 
/*
var obj={
    relation_ship_select:function(koukando,key,flag){
        flag='false';
        if(koukando>=100&&key==4){
            flag='true';
            tf.koryu_person+='_'+key;
        }else if(koukando>=80&&key==3){
            tf.koryu_person+='_'+key;
            key+=1;
        }else if(koukando>=60&&key==2){
            tf.koryu_person+='_'+key;
            key+=1;
        }else if(koukando>=40&&key==1){
            tf.koryu_person+='_'+key;
            key+=1;
        }else if(koukando>=20&&key==0){
            tf.koryu_person+='_'+key;
            key+=1;
        }else{
            tf.koryu_person='none';
            key=key;
        }
        return [tf.koryu_person,key,flag];
}
}
if(tf.koryu_person=='memori'){
    var[tf.koryu_person,f.memori_kouryu_key,f.memori_flag]=obj.relation_ship_select(f.memori,f.memori_kouryu_key,f.memori_flag);
}else if(tf.koryu_person=='scout'){
    var[tf.koryu_person,f.scout_kouryu_key,f.scout_flag]=obj.relation_ship_select(f.scout,f.scout_kouryu_key,f.scout_flag);
}
*/
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
