*start
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
ある日の放課後[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
お～い、[emb exp="f.player_name"]！[pse]

#&f.player_name
めもり！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
やっと見つけた！[emb exp="f.player_name"]に見せたいものがあって、ずっと探してたんだよ！[pse]

#&f.player_name
見せたいものって？[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
それはねじゃじゃ～ん！[pse]

#
めもりが見せたのは、すべて英語で書かれた書類のようなものだった[pse]

#&f.player_name
これって！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そう！卒業したら、海外の大学に入学します！！[pse]

#&f.player_name
決心がついたんだね！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
うん！[emb exp="f.player_name"]が背中を押してくれたおかげで、頑張ってみようと思えたんだ！[pse]

#&f.player_name
卒業したら、寂しくなるね[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
いやいや、[emb exp="f.player_name"]は周りに皆がいるじゃん！[pse]

[chara_mod name=memori face=weariness time="1000" ]
#めもり
ぼくなんて、見知らぬ海外の地で一人きりだよ[pse]

#&f.player_name
寂しくなったら、いつでも電話してきて！[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
本当？！ぼく、毎日電話しちゃうよ！[pse]

#&f.player_name
めもりを応援できるならなんだってするよ！[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
[emb exp="f.player_name"]！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ぼく、海外に行っても頑張るよ！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
だから、これからもずっと友達だからね！！[pse]

[jump storage="ending/ending_point.ks"]