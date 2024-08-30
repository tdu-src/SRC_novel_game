*start
[isHeaderMostSize text="リフレッシュのすすめ"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
#
今日の最後の授業が終わった、最近はやることが多くてへとへとだ...[p]


[chara_show name="wakastuki" width="450" height="600" ]
[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
なんか疲れてる顔してるね？[p]

#
ワカツキが心配して声をかけてくれた...[p]

#&f.player_name
最近疲れが取れなくて...[p]


[chara_show name="scout" width="450" height="600" ]
[chara_mod name=scout face=smaile time="1000" ]
#スカウト
そんな時こそサウナです！！[emb exp="f.player_name"]さん！！[p]

[chara_mod name=wakastuki face=surprise time="1000" ]
#ワカツキ
うわっ！びっくりした...[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
サウナに入って体を温めると血行が促進され疲労回復やリラックス効果を得ることが出来るんです！！[p]
中でも私がおすすめしたいのはフィンランド式サウナですね！[p]
あっ フィンランド式サウナというのは普通のサウナとは少し違[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
私は寝る前のマッサージがおすすめかな。 睡眠の質もよくなるし、眼精疲労とかにも良く効くんだよね。[p]

#
どちらの方法も魅力的だ..[p]


[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="おすすめのサウナを教えて！"   target="*gakuen_tuzyo_part_9_1" ] 
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="マッサージの仕方を教えて！"   target="*gakuen_tuzyo_part_9_2" ] 
[s]
*gakuen_tuzyo_part_9_1
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
お安い御用です！私イチオシのサウナ、たくさん教えちゃいますよ！[p]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
サウナか～。私は行ったことないけど、試してみようかな？[p]

[chara_mod name=scout face=smaile time="1000" ]
#スカウト
大歓迎ですよ！一緒にサウナライフを満喫しましょう！[p]

#
週末、スカウトイチオシのサウナに行ってリフレッシュすることが出来た。[p]

[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_9_2
[eval exp="f.wakatsuki+=f.gakuen_tuzyou_koukando"]

[chara_mod name=wakastuki face=normal time="1000" ]
#ワカツキ
いいよ、やり方教えてあげる。[p]

[chara_mod name=scout face=normal time="1000" ]
#スカウト
あっ、ずるいです！私もゲームで目が常にお疲れなので教えてください！！[p]

#
ワカツキイチオシのマッサージ方法を試し、良い睡眠をとることが出来た！[p]

[jump storage="gakuen/gakuen_end_point.ks"]