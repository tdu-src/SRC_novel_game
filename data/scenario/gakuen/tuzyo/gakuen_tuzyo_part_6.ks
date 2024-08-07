*start
[ptext layer="1" x="0" y="0" size="40" text="すき焼きミルクシェイク" name="align_ct_h"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="tsukuri" width="450" height="600" ]
[chara_show name="scout" width="450" height="600" ]

[chara_mod name=scout face=surprise time="1000" ]
#スカウト
大事件です大事件です！[emb exp="f.player_name"]さん！[p]

#&f.player_name
どうしたの？[p]

#
中庭の自販機の前に連れてこられると、そこにはツクリが立っていた...[p]

[chara_mod name=tsukuri face=surprise time="1000" ]
#ツクリ
あ、[emb exp="f.player_name"]... これは大事件だよ...[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
[emb exp="f.player_name"]さん、見てください！この、「すき焼きミルクシェイク」[p]

#
スカウトが指で示したそれは、自販機に並ぶ謎のドリンクだった...[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
突如登場した、謎の缶ジュースです！一番の謎は、まったく味が想像できないところです！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
私が偶然見つけたんだ...これは味を確かめないと一生後悔する気がする...[p]

#&f.player_name
飲んでも一生後悔しそうだけど...[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
さあ[emb exp="f.player_name"]さん！ここまで来たら運命共同体です！一緒に味を確かめましょう！[p]

#&f.player_name
ど、どうしよう...[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="飲む！"   target="*gakuen_tuzyo_part_6_root_1" ]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="遠慮しとく..."   target="*gakuen_tuzyo_part_6_root_2" ]
[s]
*gakuen_tuzyo_part_6_root_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]
[eval exp="f.tsukuri+=f.gakuen_tuzyou_koukando"]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
流石ですね！[emb exp="f.player_name"]さん！[p]

[chara_mod name=tsukuri face=smaile time="1000" ]
#ツクリ
そう言ってくれるってわかってたよ... さあ、一緒に確かめよう...！[p]

#
三人で、購入したドリンクを一気に飲んだ[p]

[iscript ]
tf.menbers_speak=f.player_name+"　スカウト　"+"ツクリ"
[endscript]

#&f.player_name
ゴホッッッッッ！！！！[p]

#
口に入れた瞬間、なんとも形容しがたい甘みと塩味が口の中に広がった...[p]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
これは...強烈すぎる...[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
でも...飲んだからには飲み切るしかありません...！この困難をみんなで切り抜けましょう...！[p]

#
無事すき焼きミルクシェイクを飲み切った三人の間には、確かな絆が芽生えた...[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_6_root_2
[eval exp="f.scout-=f.gakuen_tuzyou_koukando"]
[eval exp="f.tsukuri-=f.gakuen_tuzyou_koukando"]
[chara_mod name=scout face=normal time="1000" ]
#スカウト
かぁ～～！！意気地なしですね！[emb exp="f.player_name"]さん！[p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
これを味わえないなんてきっと後悔するよ...[p]

#&f.player_name
したくないんだけど...[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
もう[emb exp="f.player_name"]さんなんてほっときましょう！いきますよ、ツクリさん![p]

[chara_mod name=tsukuri face=normal time="1000" ]
#ツクリ
せーのっ！[p]

#
スカウトとツクリは購入した謎のドリンクを一気に飲んだ！[p]

[chara_mod name=tsukuri face=surprise time="1000" ]
#ツクリ
ゴホッッ！！！！[p]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
これは...強烈すぎる...[p]

[chara_mod name=scout face=half_sad time="1000" ]
#スカウト
ひ、ひどいです... [emb exp="f.player_name"]さん...私たちの哀れな姿を楽しむために、私たちのことを見捨てたんですね...[p]

[chara_mod name=tsukuri face=perplexed time="1000" ]
#ツクリ
恨むよ...[emb exp="f.player_name"]...[p]

#&f.player_name
えぇ...[p]

#
飲まないという選択は正解ではなかったのか... 一生頭を悩ませることになった....[p]



[jump storage="gakuen/gakuen_end_point.ks"]