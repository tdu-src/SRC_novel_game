*start
[ptext layer="1" x="0" y="0" size="40" text="作業用BGM" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="wakastuki" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
#&f.player_name
何の話してるの？[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あっ、[emb exp="f.player_name"]。いま作業中に聞く音楽の話をしてたの。[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
そうそう、気分上げたいときとかに聞くやつ。[pse]

#&f.player_name
二人はどんなのを聞くの？[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
私は音ゲーの曲をよく聞くよ。歌詞とかないやつだけど。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
私は Offcial 膝ダンディズムとか聞くかな。[pse]

#
普段音楽はあまり聴いていないので、おすすめを教えてもらおう…[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="ワカツキのおすすめを教えて！"   target="*gakuen_tuzyo_part_13_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="ツクリのおすすめを教えて！"   target="*gakuen_tuzyo_part_13_2" ]
[s]
*gakuen_tuzyo_part_13_1
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
いいよ。でも、皆びっくりするかも。[pse]

#
そういって、ワカツキは聞いている曲を聞かせてくれた[pse]

#
ギャリリリリリ！[pse]

#&f.player_name
？！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
それ、210BPM くらいある曲なんだよね。[pse]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
作業用には使えないんじゃ…[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
最初はね。でも、ずっとヘビロテしてるうちに慣れてくるから。集中したいときに聞いてみて。[pse]

#&f.player_name
大丈夫かな…[pse]

#
後日、半信半疑で使ってみるといつもの何倍よりも集中できたのだった…[pse]


[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_13_2
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
いいよ。好きなアーティストとかはいる？[pse]

#&f.player_name
そういうのに疎くて…[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
それじゃあ、二人に私がいつも聞いてるプレイリストを教えるよ。いい曲ばっかりだから。[pse]

#&f.player_name
ありがとう！[pse]

#
後日、プレイリストの曲を聴きながら集中して作業が出来た。[pse]

[jump storage="gakuen/gakuen_end_point.ks"]