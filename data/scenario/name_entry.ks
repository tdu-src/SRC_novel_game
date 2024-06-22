*start
[bg storage="relation_ship_selector_background.jpg" time="0" ]

[cm  ]
[clearfix]
[start_keyconfig]

*Part1_Edit

[layopt layer="message0" visible="false"]
[image layer="1" storage="15_input_A.png" x="0" y="0"]

; [edit] 入力欄を出します。
[edit name="f.player_name" left="380" top="350" width="260" height="40" size="30" maxchars="8" initial="ソフ研太郎"]

[button graphic="config/arrow_next.png" target="*Part1_Commit" x="440" y="430"]
[s]

; ------------------------------------------------------
*Part1_Commit

; [commit] このタグによって[edit]の中身が変数 f.player_name に移ります。
[commit]

; [cm] フリーレイヤーを解放します。入力欄はフリーレイヤーに出ていますので、これで入力欄が消えます。
[cm]

[freeimage layer="1"]
;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]


;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x="250" y=505]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;メニューボタン非表示
@hidemenubutton

; [emb] 変数 f.player_name の中身を確認してみます。
[emb exp="f.player_name"][r]

[link target="*Part1_OK" ]【１】そうだ[endlink]／
[link target="*Part1_Edit"]【２】チガウ[endlink]
[s]

; ------------------------------------------------------
*Part1_OK

[jump storage="logic.ks"]