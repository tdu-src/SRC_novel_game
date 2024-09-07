*start
[bg storage="SchoolGate.jpg" time="1000"  ]
[isHeader text="助けて！めもえもん！" x="-280" width="650"]
[playbgm storage="../bgm/sofuchara_bgm_normal2.mp3" ]

#
放課後、急ぎで家に帰らなければならない用事が出来た...[s]
*Point
[playse storage="../bgm/text_click_se.mp3" ]

#&f.player_name
でも、今から走ってもなぁ...[pse]

#
しかし、この学校にはピンチになったときに助けを呼べる魔法の言葉があるのだ...[pse]

#&f.player_name
助けて！めもえもん～！[pse]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
は～い！のこと呼んだ～！？[pse]

#&f.player_name
めもり！[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
あっ、[emb exp="f.player_name"]じゃん！何か困ってることがあるの？[pse]

#&f.player_name
実はかくかくしかじかで...[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ふんふん、なるほどね！そういうキミにぴったりな発明品があるよ！[pse]

#
そう言うと、めもりは荷物でいっぱいなリュックの中を漁り始めた... 明らかにリュックに入らない量の物が出てきている...[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
あった！てってれ～！らくらく登下校くん改！[pse]

#&f.player_name
らくらく登下校くん改？[pse]

[chara_mod name=memori face=normal time="1000" ]
#めもり
そう！これは自動運転付きの靴でね、この靴を履いて目的地を言うと、そこまで一瞬で連れて行ってくれるの！[pse]

#&f.player_name
なんだか怖いんだけど...[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
大丈夫だよ！事故はほとんど起きてないから使ってみてよ！[pse]

#
聞けば聞くほど不安になってきた... どうしよう...[pse]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="使ってみる！"   target="*gakuen_tuzyo_part_17_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="遠慮しとく..."   target="*gakuen_tuzyo_part_17_2" ]
[s]
*gakuen_tuzyo_part_17_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そうこなくっちゃ！靴を履いて、目的地を言ってみて！[pse]

#&f.player_name
じゃあ... 家まで連れて行って！[pse]

#
めもりに促され、目的地を言うと...[pse]

#&f.player_name
？！[pse]

#
その靴は突如エンジンのような音を立て、宙に浮きだした！[pse]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
それじゃあ、いってらっしゃい！[pse]

#&f.player_name
うわああああ！！[pse]

[chara_hide name="memori" time="1000" ]
[isTimePassage]
[chara_mod name=scout face=smaile time="1000" ]
#&f.player_name
着いた... けど死ぬかと思った...[s]
*Timepassage
[playse storage="../bgm/text_click_se.mp3" ]


#
安全性に関しては最悪だが、めもりの技術力を改めて実感した...[pse]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_17_2
[chara_mod name=memori face=surprise time="1000" ]
#めもり
え～！？安全性をテストできるいい機会だったのに！[pse]

#&f.player_name
安全性...？[pse]

[chara_mod name=memori face=impatience time="1000" ]
#めもり
あっ... でっ、でも大丈夫だよ！たまに電柱にぶつかるぐらいだから！[pse]

#&f.player_name
絶対にダメじゃん！！[pse]

#
結局走って帰ることになったが、自分の命は守ることが出来た...[pse]


[jump storage="gakuen/gakuen_end_point.ks"]