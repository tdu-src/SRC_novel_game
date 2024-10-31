*start
[isKoryuHeader4 text="スカウトと①"]
[bg storage="UrbanStreet.jpg" time="1000"  ]

#
放課後、特に予定もなく道を歩いていると...[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=normal time="1000" ]
#スカウト
あ、[emb exp="f.player_name"]さん！！[pse]

#
街角で偶然スカウトと出くわした。[pse]

#&f.player_name
奇遇だね！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
ふふふ、変わらず暇そうな顔してますね！！これからゲーセンに行くところなんですが、[emb exp="f.player_name"]さんも来てください！[pse]

#&f.player_name
ゲーセン？[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
はい！新しい格ゲーの機体が入ったんですよ！ほら、早くしないと時間が無くなっちゃいます！[pse]

#
そう言うスカウトに連れられ、ゲームセンターに向かうことになった。[pse]

[isTimePassage]
[bg storage="GameCenter.jpg" time="1000"  ]
[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
うわ～ん！！また負けました！[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


#
ゲームセンターでスカウトと対戦を始め、結果は１０勝８敗だった！[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
なんでそんな強いんですか...そんなにゲームやってないんですよね...？[pse]

#&f.player_name
強いて言うなら、センスかな...？[pse]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
うぎぎぎ...！煽りスキルも百点満点じゃないですか！[pse]

#&f.player_name
それにしても、面白かったね。[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
...っ！ はい！ また一緒にやりましょう！次は絶対負けませんから！！[pse]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あっ！[emb exp="f.player_name"]さんこの後時間空いてますか！私、駅前のサタバの新作が飲みたいんです！[pse]

#&f.player_name
空いてるよ。[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
やった！そうと決まれば早速行きますよ！[pse]

#
心底楽しそうなスカウトに手を引かれ、駅前のカフェに向かった。[pse]

[isTimePassage2]
[bg storage="../fgimage/houkago_selector_image/background/cafe_background.jpg" time="1000"  ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
ふ～。いやぁ、いっぱい遊んじゃいましたね！[s]
*Timepassage2
[playse storage="../bgm/text_click_se.mp3" ]



#&f.player_name
そうだね。[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
それにしても[emb exp="f.player_name"]さん。今日は突然誘ったのに付き合ってくれてありがとうございます！[pse]

#&f.player_name
こちらこそ、すごく楽しかったよ！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
本当ですか？！じゃあ、また今度も一緒に遊びましょうね！格ゲーのリベンジも済んでませんから！[pse]

#&f.player_name
次も負けないよ！[pse]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
はい！覚悟しておいてください！[pse]

#
スカウトと一緒に、楽しい放課後を過ごすことが出来た！[pse]


[jump storage="relation_ship/relation_ship_end_point.ks"]