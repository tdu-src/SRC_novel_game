*start
[bg storage="room.jpg" time="1000"  ]
[isHeader text="テスト勉強会" x="-380" width="480"]
[playbgm storage="../bgm/SofucharaHappenning.mp3" ]

[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_show name="memori" width="450" height="600" ]

[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
さっそく勉強会を始めるよ！[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]
#&f.player_name
おー！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
おー。[pse]

#
今回の勉強テーマは理科だ。各々の苦手なところを勉強し始めていた。[pse]

#&f.player_name
うん...全然わからない...[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
もうわかんないの？！これ基礎中の基礎じゃん！[pse]

#&f.player_name
おっしゃる通りです...[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
私もやる気なくなってきたな... 暗記だけは嫌いなんだよね。[pse]

[chara_mod name=memori face=surprise time="1000" ]
#めもり
えー？！やらなきゃ覚えられないよ！[pse]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
いや、わかってはいるけど...[pse]

[chara_mod name=memori face=angry time="1000" ]
#めもり
もう、二人ともダメダメじゃん！これはもうスパルタで行くしかないね！[pse]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
えっ、スパルタって...[pse]

#
そう言うと、めもりはリュックからロボットを取り出した！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
じゃじゃーん！徹底指導スパルタン V！[pse]

#&f.player_name
スパルタン V ?[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そう！これは設定した目標を達成する能力が付くまでスパルタ指導し続けてくれるロボットだよ！[pse]

#&f.player_name
設定した目標って...？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
そんなの、物理と化学どっちも１００点に決まってるじゃん！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
１００点？！そんなの絶対無理...！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
無理じゃないよ！努力すれば、絶対できる！！[pse]

#
まずい、めもりが熱血教師みたいなことを言っている... 早くここから逃げなければ...[pse]

#&f.player_name
そういや、用事があったから先に帰ろうかな...[pse]

#
自分がそう言って帰ろうとした瞬間、スパルタン V の腕からハリセンのようなものが出てきた！[pse]

#スパルタンV
指導！！[pse]

#
（バチーン！）[pse]

#&f.player_name
あ痛っ！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
ちなみに、逃げようとしたらお仕置きが待ってるから！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
お、鬼だ...[pse]

[isTimePassage]
[bg storage="classroom_yugata.jpg" time="1000"  ]
[chara_mod name=memori face=normal time="1000" ]
#めもり
あっ！もうこんな時間！今日はここまでだね！[s]
*Timepassage


#
結局、スパルタ指導は夕方まで続き、気づけば下校時間になっていた...[pse]

#&f.player_name
やっと解放された...[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
うぅ、もう勉強なんてこりごりだよ...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
じゃあ続きはまた明日ね！！[pse]

#&f.player_name
...明日...？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
当たり前じゃん！テスト前日まで毎日やるよ！[pse]

[chara_mod name=wakastuki face=perplexed time="1000" ]
#ワカツキ
だ、誰か助けて...[pse]

#
スパルタ指導の甲斐あって、二人は無事物理と化学で１００点を取ることが出来たが、二人の心には消えないトラウマが刻まれた...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]