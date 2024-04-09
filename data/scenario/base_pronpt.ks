;ティラノスクリプトサンプルゲーム

*start

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
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

[chara_face name="yamato" face="happy" storage="chara/yamato/happy.png"  ]
[chara_face name="yamato" face="angry" storage="chara/yamato/angry.png"  ]
[chara_face name="yamato" face="sad" storage="chara/yamato/sad.png" ]

#
1[p]

#
2[p]
;キャラクター登場

[chara_show  name="akane"  ]

#?
3[p]

#あかね
もしかして、ノベルゲームの開発に興味があるの？[p]

;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="はい。興味あります"  target="*selectinterest"  ]
;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="興味あります！"  target="*selectinterest"  ]
;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"  text="どちらかと言うと興味あり"  target="*selectinterest"  ]
[s  ]
*selectinterest

[chara_mod  name="akane" face="happy"  ]
#あかね
わー。興味あるなんて、嬉しいなー。[p]
#
4[p]
[chara_mod name="akane" face="default"]






#あかね
じゃあ、次に場面を移動してみるね[p]
廊下に移動するよ[p]

;背景の切り替えbg→method→storage
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#あかね
寒いよぉ〜。はやく教室に戻ろう。[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]


;キャラクター非表示
;[chara_hide name="akane"]


;メッセージを全画面に切り替え
;[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true ]


;たて書きにする
;[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]


;@chara_show name="akane"

#akane
メッセージボックスは、自分の好きな画像を使うこともできるよ[p]





;名前部分のメッセージレイヤ削除
;[free name="chara_name_area" layer="message0"]

;メッセージウィンドウの設定
;[position layer="message0" width="1280" height="210" top="510" left="0"]
;[position layer="message0" frame="frame.png" margint="50" marginl="100" marginr="100" opacity="230" page="fore"]

;名前枠の設定
;[ptext name="chara_name_area" layer="message0" color="0xFAFAFA" size="28" bold="true" x="100" y="514"]
;[chara_config ptext="chara_name_area"]






#
大丈夫？[p]
これだけあれば、ゲームを作るには困らなそうだね[p]

#あかね
さて、もちろん音楽を鳴らすこともできるよ[l][cm]
それじゃあ、再生するよ？[l][cm]

[link target=*playmusic]【１】うん。再生してください[endlink][r]
[link target=*noplay]【２】いや。今は再生しないで！[endlink]
[s]

;いかが音を流すためのメソッド
*playmusic

[cm]
よし、再生するよ。[l]
@playbgm time="3000" storage=music.ogg loop=true
徐々にフェードインしながら再生することもできるんだ[l][cm]

@jump target="*common_bgm"

;ここで終了

*noplay
[cm]
うん。わかった。再生はしないね。[l][cm]
また、試してみてね[l][cm]

*common_bgm

あ、そうそう[l][cm]
今みたいな選択肢で物語を分岐することも、簡単にできるよ。[l][cm]

#あかね
やまとー[p]
[chara_show name="yamato"]



[chara_hide name="yamato"]


