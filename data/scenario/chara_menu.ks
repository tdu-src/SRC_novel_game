*start
[bg storage="relation_ship_selector_background.jpg" time="1000"  ]
[freeimage layer="0" time="0"]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]

[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="1100" y="50"]

[iscript]
tf.memori_koukando_meter="";
tf.scout_kokando_meter="";
var obj = {
    chara_kokando_meter: function(meter,person) {
        tf.koukando_meter_string="";
        for(i=0;i<10;i++){
            if(person>i*10){
                tf.koukando_meter_string+="■";
            }else{
                tf.koukando_meter_string+="□"
            }
        }
        meter=tf.koukando_meter_string;
        return meter;
    }
}
tf.memori_koukando_meter=obj.chara_kokando_meter(tf.memori_koukando_meter,f.memori);
tf.scout_kokando_meter=obj.chara_kokando_meter(tf.scout_kokando_meter,f.scout);
[endscript]

[glink  color="blue"  size="28"  x="50"  width="100"  y="50"  text="戻る" storage="houkago_selector.ks"  target="*start_sab"  ]

;キャラアイコン
[image name="scout_icon"  storage="kouryu/scout/scout_icon.png" height="110" width="110"    layer="2"  x="313" y="245" time="0"]
[image name="memori_icon"  storage="kouryu/memori/memori_icon.png" height="100" width="100"    layer="2"  x="320" y="160" time="0"]

;以下からキャラの好感度
[ptext layer="2" x="400" y="180" size="40" text="&tf.memori_koukando_meter"]
[ptext layer="2" x="400" y="253" size="40" text="&tf.scout_kokando_meter"]

[iscript]
tf.memori_koukando_parameter="";
tf.scout_koukando_parameter="";
var obj = {
    koukando_parameter: function(koukando,koukando_max) {
        if(koukando>=100){
            koukando_max="MAX";
        }else{
            koukando_max+=koukando;
        }
        return koukando_max;
    }
}
tf.memori_koukando_parameter=obj.koukando_parameter(f.memori,tf.memori_koukando_parameter);
tf.scout_koukando_parameter=obj.koukando_parameter(f.scout,tf.scout_koukando_parameter);
[endscript]

;キャラの好感度（数値）
[ptext layer="2" x="825" y="190" size="40" text="&tf.memori_koukando_parameter"]
[ptext layer="2" x="825" y="260" size="40" text="&tf.scout_koukando_parameter"]


;装飾
[image name="parameter_frame" storage="items/parameter_frame.png" x="-200" y="500" height="300" width="1500" layer="2"  time="0" ]
[image name="koukando_parameter_frame" storage="items/koukando_parameter_frame.png" x="171" y="123" height="220" width="800" layer="2"  time="0" ]
[image name="koukando_parameter_frame" storage="items/koukando_parameter_frame.png" x="171" y="195" height="220" width="800" layer="2"  time="0" ]

;主人公パラメータ
[ptext layer="2" x="350" y="620" size="40" text="&f.cafe"]
[ptext layer="2" x="570" y="620" size="40" text="&f.library"]
[ptext layer="2" x="1000" y="620" size="40" text="&f.my_home"]
[ptext layer="2" x="800" y="620" size="40" text="&f.game_senter"]

[s]


