*start

[ptext layer="1" x="500" y="0" size="40" text="補習の危機" name="title_name"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
今日は部活動が早く終わり、ホッと一息つく[emb exp="f.player_name"]。[r]
そんな彼が文化祭の準備で忙しそうな「ツクリ」と教室で偶然会う。[p]

[chara_show name="tsukuri" width="450" height="600" ]

#ツクリ
おーい、“[emb exp="f.player_name"]”くん！ちょっといいかな？[p]

#&f.player_name
ツクリさん、何か手伝うことがありますか？[p]

#ツクリ
うん、実はね、展示会のポスターを作ってるんだけど、意見が欲しいの。[p]

#
ツクリはポスターのデザイン案を見せる

#ツクリ
これ、どう思う？[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="すごく魅力的だと思うよ"  exp="f.tsukuri+=10" target="*gakuen_tuzyo_part_1_root_1" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="もう少し色を明るくした方がいいかも"  exp="f.tsukuri+=20" target="*gakuen_tuzyo_part_1_root_2" ]
[s]

*gakuen_tuzyo_part_1_root_1

#&f.player_name
すごく魅力的だと思いますよ。目を引くデザインで、文化祭が楽しみになりますね。[p]

#ツクリ
ありがとう！そう言ってもらえると安心するよ。このデザインで決定しようかな。[p]

#&f.player_name
文化祭でみんなに見てもらうのが楽しみですね。どんな反応があるかな？[p]

#ツクリ
きっと皆、驚くと思うよ！おかげで自信が持てたよ。[p]

[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_1_root_2

#&f.player_name
デザインはいいけど、もう少し色を明るくした方がもっと活気が出ると思います。[p]

#ツクリ
へぇ、いい提案だね！ちょっと調整してみるよ。[p]

#
ツクリは少し修正を加えて見せる[p]

#ツクリ
こんな感じはどうかな？[p]

#&f.player_name
はい、これならもっと注目されると思います！[p]

#ツクリ
助かるよ。ありがとう、“[emb exp="f.player_name"]”くん。じゃあ、このデザインで行こう！[p]

#&f.player_name
ポスターが完成したら、ぜひ最初に見せてくださいね。[p]

#ツクリ
もちろんだよ。さあ、これからも一緒に頑張ろう！[p]

[jump storage="gakuen/gakuen_end_point.ks"]