*start
[bg storage="room.jpg" time="1000"  ]
[isHeader text="教室の掃除" x="-400" width="430"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]


#&f.player_name
さて、掃除を始めよう![s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="scout" width="450" height="600" ]
[chara_show name="memori" width="450" height="600" ]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#スカウト
掃除機は私が使うので、[emb exp="f.player_name"]さんは雑巾で拭き掃除をしてくださいね！[pse]

#メモリ
ボクは黒板をきれいにするよ！[pse]

[isTimePassage]
[bg time="1000" storage="classroom_yugata.jpg"]
#スカウト
はぁ～、やっと終わりましたよ...[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


#メモリ
ボクも終わったよ！[pse]

#&f.player_name
みんな、掃除お疲れ様！[pse]

#
時間をかけた甲斐もあって、教室はピカピカだ![pse]

[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="床、すごく綺麗になったね！"   target="gakuen_tuzyo_part_2_root_1"]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text=" 黒板、すごく綺麗になったね！"  target="*gakuen_tuzyo_part_2_root_2" ]
[s]



*gakuen_tuzyo_part_2_root_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#スカウト
ふふっ！私にかかればこんなもんです！もっと褒めてくれてもいいんですよ？[pse]

#メモリ
でも、[emb exp="f.player_name"]にさりげなく雑巾がけ押し付けてなかった？[pse]

#スカウト
お、押し付けてなんかありませんよ！適材適所ってやつです！[pse]

#メモリ
じゃあ、そういうことにしておこうかな。[pse]

#スカウト
そういうことってなんですか？！[pse]


[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_2_root_2
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

#メモリ
でしょでしょ！[pse]

#スカウト
あれ、でもどうやって黒板の上の方も掃除できたんですか？[pse]

#メモリ
ボクの発明品のおかげだよ！ボタンを押せば、あとは座ってるだけ！[pse]

#スカウト
ず、ずるい！私も使わせてくれればよかったのに！[pse]

#メモリ
でも、スカウトも[emb exp="f.player_name"]にさりげなく雑巾がけさせてたじゃん？[pse]

#スカウト
う、うぐぐ...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]