*start
[cm  ]
[clearfix ]
[start_keyconfig]
[bg storage="../fgimage/items/credit_background.png" time="0"  ]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]

[iscript]
tf.scroll_posi=[];
tf.scroll_time_list=[];
tf.first_posi=1000;
tf.scroll_speed=0.05;
for(num=0;num<100;num++){
    tf.posi=tf.first_posi+num*300;
    tf.scroll_posi.push(tf.posi);
    tf.time=tf.posi/tf.scroll_speed;
    tf.scroll_time_list.push(tf.time);
}
[endscript]

[macro name="credit_scroll" ]
[ptext layer=0 x="200" y="%y" size="40" text="%scroll_text" name="%scroll_text_name" ]
[anim name="%scroll_text_name" top="-1000" time="%scroll_time"]
[endmacro]

[layopt layer=0 visible=true]
[credit_scroll  y="&tf.scroll_posi[0]" scroll_text="原作 / 原案 : ソフキャラ" scroll_time="&tf.scroll_time_list[0]" scroll_text_name="text0" ]
[credit_scroll  y="&tf.scroll_posi[1]" scroll_text="脚本 : るは・zas" scroll_time="&tf.scroll_time_list[1]" scroll_text_name="text1" ]
[credit_scroll  y="&tf.scroll_posi[2]" scroll_text="キャラクターデザイン : あなぐろ" scroll_time="&tf.scroll_time_list[2]" scroll_text_name="text2" ]
[credit_scroll  y="&tf.scroll_posi[3]" scroll_text="背景デザイン" scroll_time="&tf.scroll_time_list[3]" scroll_text_name="text3" ]
[credit_scroll  y="&tf.scroll_posi[4]" scroll_text="音楽 : シン" scroll_time="&tf.scroll_time_list[4]" scroll_text_name="text4" ] 
[credit_scroll  y="&tf.scroll_posi[5]" scroll_text="サウンドエフェクト" scroll_time="&tf.scroll_time_list[5]" scroll_text_name="text5" ]
[credit_scroll  y="&tf.scroll_posi[6]" scroll_text="プログラミング : S;G" scroll_time="&tf.scroll_time_list[6]" scroll_text_name="text6" ]
[credit_scroll  y="&tf.scroll_posi[7]" scroll_text="アートワーク" scroll_time="&tf.scroll_time_list[7]" scroll_text_name="text7" ]
[credit_scroll  y="&tf.scroll_posi[8]" scroll_text="アニメーション" scroll_time="&tf.scroll_time_list[8]" scroll_text_name="text8" ]
[credit_scroll  y="&tf.scroll_posi[9]" scroll_text="UIデザイン : zas ・ k1" scroll_time="&tf.scroll_time_list[9]" scroll_text_name="text9" ]
[credit_scroll  y="&tf.scroll_posi[10]" scroll_text="プロデュース : zas" scroll_time="&tf.scroll_time_list[10]" scroll_text_name="text10" ]
[credit_scroll  y="&tf.scroll_posi[11]" scroll_text="プロジェクトマネージャー : garumu" scroll_time="&tf.scroll_time_list[11]" scroll_text_name="text11" ]
[credit_scroll  y="&tf.scroll_posi[12]" scroll_text="テストプレイ : garumu" scroll_time="&tf.scroll_time_list[12]" scroll_text_name="text12" ]
[credit_scroll  y="&tf.scroll_posi[13]" scroll_text="特別協力 : ソフトウェア研究部" scroll_time="&tf.scroll_time_list[13]" scroll_text_name="text13" ]

[wa]
[fadeoutbgm time="3000"]
[jump storage="title.ks" ]