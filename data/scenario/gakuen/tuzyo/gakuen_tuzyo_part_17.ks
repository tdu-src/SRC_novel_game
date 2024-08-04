*start
[ptext layer="1" x="0" y="0" size="40" text="助けて！めもえもん！" name="align_ct_h"]

#
放課後、急ぎで家に帰らなければならない用事が出来た...[p]

#&f.player_name
でも、今から走ってもなぁ...[p]

#
しかし、この学校にはピンチになったときに助けを呼べる魔法の言葉があるのだ...[p]

#&f.player_name
助けて！めもえもん～！[p]


[chara_show name="memori" width="450" height="600" ]
[chara_mod name=memori face=smaile time="1000" ]
#めもり
は～い！のこと呼んだ～！？[p]

#&f.player_name
めもり！[p]

[chara_mod name=memori face=normal time="1000" ]
#めもり
あっ、[emb exp="f.player_name"]じゃん！何か困ってることがあるの？[p]

#&f.player_name
実はかくかくしかじかで...[p]

[chara_mod name=memori face=normal time="1000" ]
#めもり
ふんふん、なるほどね！そういうキミにぴったりな発明品があるよ！[p]

#
そう言うと、めもりは荷物でいっぱいなリュックの中を漁り始めた... 明らかにリュックに入らない量の物が出てきている...[p]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
あった！てってれ～！らくらく登下校くん改！[p]

#&f.player_name
らくらく登下校くん改？[p]

[chara_mod name=memori face=normal time="1000" ]
#めもり
そう！これは自動運転付きの靴でね、この靴を履いて目的地を言うと、そこまで一瞬で連れて行ってくれるの！[p]

#&f.player_name
なんだか怖いんだけど...[p]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
大丈夫だよ！事故はほとんど起きてないから使ってみてよ！[p]

#
聞けば聞くほど不安になってきた... どうしよう...[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="使ってみる！"   target="*gakuen_tuzyo_part_17_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="遠慮しとく..."   target="*gakuen_tuzyo_part_17_2" ]
[s]
*gakuen_tuzyo_part_17_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
そうこなくっちゃ！靴を履いて、目的地を言ってみて！[p]

#&f.player_name
じゃあ... 家まで連れて行って！[p]

#
めもりに促され、目的地を言うと...[p]

#&f.player_name
？！[p]

#
その靴は突如エンジンのような音を立て、宙に浮きだした！[p]

[chara_mod name=memori face=smaile time="1000" ]
#めもり
それじゃあ、いってらっしゃい！[p]

#&f.player_name
うわああああ！！[p]


[chara_hide name="memori" width="450" height="600" ]
#&f.player_name
着いた... けど死ぬかと思った...[p]

#
安全性に関しては最悪だが、めもりの技術力を改めて実感した...[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_17_2
[chara_mod name=memori face=surprise time="1000" ]
#めもり
え～！？安全性をテストできるいい機会だったのに！[p]

#&f.player_name
安全性...？[p]

[chara_mod name=memori face=impatience time="1000" ]
#めもり
あっ... でっ、でも大丈夫だよ！たまに電柱にぶつかるぐらいだから！[p]

#&f.player_name
絶対にダメじゃん！！[p]

#
結局走って帰ることになったが、自分の命は守ることが出来た...[p]


[jump storage="gakuen/gakuen_end_point.ks"]