*start
[ptext layer="1" x="500" y="0" size="40" text="いざ、尋常に！" name="title_name"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

#
廊下を歩いていると、スカウトがにやにやしながらこちらに近づいてきた...[p]

[chara_show name="scout" time="1000" width="450" height="600" ]


[chara_mod name=scout face=normal time="1000" ]
#スカウト
[emb exp="f.player_name"]さん！！私と勝負です！！[p]

#&f.player_name
なんの勝負？[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
そんなの、今日発売された「ダウンタウンファイター６」[p]

#
どうやら超有名格闘ゲームの新作が今日発売されたらしいが...[p]

#&f.player_name
学校でゲームしちゃダメじゃない...？[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
大丈夫です！！部室でやればバレないので！！[p]

#&f.player_name
何が大丈夫なんだろう...[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
さぁ、始めましょう！負けたらジュース奢りです！[p]

#
試合が始まるが、スカウトはなぜか手馴れている...発売日のゲームのはずだが...[p]

#&f.player_name
強い...！[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
ふふふ、気づきました？私が強い理由、それはちょっとだけ体験版をかじったからです！[p]

#&f.player_name
ひ、卑怯者！[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
あはは！勝負の世界に卑怯も何もありませんよ！さぁ、私の勝ちです！[p]

#
このままでは負けてしまう... どうにかしなければ...[p]


[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="必殺技を使う！"   target="*gakuen_tuzyo_part_12_1" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="とにかく守り切る！"   target="*gakuen_tuzyo_part_12_2" ]        
[s]
*gakuen_tuzyo_part_12_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#
攻撃してきたスカウトに大して、無敵の必殺技を繰り返した。[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あ、やば！[p]

#&f.player_name
行ける！[p]

#
必殺技で流れを変え、そのまま押し切った。[p]

#&f.player_name
勝った！！[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
そんなぁ！あんなのまぐれです！もう一回やりましょう！！[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぐぎぎぎぎ.....！！覚えといてください～～！！！！[p]


[chara_hide name="scout" width="450" height="600" ]
#
スカウトに勝ち、無事にジュースを勝ち取った...[p]


[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_12_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#
ガードし続ける自分に対し、スカウトは誤って隙の大きな技を繰り出した。[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あ、やば！[p]

#&f.player_name
チャンス！[p]

#
大きな隙を晒したスカウトに、ありったけの猛攻を叩き込む。[p]

#&f.player_name
勝った！！[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
そんなぁ！今のは押してません！！コントローラーが勝手に動いたんですぅ！もう一回やりましょう！！[p]

#&f.player_name
とりあえず、こっちの勝ちってことでいい？[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぐぎぎぎぎ...！！覚えといてください～～！！！！[p]


[chara_hide name="scout" width="450" height="600" ]
#
スカウトに勝ち、無事にジュースを勝ち取った...[p]

[jump storage="gakuen/gakuen_end_point.ks"]