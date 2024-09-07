*start
[bg storage="rouka.jpg" time="1000"  ]
[isHeader text="いざ、尋常に！" x="-350" width="500"]
[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]

#
廊下を歩いていると、スカウトがにやにやしながらこちらに近づいてきた...[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="scout" time="1000" width="450" height="600" ]


[chara_mod name=scout face=normal time="1000" ]
#スカウト
[emb exp="f.player_name"]さん！！私と勝負です！！[pse]

#&f.player_name
なんの勝負？[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
そんなの、今日発売された「ダウンタウンファイター６」[pse]

#
どうやら超有名格闘ゲームの新作が今日発売されたらしいが...[pse]

#&f.player_name
学校でゲームしちゃダメじゃない...？[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
大丈夫です！！部室でやればバレないので！！[pse]

#&f.player_name
何が大丈夫なんだろう...[pse]

[isTimePassage]
[bg storage="room.jpg" time="1000"  ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
さぁ、始めましょう！負けたらジュース奢りです！[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


#
試合が始まるが、スカウトはなぜか手馴れている...発売日のゲームのはずだが...[pse]

#&f.player_name
強い...！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
ふふふ、気づきました？私が強い理由、それはちょっとだけ体験版をかじったからです！[pse]

#&f.player_name
ひ、卑怯者！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
あはは！勝負の世界に卑怯も何もありませんよ！さぁ、私の勝ちです！[pse]

#
このままでは負けてしまう... どうにかしなければ...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="必殺技を使う！"   target="*gakuen_tuzyo_part_12_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="とにかく守り切る！"   target="*gakuen_tuzyo_part_12_2" ]        
[s]
*gakuen_tuzyo_part_12_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#
攻撃してきたスカウトに大して、無敵の必殺技を繰り返した。[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あ、やば！[pse]

#&f.player_name
行ける！[pse]

#
必殺技で流れを変え、そのまま押し切った。[pse]

#&f.player_name
勝った！！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
そんなぁ！あんなのまぐれです！もう一回やりましょう！！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぐぎぎぎぎ.....！！覚えといてください～～！！！！[pse]


[chara_hide name="scout" width="450" height="600" ]
#
スカウトに勝ち、無事にジュースを勝ち取った...[pse]


[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_12_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#
ガードし続ける自分に対し、スカウトは誤って隙の大きな技を繰り出した。[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あ、やば！[pse]

#&f.player_name
チャンス！[pse]

#
大きな隙を晒したスカウトに、ありったけの猛攻を叩き込む。[pse]

#&f.player_name
勝った！！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
そんなぁ！今のは押してません！！コントローラーが勝手に動いたんですぅ！もう一回やりましょう！！[pse]

#&f.player_name
とりあえず、こっちの勝ちってことでいい？[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぐぎぎぎぎ...！！覚えといてください～～！！！！[pse]


[chara_hide name="scout" width="450" height="600" ]
#
スカウトに勝ち、無事にジュースを勝ち取った...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]