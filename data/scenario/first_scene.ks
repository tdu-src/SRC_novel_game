*start

[iscript]
f.akane_point=0
f.kinoshita_point=0
[endscript]

[cm  ]
[clearfix]
[start_keyconfig]

;背景
[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;メニューボタン非表示
@hidemenubutton

;ロールボタン追加;;;;;;;;;;;;;;


; ロールボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

;フルスクリーン切替ボタン
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトルに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ロールボタン追加終わり


;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="normal" storage="chara/akane/normal.png"  ]
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

[chara_face name="yamato" face="happy" storage="chara/yamato/happy.png"  ]
[chara_face name="yamato" face="angry" storage="chara/yamato/angry.png"  ]
[chara_face name="yamato" face="sad" storage="chara/yamato/sad.png" ]

;kinoshita
[chara_new name="kinoshita" storage="chara/kinoshita/jkbk.png"jname="木下" ]


[chara_show name="akane" time="1000" ]

#akane
おはようやまと!![p]

[chara_show name="yamato" time="1000"  ]

#yamato
ああ…[p]


#
こいつは幼馴染のあかね[l]
俺が幼稚園のころからの中のやつだ[p]

[chara_mod name="akane" face="happy" time="1000"  ]

#akane
どうしたの元気ないの[p]
それともあれかな[p]

[chara_config talk_anim="up" talk_anim_time="230" talk_anim_value="30"  ]

昨日木下さんに声掛けても無視されたことがそんなに辛かったのかな[p]

[chara_mod name="akane" face="normal" time="1000" ]

[chara_config talk_anim="up" talk_anim_time="230" talk_anim_value="30"  ]

#yamato
あっ木下さん[p]

[chara_show name="kinoshita" time="1000" width="760" height="590"]

#kinoshita
………………………………………[p]

[chara_hide name="kinoshita" time="0"  ]

#akane
まぁいいや今日ご飯行こ!!![p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="いいよ"  target="*akane_point_1_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="………"  target="*akane_point_1_2"]
[s]

;ここまで選択なし

;-----------------------------------------------------------------------------------------------------------------
*akane_point_1_1

[chara_mod name="akane" face="happy" time="500" ]
#akane
えへへ[p]

[iscript]
f.akane_point+=1
[endscript]
[jump target="*poem_2"]

;-----------------------------------------------------------------------------------------------------------------
*akane_point_1_2
#yamato
木下さんおはよう!![p]

#kinoshita
………………………………………[p]

[chara_mod name="akane" face="sad" time="500"  ]
#akane
………[p]

#
学校を去った[p]

[jump target="*poem_3"]
;-----------------------------------------------------------------------------------------------------------------
*poem_2
#akane
うんじゃあ行こうか[p][l]
どこ行く?[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="マックドナルド"  target="*akane_point_2_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="ラーメン屋"  target="*akane_point_2_2"]
[s]

;-----------------------------------------------------------------------------------------------------------------


*akane_point_2_1

[iscript]
f.akane_point+=1
[endscript]

[chara_hide name="akane" ]
[chara_hide name="yamato"]

[jump target="*mac"]

*akane_point_2_2
[chara_hide name="akane" ]
[chara_hide name="yamato"]
[jump target="*ramen"]

*mac
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]
[chara_show name="akane" time="1000" ]
[chara_show name="yamato" time="1000" ]
#akane
ダブルチーズバーガーセットください。[p][r]
あっサイドメニューはポテトでお願いします。[p]

#yamato
ポテトLサイズは一つで[p]

#
合計のお会計が1510円になります。[p]

#
1時間後[p]

#akane
美味しかったねぇーー[p][r]
今日やまとの家大丈夫??[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="あー空いてるよ"  target="*house_go"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="今日は親父いるから無理"  target="*poem_3"]
#
＊家で遊ぶ場合放課後イベントが消化されます[p]

[s]
;-----------------------------------------------------------------------------------------------------------------



*ramen
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]
[chara_show name="akane" time="1000" ]
[chara_show name="yamato" time="1000" ]

#akane
醬油ラーメン[p][r]
一つください[p]

#yamato
とんこつラーメンください。[p]

#
1時間後[p]

#yamato
美味しかったわ[p]

#akane
そうだねぇ[p]

[jump target="*poem_3" ]


;-----------------------------------------------------------------------------------------------------------------
*house_go

[free layer="message0" name="chara_name_area"  ]
[layopt layer="message0" visible="false"  ]
[chara_hide name="akane" time="1000" ]
[chara_hide name="yamato" time="1000" ]


[jump storage="houkago_1_house.ks" ]



*house_no
[jump target="*poem_3"]

;-----------------------------------------------------------------------------------------------------------------

*poem_3
[free layer="message0" name="chara_name_area"  ]
[layopt layer="message0" visible="false"  ]
[chara_hide name="akane" time="1000" ]
[chara_hide name="yamato" time="1000" ]

@jump storage="houkago_1.ks"