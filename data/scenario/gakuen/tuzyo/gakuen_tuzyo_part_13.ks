*start
[ptext layer="1" x="500" y="0" size="40" text="作業用BGM" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="wakastuki" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
#&f.player_name
何の話してるの？[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あっ、[emb exp="f.player_name"]。いま作業中に聞く音楽の話をしてたの。[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
そうそう、気分上げたいときとかに聞くやつ。[p]

#&f.player_name
二人はどんなのを聞くの？[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
私は音ゲーの曲をよく聞くよ。歌詞とかないやつだけど。[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
私は Offcial 膝ダンディズムとか聞くかな。[p]

#
普段音楽はあまり聴いていないので、おすすめを教えてもらおう…[p]


[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="ワカツキのおすすめを教えて！"   target="*gakuen_tuzyo_part_13_1" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="ツクリのおすすめを教えて！"   target="*gakuen_tuzyo_part_13_2" ]
[s]
*gakuen_tuzyo_part_13_1
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
いいよ。でも、皆びっくりするかも。[p]

#
そういって、ワカツキは聞いている曲を聞かせてくれた[p]

#
ギャリリリリリ！[p]

#&f.player_name
？！[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
それ、210BPM くらいある曲なんだよね。[p]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
作業用には使えないんじゃ…[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
最初はね。でも、ずっとヘビロテしてるうちに慣れてくるから。集中したいときに聞いてみて。[p]

#&f.player_name
大丈夫かな…[p]

#
後日、半信半疑で使ってみるといつもの何倍よりも集中できたのだった…[p]


[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_13_2
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
いいよ。好きなアーティストとかはいる？[p]

#&f.player_name
そういうのに疎くて…[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
それじゃあ、二人に私がいつも聞いてるプレイリストを教えるよ。いい曲ばっかりだから。[p]

#&f.player_name
ありがとう！[p]

#
後日、プレイリストの曲を聴きながら集中して作業が出来た。[p]

[jump storage="gakuen/gakuen_end_point.ks"]