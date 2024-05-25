*start
;がるむさんごめんなさい僕が無能で………
;-------------------------------------------------------------------
*gakuen_tuzyo_part_1
;ランダムイベント1
;ここにタイトル



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_2
;ランダムイベント2


[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_3
;ランダムイベント3



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_4
;ランダムイベント4



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_5
;ランダムイベント5


[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_6

;ランダムイベント6
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="scout" width="450" height="600" ]
[chara_show name="tsukuri" width="450" height="600" ]

#スカウト
大事件です大事件です！（主人公）さん！！[p]

#&f.player_name
（どうしたの？！）[p]

#
渡り廊下の自販機の前に連れてこられると、そこにはツクリが立っていた..[p]

#ツクリ
あ、（主人公）...これは大事件だよ...！[p]

#スカウト
（主人公）さん、見てください！この...「すき焼きミルクシェイク[p]

#
スカウトが指で示したそれは、自販機に並ぶ謎のドリンクだった..[p]

#&f.player_name
（...何これ？）[p]

#スカウト
突如登場した、謎の缶ジュースです！一番の謎は、まったく味が想像できないところです！[p]

#ツクリ
私が偶然見つけたんだ...これは味を確かめないと一生後悔する気がする...[p]

#&f.player_name
（飲んでも一生後悔しそうだけど...）[p]

#スカウト
さあ（主人公）さん！ここまで来たら運命共同体です！一緒に味を確かめましょう！[p]

#&f.player_name
（ど、どうしよう...）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="飲む！"  exp="f.scout+=5 && f.tsukuri+=5" target="gakuen_tuzyo_part_6_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=" 遠慮しとく..."  exp="f.scout-=5 && f.tsukuri-=5" target="*gakuen_tuzyo_part_6_root_2" ]
[s]



*gakuen_tuzyo_part_6_root_1

#スカウト
流石ですね！（主人公）さん！[p]


#ツクリ
そう言ってくれるってわかってたよ...さあ、一緒に確かめよう...！[p]

#
三人「「せーのっ！」[p]

#
三人で、購入したドリンクを一気にあおった[p]

#
「ゴホッッッッッ！！！！！[p]

#
口に入れた瞬間、なんとも形容しがたい甘みと塩味が口の中に広がった..[p]


#ツクリ
これは...強烈すぎる...[p]


#スカウト
でも...飲んだからには飲み切るしかありません...！この困難をみんなで切り抜けましょう...！！[p]

#
無事すき焼きミルクシェイクを飲み切った三人の間には、確かな絆が芽生えた..[p]


[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_6_root_2


#スカウト
かぁ～～！！意気地なしですね！（主人公）さん！[p]


#ツクリ
これを味わえないなんてきっと後悔するよ？[p]

#&f.player_name
（味わって後悔したくないんだけど...）[p]


#スカウト
もう（主人公）さんなんてほっときましょう！いきますよ、ツクリさん！[p]

#
「「せーのっ！」」&&スカウトとツクリは購入した謎のドリンクを一気にあおった！スカウト＆ツクリ（驚き）「ゴホッッッッッ！！！！！」主人公「（だ、大丈夫...？）」ツクリ（困惑）「これは...強烈すぎる...」スカウト（困惑）「ひ、ひどいです... （主人公）さん...私たちの哀れな姿を楽しむために、私たちのことを見捨てたんですね...」ツクリ（困惑）「恨むよ...(主人公)...」&&飲まないという選択は正解ではなかったのか、一生頭を悩ませることになった..[p]

#
スカウトとツクリは購入した謎のドリンクを一気にあおった！スカウト＆ツクリ（驚き）「ゴホッッッッッ！！！！！」主人公「（だ、大丈夫...？）」ツクリ（困惑）「これは...強烈すぎる...」スカウト（困惑）「ひ、ひどいです... （主人公）さん...私たちの哀れな姿を楽しむために、私たちのことを見捨てたんですね...」ツクリ（ 困惑）「恨むよ...(主人公)...」&&飲まないという選択は正解ではなかったのか、一生頭を悩ませることになった..[p]


#ツクリ
ゴホッッッッッ！！！！！[p]

#&f.player_name
（だ、大丈夫...？）[p]


#ツクリ
これは...強烈すぎる...[p]


#スカウト
ひ、ひどいです... （主人公）さん...私たちの哀れな姿を楽しむために、私たちのことを見捨てたんですね...[p]


#ツクリ
恨むよ...(主人公)...[p]

#
飲まないという選択は正解ではなかったのか、一生頭を悩ませることになった..[p]

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_7
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="wakastuki" width="450" height="600" ]


;ランダムイベント7

#
休み時間、ワカツキと話しながら廊下で歩いていると..[p]


#ワカツキ
ねぇ、なんか聞こえない...?[p]

#
（キュィィィン...[p]

#
耳を澄ましてみると、廊下の奥から音が聞こえる...[p]

#
（キュィィイン...[p]

#
（ギュイイイイイン！！！！！！[p]


#ワカツキ
ちょっ...!何あれ?![p]

#
段ボール箱にロボットの顔を乗せたような何かが猛スピードで迫ってくる![p]

#&f.player_name
（危ない！！）[p]


#メモリ
とまってーーーーー！！！！[p]

#
（キキキィィィィィ！！！[p]

#
暴走していた機械は急ブレーキをかけて目の前で止まった。間一髪だった..[p]


#メモリ
大丈夫？！ケガしなかった？！[p]


#ワカツキ
大丈夫...でもこの機械はいったい何...?[p]


#メモリ
これはどこでもおそうじくん Z！自動で色んなところを掃除してくれる優れ者なんだよ![p]


#ワカツキ
安全性は優れてないけど...[p]


#メモリ
でもこの発明、まだまだ改良の余地があると思うんだよね...何かいい案ないかな？[p]

#&f.player_name
（いい案か...）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text=""  exp="" target="gakuen_tuzyo_part_7_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=""  exp="" target="*gakuen_tuzyo_part_7_root_2" ]
[s]



*gakuen_tuzyo_part_7_root_1


#メモリ
ん～、まぁそうだよねぇ。とりあえず直してみる！[p]

#
トントンカンカン[p]

#
めもりはその場で機械を改造し始めた... すごい技術だ...[p]


#メモリ
とりあえずこれで大丈夫なはず![p]


#ワカツキ
はずって.... 本当に大丈夫...？[p]


#メモリ
ん～、多分？[p]


#ワカツキ
多分って...[p]

#
その後学校中に、校内を徘徊する生首の乗った段ボール箱の都市伝説が広まるのであった..[p]

[jump target="*gakuen_part_end"]


*gakuen_tuzyo_part_7_root_2


#メモリ
それってイメチェンするってこと？面白そうだしやってみる！[p]

#
トントンカンカン[p]

#
めもりはその場で機械を改造し始めた... すごい技術だ...[p]


#メモリ
できた！流行りの感じにしてみたよ！[p]

#
そこには自分くらいの身長をしたガ〇ダムのようなロボットが立っていた..[p]


#ワカツキ
これ、どこかで見たような...[p]


#メモリ
もうこれで弱点はないよ！どこでもおそうじくん Z！発進 ！！[p]

#
その後学校中に、校内を徘徊するガ〇ダムの都市伝説が広まるのであった.[p]

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_8

[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]


#
授業終わり..[p]


#メモリ
ねぇ、知ってる...?理科準備室のうわさ...[p]

#&f.player_name
（理科準備室のうわさ？）[p]


#メモリ
昔この学校で、病気で亡くなっちゃった学生がいてね、科学部だったらしいんだ...[p]


#メモリ
その人はこの世に未練があったから地縛霊になっちゃって、誰もいないはずの理科準備室に人影を見たって人がいるんだって...！[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text=""  exp="" target="gakuen_tuzyo_part_8_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=""  exp="" target="*gakuen_tuzyo_part_8_root_2" ]
[s]


;ランダムイベント8


*gakuen_tuzyo_part_8_root_1

#メモリ
も～！噂だから気になるんでしょ！実際に確かめに行くよ！[p]

#
（教室に移動[p]


#メモリ
ここが理科準備室だよ！[p]

#
めもりに連れてこられた準備室は、薄暗くて中々に雰囲気がある..[p]

#&f.player_name
（ぶ、不気味だなぁ...）[p]

#
ガタンッ！[p]

#
急に入り口の扉が大きな音を立てて閉まった[p]

#&f.player_name
（？！）[p]

#
ガタガタガタッ！[p]

#
それと同時に掃除用具入れが音を立てながら揺れ始める[p]

#
ガタガタッ！[p]

#
バンッ！[p]


#メモリ
ぐお～～～！！！！！！[p]

#&f.player_name
（うわぁっ！！）[p]


#メモリ
ドッキリ大成功！！驚いた？！驚いた？！[p]

#&f.player_name
（め、めもり...？）[p]


#メモリ
いや～、（主人公）の驚いた顔最高だよ！噂なんて作り話に決まっ...て...[p]

#
めもりがある一点を見つめると、みるみる顔が青ざめていく..[p]

#メモリ
お化け～～～～～？！！！！！[p]


[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_8_root_2


#メモリ
も～！噂だから気になるんでしょ！来てくれないと成り立たないよ！[p]

#&f.player_name
（成り立たない?）[p]


#メモリ
あっ...成り立たないていうか...うまくいかないっていうか...[p]

#&f.player_name
（うまくいかない?）[p]


#メモリ
うぐ...[p]

#&f.player_name
（もしかして、いたずらしようとしてた？）[p]


#メモリ
ゴ、ゴメンナサイ...[p]

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_9

[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="wakastuki" width="450" height="600" ]
[chara_show name="scout" width="450" height="600" ]
;ランダムイベント9
#
今日の最後の授業が終わった、最近はやることが多くてへとへとだ..[p]

#ワカツキ
なんか疲れてる顔してるね？[p]

#
ワカツキが心配して声をかけてくれたようだ..[p]

#&f.player_name
(最近疲れが取れなくて...)[p]

#スカウト
そんな時こそサウナです！！（主人公）さん！！[p]

#ワカツキ
うわ、びっくりした...[p]

#スカウト
サウナに入って体を温めると血行が促進され疲労回復やリラックス効果を得ることが出来るんです！！中でも私がおすすめしたいのはフィンランド式サウナです ね！あっフィンランド式サウナというのは普通のサウナとは少し違[p]

#ワカツキ
私は寝る前のマッサージがおすすめかな～、睡眠の質もよくなるし、眼精疲労とかにも良く効くんだよね。[p]

#
どちらの方法も魅力的だ[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text=""  exp="" target="gakuen_tuzyo_part_9_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=""  exp="" target="*gakuen_tuzyo_part_9_root_2" ]
[s]



*gakuen_tuzyo_part_9_root_1
#スカウト
お安い御用です！私イチオシのサウナ、たくさん教えちゃいますよ！[p]

#ワカツキ
サウナか～。私は行ったことないけど、試してみようかな？[p]

#スカウト
大歓迎ですよ！一緒にサウナライフを満喫しましょう！[p]

#
週末、スカウトイチオシのサウナに行ってリフレッシュすることが出来た[p]

[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_9_root_2


#スカウト
あっ、ずるいです！私もゲームで目が常にお疲れなので教えてください！！[p]

#
ワカツキイチオシのマッサージ方法を試し、良い睡眠をとることが出来た[p]


[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_10
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="tsukuri" width="450" height="600" ]

#めもり
ちーがーうー！絶対この方がいいって！！[p]

#ツクリ
いやいや、さすがにこれは譲れないよ。[p]

#めもり
ツクリが揉めている...

#&f.player_name
「（どうしたの？）[p]

#めもり
あっ、（主人公）！今委員会のポスターのデザインを決めてるんだけど、よくツクリがわかんないことばっかり言うの！！[p]

#ツクリ
デザインには守らなくちゃいけないルールがあるんだって言ってるだけだよ。[p]

#めもり
おっきい文字入れたほうが絶対いいに決まってるじゃん！[p]

#
このままでは収拾がつかなさそうだ...どうしたものか..[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text=""  exp="" target="gakuen_tuzyo_part_10_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=""  exp="" target="*gakuen_tuzyo_part_10_root_2" ]
[s]
;ランダムイベント10

*gakuen_tuzyo_part_10_root_1
#&f.player_name
（二人のいいところを入れてみたら？）[p]

#ツクリ
...そうだね、めもりの言ってたことも一理あるし。[p]

#めもり
おたがいのいいところを見つけてみるのがいいかも！[p]

#
二人の良い点を探しあい、それを参考に最高のポスターを完成させることが出来た[p]



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_10_root_2
#
二人のポスターを見て、自分なりのポスターをさっとデザインして見せた..[p]

#&f.player_name
（こんなのはどう？）[p]

#めもり
...なんか違う。[p]

#ツクリ
うん、ちょっと悪いとこが目立つかもね。例えばここは...[p]

#
自分のイマイチなポスターを見たツクリとめもりは、それをヒントにポスターを改善できたのだった..[p]

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_11

[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="tsukuri" width="450" height="600" ]
;ランダムイベント11

#&f.player_name
（お、お金がない...)[p]

#
限られたお小遣いでやりくりしているが、自販機でジュースを買おうとしたら財布の底が尽きていた..[p]

#ツクリ
驚き）「どうしたの、そんなしょんぼりした顔して。[p]

#&f.player_name
（最近金欠で...)[p]

#ツクリ
通常）「あ～、金欠なんだ。私は創作用の機材のためにバイトしてるよ。[p]

#&f.player_name
（どんなバイトしてるの？)[p]

#ツクリ
通常）「カフェのバイト。千住庵ってところなんだけど、知ってる？[p]

#&f.player_name
（知ってる！)[p]

#
千住庵はこの辺でも有名なカフェだ。平日でも並ばないと入れないぐらいの人気らしい..[p]

#ツクリ
通常）「それでさ、最近バイトが足りないらしくて良かったら紹介するよ。[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text=""  exp="" target="gakuen_tuzyo_part_11_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text=""  exp="" target="*gakuen_tuzyo_part_11_root_2" ]
[s]

*gakuen_tuzyo_part_11_root_1
#ツクリ
笑顔）「うん、もちろん。短期でも長期でも歓迎してくれると思うよ。[p]

#&f.player_name
（ありがとう！)[p]

#
その後の週末、仕事は激務だったが、無事金欠を乗り切ることが出来た[p]



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_11_root_2
#ツクリ
通常）「あ～、それならしょうがないね。[p]

#
そういうと、ツクリは自販機でジュースを買い、こっちに差し出してきた..[p]

#ツクリ
通常）「はい、これ。[p]

#&f.player_name
（さ、さすがに悪いよ！)[p]

#ツクリ
笑顔）「大丈夫。第一、あんなにしょんぼりしてる人をほっておけないでしょ？[p]

#&f.player_name
（ありがとう...)[p]

#
ツクリの優しさを身に染みて感じた.[p]



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_12


;ランダムイベント12


*gakuen_tuzyo_part_12_root_1



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_12_root_2



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_13

;ランダムイベント13


*gakuen_tuzyo_part_13_root_1



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_13_root_2



[jump target="*gakuen_part_end" ]

;-------------------------------------------------------------------
*gakuen_tuzyo_part_14

;ランダムイベント14

*gakuen_tuzyo_part_14_root_1



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_14_root_2



[jump target="*gakuen_part_end" ]

;-------------------------------------------------------------------
*gakuen_tuzyo_part_15


;ランダムイベント15
*gakuen_tuzyo_part_15_root_1



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_15_root_2



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_16


;ランダムイベント16

*gakuen_tuzyo_part_16_root_1



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_16_root_2



[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_tuzyo_part_17


;ランダムイベント17

*gakuen_tuzyo_part_17_root_1



[jump target="*gakuen_part_end"]

*gakuen_tuzyo_part_17_root_2


[jump target="*gakuen_part_end" ]



;ここから下が限定イベント
;-------------------------------------------------------------------
*gakuen_gentei_part_1

;ここは限定イベント1

#
あなたの名前を教えてください。[p]


; [edit] 入力欄を出します。
[edit name="f.player_name" left="380" top="350" width="260" height="40" size="30" maxchars="8" initial="山田太郎"]

[button graphic="config/arrow_next.png" target="*gakuen_gentei_part_1_initial" x="440" y="430"]
[s]

*gakuen_gentei_part_1_initial
[commit]
[cm]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="スカウトの好感度アップ"  exp="f.scout+=20" target="*gakuen_gentei_part_1_root" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="メモリの好感度アップ"  exp="f.memori+=20" target="*gakuen_gentei_part_1_root" ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="なし"  target="*gakuen_gentei_part_1_root"]
[s]
*gakuen_gentei_part_1_root

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_gentei_part_2
#
ここは限定イベント2です（体育祭）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="スカウトの好感度アップ" exp="f.scout+=20"  target="*gakuen_gentei_part_2_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="メモリの好感度アップ" exp="f.memori+=20"  target="*gakuen_gentei_part_2_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="なし"  target="*gakuen_gentei_part_2_root"]
[s]

*gakuen_gentei_part_2_root

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_gentei_part_3

#
ここは限定イベント3です（夏休み１）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="スカウトの好感度アップ" exp="f.scout+=20"  target="*gakuen_gentei_part_3_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="メモリの好感度アップ" exp="f.memori+=20"  target="*gakuen_gentei_part_3_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="なし"  target="*gakuen_gentei_part_3_root"]
[s]

*gakuen_gentei_part_3_root

[jump target="*gakuen_part_end" ]

;-------------------------------------------------------------------
*gakuen_gentei_part_4
#
ここは限定イベント4です（夏休み２）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="スカウトの好感度アップ" exp="f.scout+=20"  target="*gakuen_gentei_part_4_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="メモリの好感度アップ" exp="f.scout+=20"  target="*gakuen_gentei_part_4_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="なし"  target="*gakuen_gentei_part_4_root"]
[s]

*gakuen_gentei_part_4_root

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_gentei_part_5
#
ここは限定イベント5です（文化祭）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="スカウトの好感度アップ" exp="f.scout+=20"  target="*gakuen_gentei_part_5_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="メモリの好感度アップ" exp="f.memori+=20"  target="*gakuen_gentei_part_5_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="なし"  target="*gakuen_gentei_part_5_root"]
[s]

*gakuen_gentei_part_5_root


[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------
*gakuen_gentei_part_6
#
ここは限定イベント6です（お正月）[p]
[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="スカウトの好感度アップ" exp="f.scout+=20"  target="*gakuen_gentei_part_6_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="メモリの好感度アップ" exp="f.memori+=20"  target="*gakuen_gentei_part_6_root"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="なし"  target="*gakuen_gentei_part_6_root"]
[s]

*gakuen_gentei_part_6_root

[jump target="*gakuen_part_end" ]
;-------------------------------------------------------------------

;-------------------------------------------------------------------
*gakuen_part_end


;ここ気持ち悪い
;-----------------------------------------
*ending
;ここにbgmの消去

[jump storage="ending_selector.ks" ]

