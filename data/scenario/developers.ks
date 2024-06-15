*start

@layopt layer="message0" visible="false"

[layopt layer="1" visible="true"]
[freeimage layer="1" time="0"]
[iscript]
tf.dev_scout="スカウト";
tf.dev_tsukuri="ツクリ";
tf.dev_wakatsuki="ワカツキ";
tf.dev_memori="メモリ";

let koukando=(name,koukando)=>{
    name+="　　"+koukando;
    return name;
}
tf.dev_scout=koukando(tf.dev_scout,f.scout);
tf.dev_memori=koukando(tf.dev_memori,f.memori);
tf.dev_tsukuri=koukando(tf.dev_tsukuri,f.tsukuri);
tf.dev_wakatsuki=koukando(tf.dev_wakatsuki,f.wakatsuki);

tf.dev_gakuen_tuzyo_list="";

for(var i=0;i<f.gakuen_turn_tuzyo.length;i++){
    tf.dev_gakuen_tuzyo_list+=f.gakuen_turn_tuzyo[i];
    tf.dev_gakuen_tuzyo_list+="　";
}
[endscript]

[ptext layer="1" x="0" y="50" size="40" text="&tf.dev_gakuen_tuzyo_list"]

[ptext layer="1" x="100" y="200" size="40" text="&tf.dev_scout"]
[glink  color="blue"  size="21"  x="400"  width="50"  y="200"  text="↑" exp="f.scout+=10"]
[glink  color="blue"  size="21"  x="550"  width="50"  y="200"  text="↓" exp="f.scout-=10"]

[ptext layer="1" x="100" y="300" size="40" text="&tf.dev_memori"]
[glink  color="blue"  size="21"  x="400"  width="50"  y="300"  text="↑" exp="f.memori+=10"]
[glink  color="blue"  size="21"  x="550"  width="50"  y="300"  text="↓" exp="f.memori-=10"]

[ptext layer="1" x="100" y="400" size="40" text="&tf.dev_tsukuri"]
[glink  color="blue"  size="21"  x="400"  width="50"  y="400"  text="↑" exp="f.tsukuri+=10"]
[glink  color="blue"  size="21"  x="550"  width="50"  y="400"  text="↓" exp="f.tsukuri-=10"]

[ptext layer="1" x="100" y="500" size="40" text="&tf.dev_wakatsuki"]
[glink  color="blue"  size="21"  x="400"  width="50"  y="500"  text="↑" exp="f.wakatsuki+=10"]
[glink  color="blue"  size="21"  x="550"  width="50"  y="500"  text="↓" exp="f.wakatsuki-=10"]

[glink  color="blue"  size="21"  x="50"  width="100"  y="0"  text="戻る" target="*developer_option"]
[s]

*developer_option
[freeimage layer="1" time="0"]
[jump storage="logic.ks"]
