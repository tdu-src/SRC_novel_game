;--------------------------------------------------------------------------------
; ティラノスクリプト テーマプラグイン theme_kopanda_19
; 作者:こ・ぱんだ
; https://kopacurve.blog.fc2.com/
;--------------------------------------------------------------------------------

[iscript]

mp.font_color    = mp.font_color    || "0x4C4C59";
mp.name_color    = mp.name_color    || "0x27C2D0";
mp.frame_opacity = mp.frame_opacity || "255";
mp.font_color2   = mp.font_color2   || "0x4C4C59";
mp.glyph         = mp.glyph         || "off";

if(TG.config.alreadyReadTextColor != "default") {
	TG.config.alreadyReadTextColor = mp.font_color2;
}

[endscript]

; 名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

; メッセージウィンドウの設定
[position layer="message0" width="1200" height="188" top="512" left="40"]
[position layer="message0" frame="../others/plugin/theme_kopanda_19/image/frame_message.png" margint="60" marginl="140" marginr="140" opacity="&mp.frame_opacity" page="fore"]

; 名前枠の設定
[ptext name="chara_name_area" layer="message0" color="&mp.name_color" size="26" x="80" y="518" width="460" align="center"]
[chara_config ptext="chara_name_area"]

; デフォルトのフォントカラー指定
[font color="&mp.font_color"]
[deffont color="&mp.font_color"]

; クリック待ちグリフの設定（on設定時のみ有効）
[if exp="mp.glyph == 'on'"]
[glyph line="../../../data/others/plugin/theme_kopanda_19/image/system/nextpage.png"]
[endif]

;=================================================================================

; 機能ボタンを表示するマクロ

;=================================================================================

; 機能ボタンを表示したいシーンで[add_theme_button]と記述してください（消去は[clearfix]タグ）
[macro name="add_theme_button"]

; 歯車ボタン（メニューボタン）非表示
[hidemenubutton]

; クイックセーブ
[button name="role_button" role="quicksave" graphic="../others/plugin/theme_kopanda_19/image/button/qsave.png" enterimg="../others/plugin/theme_kopanda_19/image/button/qsave2.png" x="612" y="676"]

; クイックロード
[button name="role_button" role="quickload" graphic="../others/plugin/theme_kopanda_19/image/button/qload.png" enterimg="../others/plugin/theme_kopanda_19/image/button/qload2.png" x="728" y="676"]

; オート
[button name="role_button" role="auto" graphic="../others/plugin/theme_kopanda_19/image/button/auto.png" enterimg="../others/plugin/theme_kopanda_19/image/button/auto2.png" x="844" y="676"]

; スキップ
[button name="role_button" role="skip" graphic="../others/plugin/theme_kopanda_19/image/button/skip.png" enterimg="../others/plugin/theme_kopanda_19/image/button/skip2.png" x="960" y="676"]

; バックログ
[button name="role_button" role="backlog" graphic="../others/plugin/theme_kopanda_19/image/button/log.png" enterimg="../others/plugin/theme_kopanda_19/image/button/log2.png" x="1076" y="676"]

; メニュー
[button name="role_button" role="menu" graphic="../others/plugin/theme_kopanda_19/image/button/menu.png" enterimg="../others/plugin/theme_kopanda_19/image/button/menu2.png" x="1172" y="20"]

; 非表示
[button name="role_button" role="window" graphic="../others/plugin/theme_kopanda_19/image/button/close.png" enterimg="../others/plugin/theme_kopanda_19/image/button/close2.png" x="1194" y="544"]

[endmacro]


;=================================================================================

;　システムで利用するHTML,CSSの設定

;=================================================================================
; セーブ画面
[sysview type="save" storage="./data/others/plugin/theme_kopanda_19/html/save.html"]

; ロード画面
[sysview type="load" storage="./data/others/plugin/theme_kopanda_19/html/load.html"]

; バックログ画面
[sysview type="backlog" storage="./data/others/plugin/theme_kopanda_19/html/backlog.html"]

; メニュー画面
[sysview type="menu" storage="./data/others/plugin/theme_kopanda_19/html/menu.html"]

; CSS
[loadcss file="./data/others/plugin/theme_kopanda_19/ts19.css"]

; メニュー画面からコンフィグを呼び出すための設定ファイル
[loadjs storage="plugin/theme_kopanda_19/setting.js"]

;=================================================================================

;　テストメッセージ出力プラグインの読み込み

;=================================================================================
[loadjs storage="plugin/theme_kopanda_19/testMessagePlus/gMessageTester.js"]
[loadcss file="./data/others/plugin/theme_kopanda_19/testMessagePlus/style.css"]

[macro name="test_message_start"]
[eval exp="gMessageTester.create()"]
[endmacro]

[macro name="test_message_end"]
[eval exp="gMessageTester.destroy()"]
[endmacro]

[macro name="test_message_reset"]
[eval exp="gMessageTester.currentTextNumber=0;gMessageTester.next(true)"]
[endmacro]


[return]
