*start
;文化祭
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[chara_show name="scout" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
#
今日は学園祭の日！自分はツクリとスカウトと一緒に学校を回っていた[p]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
いや～賑わってますねぇ！面白そうな出し物がいっ ぱいありますよ！[p]

#&f.player_name
そうだね。[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
あっ、見て。ここ、お化け屋敷やってるみたい。[p]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
えっ...本気ですか...?[p]

#&f.player_name
怖いの？[p]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
こここ怖くなんてありませんよ！！所詮高校生クオリティですし！！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふ～ん、じゃあ行こっか[p]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
待って待って心の準備が！！[p]


#
入ってみると、学生の催しを超えているレベルで作 りこまれており、中々雰囲気がある。[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
スカウト、大丈夫？尋常じゃないぐらい震えてるけど。[p]

[chara_mod name=scout face=半泣き time="1000" ]
#スカウト
だだだ大丈夫ですよ！！こんなの余裕です！！[p]  

#
すると、いかにも何か出てきそうなロッカーから何 かが出てきた。[p]

#お化け役の生徒
（グワ～～～～！！）[p]  

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ぎゃ～～～～～！！！！[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
うぅ... もうこんな所にはいられません！！私はこ こから出ますよ！！[p]

#
スカウトはよくあるホラー映画にあるような捨て台 詞を残してリタイアしてしまった。[p]

#&f.player_name
どうしよう...[p]

#
かくいう自分も、怖すぎて逃げ出してしまいたい気 分だが...[p]


[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="このまま続きを回る！"  exp="f.tsukuri+=10" target="*gakuen_gentei_part_5_1" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="自分もリタイアで..."  exp="f.tsukuri+=10" target="*gakuen_gentei_part_5_2" ]
[s]
*gakuen_gentei_part_5_1
#&f.player_name
このまま回るよ...[p]

#
怖がりながらも、ツクリと最後までお化け屋敷を回った..[p]

#
（時間経過カットイン）[p]


[chara_show name="scout" width="450" height="600" ]

[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふぅ、楽しかった。[p]

[chara_mod name=scout face="half_sad" time="1000" ]
#スカウト
あぁ... 帰ってきたんですね...[p]

#&f.player_name
大丈夫...？[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
大丈夫に見えますか... お化け屋敷なんて二度と入 りません！！[p]

#
満足気なツクリとは裏腹に、スカウトは相当ダメー ジを受けたようだ...[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_gentei_part_5_2
#&f.player_name
ごめん、自分もリタイアで！[p]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face="half_sad" time="1000" ]

#スカウト
主人公さん、リタイアなんて意気地なしですね...[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん。演出も良かったし、置物のクオリティとかも 凄かったよ。[p]

#&f.player_name
そっちが先だったじゃん...[p]


[chara_show name="tsukuri" width="450" height="600" ]
[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
ふぅ、みんなお待たせ。[p]

#&f.player_name
楽しかった..？[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
うん。演出も良かったし、置物のクオリティとかも 凄かったよ。[p]

[chara_mod name=scout face=weariness time="1000" ]
#スカウト
一人だけ違うベクトルで楽しんでる..[p]

#
疲弊した二人とは裏腹に、ツクリはお化け屋敷を楽 しめたようだ..[p]

[jump storage="gakuen/gakuen_end_point.ks"]