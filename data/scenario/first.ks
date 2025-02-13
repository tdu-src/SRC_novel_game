;一番最初に呼び出されるファイル

[title name="ソフきゃらいふ!"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;好感度管理プラグイン読込
[plugin name=lovemng]
[plugin name=tsex ]
[plugin name="theme_kopanda_19" ]
[plugin name="ptext_align"]
;[plugin name=popopo]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


