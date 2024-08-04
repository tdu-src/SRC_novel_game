*start

[cm  ]
[bg storage="../fgimage/relationship_selector_image/background/koryu_background.png" time="1000"  ]
[free layer="message0" name="chara_name_area"  ]

[clearfix]

[freeimage layer="0" time="0"  ]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[layopt layer="message0" visible="false"]
[layopt layer="2" visible="true" ]

;静的なUIの作成

;パラメータの枠組み
[image name="parameter_frame" storage="houkago_selector_image/UI/parameterbackground.png" x="200" y="600" width="809" height="75"  layer="0" time="0"  ]

;主人公パラメータ
[ptext layer="2" x="300" y="620" size="40" text="&f.game_center"]
[ptext layer="2" x="480" y="620" size="40" text="&f.park"]
[ptext layer="2" x="680" y="620" size="40" text="&f.cafe"]
[ptext layer="2" x="880" y="620" size="40" text="&f.art_museum"]

;戻るボタンの作成
[button graphic="../fgimage/relationship_selector_image/UI/backbutton.png"  x="1120"  y="20" width="120" height="120" storage="houkago_selector.ks" target="*start_sab" ]

;好感度パラメータのハートマークイメージの宣言
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="30"layer="0" time="0"  ]
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="165"layer="0" time="0"  ]
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="300"layer="0" time="0"  ]
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="435"layer="0" time="0"  ]

;好感度パラメータの宣言
[ptext layer="2" x="860" y="60" size="60" text="&f.scout"]
[ptext layer="2" x="860" y="195" size="60" text="&f.tsukuri"]
[ptext layer="2" x="860" y="330" size="60" text="&f.wakatsuki"]
[ptext layer="2" x="860" y="465" size="60" text="&f.memori"]


;
;キャラ交流解放度
[iscript]
var obj = {
    chara_achievement: function(person,kouryu_key) {
        name="";
        name_list=[];
        var AchievementsUnlock=(num,i)=>{
            if(person>=num&&kouryu_key>=i){
                tf.koukando_achievement="../fgimage/relationship_selector_image/image/successed.png"; //●
            }else if(person>=num&&kouryu_key<=i){
                tf.koukando_achievement="../fgimage/relationship_selector_image/image/anlock.png"; //○
            }else{
                tf.koukando_achievement="../fgimage/relationship_selector_image/image/lock.png"; //🔒
            }
            return tf.koukando_achievement;
        }
        name=AchievementsUnlock(30,1);
        name_list.push(name);
        name=AchievementsUnlock(60,2);
        name_list.push(name);
        name=AchievementsUnlock(100,3);
        name_list.push(name);
        return name_list;
    }
}
tf.memori_achievement=obj.chara_achievement(f.memori,f.memori_kouryu_key);
tf.scout_achievement=obj.chara_achievement(f.scout,f.scout_kouryu_key);
tf.tsukuri_achievement=obj.chara_achievement(f.tsukuri,f.tsukuri_kouryu_key);
tf.wakatsuki_achievement=obj.chara_achievement(f.wakatsuki,f.wakatsuki_kouryu_key);
[endscript]

[ptext layer="2" x="0" y="0" size="60" text="&f.memori_kouryu_key"]

;ボタンの作成

;scoutの交流ボタンの作成
[button  graphic="../fgimage/relationship_selector_image/UI/scout_background_layer.png"  x="300"   y="30" target="*kouryu_ivent"exp="tf.koryu_person='scout'"  ]

;ツクリの交流ボタンの作成
[button  graphic="../fgimage/relationship_selector_image/UI/scout_background_layer.png"  x="300"   y="165"  target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'" ]

;ワカツキの交流ボタンの作成
[button  graphic="../fgimage/relationship_selector_image/UI/scout_background_layer.png"  x="300"   y="300" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'"  ]

;メモリの交流ボタンの作成
[button  graphic="../fgimage/relationship_selector_image/UI/scout_background_layer.png"  x="300"   y="435" target="*kouryu_ivent" exp="tf.koryu_person='memori'"  ]


;スカウトの確認画面
[button  graphic="&tf.scout_achievement[0]"  x="450"   y="50" target="*kouryu_ivent"exp="tf.koryu_person='scout'" ]
[button  graphic="&tf.scout_achievement[1]"  x="550"   y="50"  target="*kouryu_ivent"exp="tf.koryu_person='scout'"]
[button  graphic="&tf.scout_achievement[2]"  x="650"   y="50" target="*kouryu_ivent"exp="tf.koryu_person='scout'"]

;ツクリの確認画面
[button  graphic="&tf.tsukuri_achievement[0]"  x="450"   y="190"target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'" ]
[button  graphic="&tf.tsukuri_achievement[1]"  x="550"   y="190" target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'"]
[button  graphic="&tf.tsukuri_achievement[2]"  x="650"   y="190" target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'"]


;ワカツキの確認画面
[button  graphic="&tf.wakatsuki_achievement[0]"  x="450"   y="330" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'" ]
[button  graphic="&tf.wakatsuki_achievement[1]"  x="550"   y="330" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'"]
[button  graphic="&tf.wakatsuki_achievement[2]"  x="650"   y="330" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'"]


;メモリの確認画面
[button  graphic="&tf.memori_achievement[0]"  x="450"   y="470" target="*kouryu_ivent" exp="tf.koryu_person='memori'" ]
[button  graphic="&tf.memori_achievement[1]"  x="550"   y="470" target="*kouryu_ivent" exp="tf.koryu_person='memori'"]
[button  graphic="&tf.memori_achievement[2]"  x="650"   y="470" target="*kouryu_ivent" exp="tf.koryu_person='memori'"]

;[image name="scout_icon"  storage="kouryu/scout/scout_icon.png" height="100" width="100"    layer="2"  x="100" y="400" time="0"]
;[image name="scout_icon"  storage="kouryu/memori/memori_icon.png" height="100" width="100"    layer="2"  x="100" y="280" time="0"]
[s]
;好感度による会話の操作
;-------------------------------------------------
*kouryu_ivent
[layopt layer="2" visible="false" ]
[iscript]
f.chara_directroy='relation_ship/';
//ここメソッドにできたかも
if(tf.koryu_person=='memori'){
    f.chara_directroy+='memori/';
    if(f.memori>=100&&f.memori_kouryu_key==2){
        f.memori_kouryu_key+=1;
        f.memori_flag='true';
        tf.koryu_person+='_'+f.memori_kouryu_key;
    }else if(f.memori>=60&&f.memori_kouryu_key==1){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=30&&f.memori_kouryu_key==0){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
}else if(tf.koryu_person=='scout'){
    f.chara_directroy+='scout/';
    if(f.scout>=100&&f.scout_kouryu_key==2){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_flag='true';
        f.scout_kouryu_key+=1;
    }else if(f.scout>=60&&f.scout_kouryu_key==1){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=30&&f.scout_kouryu_key==0){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
} else if(tf.koryu_person=='tsukuri'){//ここから変える
    f.chara_directroy+='tsukuri/';
    if(f.tsukuri>=100&&f.tsukuri_kouryu_key==2){
        f.tsukuri_flag='true';
        tf.koryu_person+='_'+f.tsukuri_kouryu_key;
        f.tsukuri_kouryu_key+=1;
    }else if(f.tsukuri>=60&&f.tsukuri_kouryu_key==1){
        tf.koryu_person+='_'+f.tsukuri_kouryu_key;
        f.tsukuri_kouryu_key+=1;
    }else if(f.tsukuri>=30&&f.tsukuri_kouryu_key==0){
        tf.koryu_person+='_'+f.tsukuri_kouryu_key;
        f.tsukuri_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
} else if(tf.koryu_person=='wakatsuki'){
    f.chara_directroy+='wakatsuki/';
    if(f.wakatsuki>=100&&f.wakatsuki_kouryu_key==2){
        f.wakatsuki_flag='true';
        tf.koryu_person+='_'+f.wakatsuki_kouryu_key;
        f.wakatsuki_kouryu_key+=1;
    }else if(f.wakatsuki>=60&&f.wakatsuki_kouryu_key==1){
        tf.koryu_person+='_'+wakatsuki_kouryu_key;
        f.wakatsuki_kouryu_key+=1;
    }else if(f.wakatsuki>=30&&f.wakatsuki_kouryu_key==0){
        tf.koryu_person+='_'+f.wakatsuki_kouryu_key;
        f.wakatsuki_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
    }
}
    f.chara_directroy+=tf.koryu_person;
    f.chara_directroy+='.ks';

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

[cm  ]
[clearfix ]
[start_keyconfig]
[freeimage layer="0" time="0"  ]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]

;メッセージウインドウの宣言
;-----------------------------------------------------------------------------------------------------
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x="250" y=505 ]

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


[jump storage="&f.chara_directroy" cond="tf.koryu_person!='none'" ]

#
好感度が足りません[p]

[jump storage="relation_ship_selector.ks" ]
