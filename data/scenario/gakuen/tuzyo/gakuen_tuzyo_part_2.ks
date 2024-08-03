*start
[ptext layer="1" x="0" y="0" size="40" text="教室の掃除" name="align_ct_h"]

#&f.player_name
さて、掃除を始めよう![p]

[chara_show name="scout" width="450" height="600" ]
[chara_show name="memori" width="450" height="600" ]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#スカウト
掃除機は私が使うので、[emb exp="f.player_name"]さんは雑巾で拭き掃除をしてくださいね！[p]

[bg time="10000" storage="classroom_hiru.jpg" method="fadeInLeft"]
#メモリ
ボクは黒板をきれいにするよ！[p]

#
（時間経過カットイン）[p]

[bg time="10000" storage="classroom_yugata.jpg" method="fadeInLeft"]
#スカウト
はぁ～、やっと終わりましたよ...[p]


#メモリ
ボクも終わったよ！[p]

#&f.player_name
みんな、掃除お疲れ様！[p]

#
時間をかけた甲斐もあって、教室はピカピカだ![p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="床、すごく綺麗になったね！"   target="gakuen_tuzyo_part_2_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=" 黒板、すごく綺麗になったね！"  target="*gakuen_tuzyo_part_2_root_2" ]
[s]



*gakuen_tuzyo_part_2_root_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#スカウト
ふふっ！私にかかればこんなもんです！もっと褒めてくれてもいいんですよ？[p]

#メモリ
でも、[emb exp="f.player_name"]にさりげなく雑巾がけ押し付けてなかった？[p]

#スカウト
お、押し付けてなんかありませんよ！適材適所ってやつです！[p]

#メモリ
じゃあ、そういうことにしておこうかな。[p]

#スカウト
そういうことってなんですか？！[p]


[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_2_root_2
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

#メモリ
でしょでしょ！[p]

#スカウト
あれ、でもどうやって黒板の上の方も掃除できたんですか？[p]

#メモリ
ボクの発明品のおかげだよ！ボタンを押せば、あとは座ってるだけ！[p]

#スカウト
ず、ずるい！私も使わせてくれればよかったのに！[p]

#メモリ
でも、スカウトも[emb exp="f.player_name"]にさりげなく雑巾がけさせてたじゃん？[p]

#スカウト
う、うぐぐ...[p]

[jump storage="gakuen/gakuen_end_point.ks"]