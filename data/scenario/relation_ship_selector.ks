*start
[stopbgm]
[playbgm storage="kouryuBGM.mp3"]

[iscript]
f.AnimationLayerFlag+=1;
f.Relationship_selector_flag='true';
//あんまよくないけど
f.AnimationTransitionFlag="";
[endscript]
[cm ]
;ボタンの宣言
;戻るボタンの作成
[button name="back_bt" graphic="../fgimage/relationship_selector_image/UI/backbutton.png"  x="1120"  y="-2500" enterimg="../fgimage/relationship_selector_image/UI/backbuttonaffter.png" exp="f.AnimationTransitionFlag='true'"  storage="houkago_selector.ks" target="*start_sab" ]

;ボタンの作成

;scoutの交流ボタンの作成
[button name="scout_kouryu"  graphic="../fgimage/relationship_selector_image/UI/scout_background_layer.png" enterimg="../fgimage/relationship_selector_image/UI/scout_background_layeraffter.png"  x="300"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='scout'"  ]

;ツクリの交流ボタンの作成
[button name="tsukuri_kouryu"  graphic="../fgimage/relationship_selector_image/UI/tsukuri_background_layer.png" enterimg="../fgimage/relationship_selector_image/UI/tsukuri_background_layeraffter.png" x="300"   y="-2500"  target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'" ]

;ワカツキの交流ボタンの作成
[button name="wakastuki_kouryu"  graphic="../fgimage/relationship_selector_image/UI/wakatsuki_background_layer.png" enterimg="../fgimage/relationship_selector_image/UI/wakatsuki_background_layeraffter.png" x="300"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'"  ]

;メモリの交流ボタンの作成
[button name="memori_kouryu" graphic="../fgimage/relationship_selector_image/UI/memori_background_layer.png" enterimg="../fgimage/relationship_selector_image/UI/memori_background_layeraffter.png" x="300"   y="-2500" target="*kouryu_ivent" exp="tf.koryu_person='memori'"  ]

;キャラ交流解放度
[iscript]
var obj = {
    chara_achievement: function(person,kouryu_key,place) {
        name="";
        name_list=[];
        var AchievementsUnlock=(num,i)=>{
            if(person>=num&&kouryu_key>=i&&place>=num){
                tf.koukando_achievement="../fgimage/relationship_selector_image/image/successed.png"; //●
            }else if(person>=num&&kouryu_key<=i&&place>=num){
                tf.koukando_achievement="../fgimage/relationship_selector_image/image/anlock.png"; //○
            }else{
                tf.koukando_achievement="../fgimage/relationship_selector_image/image/lock.png"; //🔒
            }
            return tf.koukando_achievement;
        }
        name=AchievementsUnlock(0,1);
        name_list.push(name);
        name=AchievementsUnlock(50,2);
        name_list.push(name);
        name=AchievementsUnlock(100,3);
        name_list.push(name);
        return name_list;
    }
}
tf.memori_achievement=obj.chara_achievement(f.memori,f.memori_kouryu_key,f.art_museum);
tf.scout_achievement=obj.chara_achievement(f.scout,f.scout_kouryu_key,f.cafe);
tf.tsukuri_achievement=obj.chara_achievement(f.tsukuri,f.tsukuri_kouryu_key,f.park);
tf.wakatsuki_achievement=obj.chara_achievement(f.wakatsuki,f.wakatsuki_kouryu_key,f.game_center);
[endscript]




;スカウトの確認画面
[button name="scout_achievement" graphic="&tf.scout_achievement[0]"  x="450"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='scout'" ]
[button name="scout_achievement" graphic="&tf.scout_achievement[1]"  x="550"   y="-2500"  target="*kouryu_ivent"exp="tf.koryu_person='scout'"]
[button name="scout_achievement" graphic="&tf.scout_achievement[2]"  x="650"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='scout'"]

;ツクリの確認画面
[button name="tsukuri_achievement" graphic="&tf.tsukuri_achievement[0]"  x="450"   y="-2500"target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'" ]
[button name="tsukuri_achievement" graphic="&tf.tsukuri_achievement[1]"  x="550"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'"]
[button name="tsukuri_achievement" graphic="&tf.tsukuri_achievement[2]"  x="650"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='tsukuri'"]


;ワカツキの確認画面
[button name="wakastuki_achievement" graphic="&tf.wakatsuki_achievement[0]"  x="450"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'" ]
[button name="wakastuki_achievement" graphic="&tf.wakatsuki_achievement[1]"  x="550"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'"]
[button name="wakastuki_achievement" graphic="&tf.wakatsuki_achievement[2]"  x="650"   y="-2500" target="*kouryu_ivent"exp="tf.koryu_person='wakatsuki'"]


;メモリの確認画面
[button name="memori_achievement" graphic="&tf.memori_achievement[0]"  x="450"   y="-2500" target="*kouryu_ivent" exp="tf.koryu_person='memori'" ]
[button name="memori_achievement" graphic="&tf.memori_achievement[1]"  x="550"   y="-2500" target="*kouryu_ivent" exp="tf.koryu_person='memori'"]
[button name="memori_achievement" graphic="&tf.memori_achievement[2]"  x="650"   y="-2500" target="*kouryu_ivent" exp="tf.koryu_person='memori'"]


;アニメーションの宣言
[SceneMove]
[clearfix]


[freeimage layer="0" time="0"  ]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[layopt layer="message0" visible="false"]
[layopt layer="2" visible="true" ]


[iscript]
tf.AnimationTime=800;
[endscript]
;アニメーションの宣言
[anim name="back_bt" top="20" time="&tf.AnimationTime"]
[anim name="scout_kouryu" top="30" time="&tf.AnimationTime"]
[anim name="tsukuri_kouryu" top="165" time="&tf.AnimationTime"]
[anim name="wakastuki_kouryu" top="300" time="&tf.AnimationTime"]
[anim name="memori_kouryu" top="435" time="&tf.AnimationTime"]
[anim name="scout_achievement" top="50" time="&tf.AnimationTime"]
[anim name="tsukuri_achievement" top="190" time="&tf.AnimationTime"]
[anim name="wakastuki_achievement" top="330" time="&tf.AnimationTime"]
[anim name="memori_achievement" top="470" time="&tf.AnimationTime"]

[bg storage="../fgimage/relationship_selector_image/background/koryu_background.png" time="1000"  ]
[free layer="message0" name="chara_name_area"  ]


;静的なUIの作成

;パラメータの枠組み
[image name="parameter_frame" storage="houkago_selector_image/UI/parameterbackground.png" x="200" y="600" width="809" height="75"  layer="0" time="0"  ]

;主人公パラメータ
[ptext layer="2" name="align_ct_h" x="-330" y="620" size="30" text="&f.game_center"]
[ptext layer="2" name="align_ct_h" x="-150" y="620" size="30" text="&f.park"]
[ptext layer="2" name="align_ct_h" x="50" y="620" size="30" text="&f.cafe"]
[ptext layer="2" name="align_ct_h" x="250" y="620" size="30" text="&f.art_museum"]


;好感度パラメータのハートマークイメージの宣言
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="30"layer="0" time="0"  ]
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="165"layer="0" time="0"  ]
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="300"layer="0" time="0"  ]
[image storage="../fgimage/relationship_selector_image/image/heart.png" x="800" y="435"layer="0" time="0"  ]

;好感度パラメータの宣言
[ptext name="align_ct_h" layer="2" x="250" y="60" size="60" text="&f.scout"]
[ptext name="align_ct_h" layer="2" x="250" y="195" size="60" text="&f.tsukuri"]
[ptext name="align_ct_h" layer="2" x="250" y="330" size="60" text="&f.wakatsuki"]
[ptext name="align_ct_h" layer="2" x="250" y="465" size="60" text="&f.memori"]


;
;ヘッダーの作成
[image storage="../fgimage/relationship_selector_image/image/header.png" x="-70" y="-10"layer="2" time="0"  ]
[ptext name="align_ct_h" layer="2" x="-530" y="15" size="62" text="交流"  bold="true"  face="Arial" color="0x736e6e"]


[s]
;好感度による会話の操作
;-------------------------------------------------
*kouryu_ivent
[layopt layer="2" visible="false" ]
[iscript]
tf.Waskoryuperson='';
f.chara_directroy='relation_ship/';
//ここメソッドにできたかも
if(tf.koryu_person=='memori'){
    f.chara_directroy+='memori/';
    if(f.memori>=100&&f.memori_kouryu_key==2&&f.art_museum>=100){
        f.memori_kouryu_key+=1;
        f.memori_flag='true';
        tf.koryu_person+='_'+f.memori_kouryu_key;
    }else if(f.memori>=50&&f.memori_kouryu_key==1&&f.art_museum>=50){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else if(f.memori>=0&&f.memori_kouryu_key==0&&f.art_museum>=0){
        tf.koryu_person+='_'+f.memori_kouryu_key;
        f.memori_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
        tf.Waskoryuperson='memori';
    }
}else if(tf.koryu_person=='scout'){
    f.chara_directroy+='scout/';
    if(f.scout>=100&&f.scout_kouryu_key==2&&f.cafe>=100){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_flag='true';
        f.scout_kouryu_key+=1;
    }else if(f.scout>=50&&f.scout_kouryu_key==1&&f.cafe>=50){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else if(f.scout>=0&&f.scout_kouryu_key==0&&f.cafe>=0){
        tf.koryu_person+='_'+f.scout_kouryu_key;
        f.scout_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
        tf.Waskoryuperson='scout';
    }
} else if(tf.koryu_person=='tsukuri'){//ここから変える
    f.chara_directroy+='tsukuri/';
    if(f.tsukuri>=100&&f.tsukuri_kouryu_key==2&&f.park>=100){
        f.tsukuri_flag='true';
        tf.koryu_person+='_'+f.tsukuri_kouryu_key;
        f.tsukuri_kouryu_key+=1;
    }else if(f.tsukuri>=50&&f.tsukuri_kouryu_key==1&&f.park>=50){
        tf.koryu_person+='_'+f.tsukuri_kouryu_key;
        f.tsukuri_kouryu_key+=1;
    }else if(f.tsukuri>=0&&f.tsukuri_kouryu_key==0&&f.park>=0){
        tf.koryu_person+='_'+f.tsukuri_kouryu_key;
        f.tsukuri_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
        tf.Waskoryuperson='tsukuri';
    }
} else if(tf.koryu_person=='wakatsuki'){
    f.chara_directroy+='wakatsuki/';
    if(f.wakatsuki>=100&&f.wakatsuki_kouryu_key==2&&f.game_center>=100){
        f.wakatsuki_flag='true';
        tf.koryu_person+='_'+f.wakatsuki_kouryu_key;
        f.wakatsuki_kouryu_key+=1;
    }else if(f.wakatsuki>=50&&f.wakatsuki_kouryu_key==1&&f.game_center>=50){
        tf.koryu_person+='_'+f.wakatsuki_kouryu_key;
        f.wakatsuki_kouryu_key+=1;
    }else if(f.wakatsuki>=0&&f.wakatsuki_kouryu_key==0&&f.game_center>=0){
        tf.koryu_person+='_'+f.wakatsuki_kouryu_key;
        f.wakatsuki_kouryu_key+=1;
    }else{
        tf.koryu_person='none';
        tf.Waskoryuperson="wakatsuki";
    }
}
    f.chara_directroy+=tf.koryu_person;
    f.chara_directroy+='.ks';

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

;タイトルに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="540" y="690"]
;-----------------------------------------------------------------------------------------------------------------

[if exp="tf.koryu_person!='none'" ]
[SceneMove]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Point"]
[layopt layer="0" visible="true" ]
[ptext layer="0"x="20" y="0" size="40" text="&f.playmouth"  bold="true"  face="Arial" ]
[ptext layer="0" x="20" y="40" size="40" text="&f.playmouth_string"  bold="true"  face="Arial"]
[endif]
[jump storage="&f.chara_directroy" cond="tf.koryu_person!='none'" ]

[iscript]
var obj={
    TalkResult: function(person,koukando,place,kouryu_key){
        ShowingResule="false";
        if(tf.Waskoryuperson==person){
            tf.PlaceResult=0;
            tf.KoukandoResult=0;
            if(kouryu_key==1){
                tf.PlaceResult=50-place;
                tf.KoukandoResult=50-koukando;
            }
            else if(kouryu_key==2){
                tf.PlaceResult=100-place;
                tf.KoukandoResult=100-koukando;
            }
            if(tf.PlaceResult<=0){
                tf.PlaceResult=0;
            }
            if(tf.KoukandoResult<=0){
                tf.KoukandoResult=0;
            }
            if(tf.KoukandoResult==0&&tf.PlaceResult==0){
                ShowingResule="false";
            }else{
                ShowingResule="好感度が"+tf.KoukandoResult+"足りません　"+"お出かけポイントが"+tf.PlaceResult+"足りません";
            }
        }
        return ShowingResule;
    } 
}
tf.memoriResult=obj.TalkResult('memori',f.memori,f.art_museum,f.memori_kouryu_key);
tf.scoutResult=obj.TalkResult('scout',f.scout,f.cafe,f.scout_kouryu_key);
tf.tsukuriResult=obj.TalkResult('tsukuri',f.tsukuri,f.park,f.tsukuri_kouryu_key);
tf.wakatsukiResult=obj.TalkResult('wakatsuki',f.wakatsuki,f.game_center,f.wakatsuki_kouryu_key);
[endscript]

;スキップをキャンセル
[cancelskip]

[if exp="tf.memoriResult!='false'" ]
#
[emb exp="tf.memoriResult"][pse]
[elsif exp="tf.scoutResult!='false'" ]
#
[emb exp="tf.scoutResult"][pse]
[elsif exp="tf.tsukuriResult!='false'" ]
#
[emb exp="tf.tsukuriResult"][pse]
[elsif exp="tf.wakatsukiResult!='false'" ]
#
[emb exp="tf.wakatsukiResult"][pse]
[endif]

[jump storage="relation_ship_selector.ks" ]
