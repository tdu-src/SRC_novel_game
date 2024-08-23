*start
;文化祭
[ptext layer="1" x="0" y="0" size="40" text="学園祭にて" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

[chara_show name="scout" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
#
今日は学園祭の日！自分はツクリとスカウトと一緒に学校を回っていた[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
いや～賑わってますねぇ！面白そうな出し物がいっ ぱいありますよ！[pse]

#&f.player_name
そうだね。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あっ、見て。ここ、お化け屋敷やってるみたい。[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
えっ...本気ですか...?[pse]

#&f.player_name
怖いの？[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
こここ怖くなんてありませんよ！！所詮高校生クオリティですし！！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふ～ん、じゃあ行こっか[pse]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
待って待って心の準備が！！[pse]


#
入ってみると、学生の催しを超えているレベルで作 りこまれており、中々雰囲気がある。[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
スカウト、大丈夫？尋常じゃないぐらい震えてるけど。[pse]

[chara_mod name=scout face="half_sad" time="1000" ]
#スカウト
だだだ大丈夫ですよ！！こんなの余裕です！！[pse]  

#
すると、いかにも何か出てきそうなロッカーから何 かが出てきた。[pse]

#お化け役の生徒
（グワ～～～～！！）[pse]  

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぎゃ～～～～～！！！！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
うぅ... もうこんな所にはいられません！！私はこ こから出ますよ！！[pse]

#
スカウトはよくあるホラー映画にあるような捨て台 詞を残してリタイアしてしまった。[pse]

#&f.player_name
どうしよう...[pse]

#
かくいう自分も、怖すぎて逃げ出してしまいたい気 分だが...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="このまま続きを回る！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_5_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="自分もリタイアで..."  exp="f.tsukuri+=10" target="*gakuen_gentei_part_5_2" ]
[s]
*gakuen_gentei_part_5_1
#&f.player_name
このまま回るよ...[pse]

#
怖がりながらも、ツクリと最後までお化け屋敷を回った..[pse]

#
（時間経過カットイン）[pse]


[isTimePassage]
[chara_show name="scout" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふぅ、楽しかった。[s]
*Timepassage

[playse storage="../bgm/text_click_se.mp3" ]


[chara_mod name=scout face="half_sad" time="1000" ]
#スカウト
あぁ... 帰ってきたんですね...[pse]

#&f.player_name
大丈夫...？[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
大丈夫に見えますか... お化け屋敷なんて二度と入 りません！！[pse]

#
満足気なツクリとは裏腹に、スカウトは相当ダメー ジを受けたようだ...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_5_2
#&f.player_name
ごめん、自分もリタイアで！[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あ、行っちゃった。しょうがない、一人で回るかぁ...[pse]

[isTimePassage2]
[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face="half_sad" time="1000" ]

#スカウト
[emb exp="f.player_name"]さん、リタイアなんて意気地なしですね...[s]
*Timepassage2

[playse storage="../bgm/text_click_se.mp3" ]


[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん。演出も良かったし、置物のクオリティとかも 凄かったよ。[pse]

#&f.player_name
そっちが先だったじゃん...[pse]


[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふぅ、みんなお待たせ。[pse]

#&f.player_name
楽しかった..？[pse]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん。演出も良かったし、置物のクオリティとかも 凄かったよ。[pse]

[chara_mod name=scout face=weariness time="1000" ]
#スカウト
一人だけ違うベクトルで楽しんでる..[pse]

#
疲弊した二人とは裏腹に、ツクリはお化け屋敷を楽 しめたようだ..[pse]

[jump storage="gakuen/gakuen_end_point.ks"]