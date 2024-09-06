*start
[cm  ]
[clearfix ]
[start_keyconfig]
[bg storage="../fgimage/items/credit_background.png" time="0"  ]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[layopt layer=0 visible=true]

[macro name="credit_scroll" ]
[ptext layer=0 text="%text" size="%size" x="0" y="%y" color=snow name="align_ct_h"]
[endmacro]

[iscript]
tf.TitleSize=40;
tf.MenberSize=30;
[endscript]

;クレジットの表示
;タイトルの下は+100,タイトルの上は+200
[credit_scroll text="原作 / 原案" y="800" size="&tf.TitleSize"]
[credit_scroll text="ソフキャラ" y="900" size="&tf.MenberSize"]
[credit_scroll text="脚本" y="1100" size="&tf.TitleSize"]
[credit_scroll text="るは・zas" y="1200" size="&tf.MenberSize"]
[credit_scroll text="キャラクターデザイン" y="1400" size="&tf.TitleSize"]
[credit_scroll text="あなぐろ" y="1500" size="&tf.MenberSize"]
[credit_scroll text="背景デザイン" y="1700" size="&tf.TitleSize"]
[credit_scroll text="みんちりえ" y="1800" size="&tf.MenberSize"]
[credit_scroll text="音楽" y="2000" size="&tf.TitleSize"]
[credit_scroll text="シン" y="2100" size="&tf.MenberSize"]
[credit_scroll text="サウンドエフェクト" y="2300" size="&tf.TitleSize"]
[credit_scroll text="効果音ラボ" y="2400" size="&tf.MenberSize"]
[credit_scroll text="プログラミング" y="2600" size="&tf.TitleSize"]
[credit_scroll text="S;G" y="2700" size="&tf.MenberSize"]
[credit_scroll text="UIデザイン" y="2900" size="&tf.TitleSize"]
[credit_scroll text="zas ・ k1" y="3000" size="&tf.MenberSize"]
[credit_scroll text="プロデュース" y="3200" size="&tf.TitleSize"]
[credit_scroll text="zas" y="3300" size="&tf.MenberSize"]
[credit_scroll text="プロジェクトマネージャー" y="3500" size="&tf.TitleSize"]
[credit_scroll text="Garume" y="3600" size="&tf.MenberSize"]
[credit_scroll text="デバッグ" y="3800" size="&tf.TitleSize"]
[credit_scroll text="Garume" y="3900" size="&tf.MenberSize"]
[credit_scroll text="特別協力" y="4100" size="&tf.TitleSize"]
[credit_scroll text="ソフトウェア研究部" y="4200" size="&tf.MenberSize"]
[credit_scroll text="プラグイン" y="4400" size="&tf.TitleSize"]
[credit_scroll text="ptext_align 空想曲線" y="4500" size="&tf.MenberSize"]
[credit_scroll text="テーマ一括変換プラグイン その19　空想曲線" y="4600" size="&tf.MenberSize"]
[credit_scroll text="ティラノスタジオ用デバッグ支援プラグイン さくさくぷんた" y="4700" size="&tf.MenberSize"]
[credit_scroll text="lovemng　柚須 佳" y="4800" size="&tf.MenberSize"]
[credit_scroll text="ゲームエンジン" y="5000" size="&tf.TitleSize"]
[credit_scroll text="ティラノスクリプト" y="5100" size="&tf.MenberSize"]

[wait time=1]

[keyframe name="animation1"]
;[frame p=0% y="300"]
[frame p=100% y="-25000"]
[endkeyframe]

[kanim name="align_ct_h" keyframe="animation1" time="500000" ]

[wait time="84000"]

[fadeoutbgm time="1000"]
[jump storage="title.ks" ]