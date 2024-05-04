*start
[bg storage="relation_ship_selector_background.jpg" time="1000"  ]
[freeimage layer="0" time="0"]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
[image name="scout_icon"  storage="kouryu/scout/scout_icon.png" height="100" width="100"    layer="2"  x="100" y="400" time="0"]
[image name="scout_icon"  storage="kouryu/memori/memori_icon.png" height="100" width="100"    layer="2"  x="100" y="280" time="0"]
[iscript]
tf.memori_koukando_meter="";
tf.scout_kokando_meter="";
var obj = {
    chara_kokando_meter: function(meter,person) {
        tf.koukando_meter_string="";
        for(i=0;i<5;i++){
            if(person>i*20){
                tf.koukando_meter_string+="■■";
            }else{
                tf.koukando_meter_string+="□□"
            }
        }
        meter=tf.koukando_meter_string;
        return meter;
    }
}
tf.memori_achievement=obj.chara_kokando_meter(tf.memori_koukando_meter,f.memori);
tf.scout_kokando_meter=obj.chara_kokando_meter(tf.scout_koukando_meter,f.scout);
[endscript]

[ptext layer="1" x="100" y="200" size="40" text="&tf.memori_koukando_meter"]

[ptext layer="2" x="100" y="400" size="40" text="&tf.scout_kokando_meter"]


