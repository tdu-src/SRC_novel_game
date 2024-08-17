*start
[iscript]
f.gakuen_FT=0;
f.gakuen_turn_list=[0,1,1,0,1,1,1,1,0,0,1,1,1,1,0,1,1,1,0,1,1,1,0,1]; //0なら限定イベント、1なら通常イベント
f.gakuen_turn_tuzyo=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]; //学園の通常イベントの判定
f.gakuen_mouth_turn=[4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,1,1,2,2,3,3];
f.logic_turn=0; //logic_turnの値でend.ksに遷移する
f.end_turn; //エンドに分岐するための変数
f.gakuen_turn=0; //学園モードのターン設定
f.gakuen_turn_gentei=0; //学園の限定イベントの進行
f.boolean_firstpart="true";

//エンドターンの計算
f.end_turn=f.gakuen_turn_list.length;
f.end_turn*=2;
f.end_turn+=1;


//以下から主人公のパラメータ
f.player_name;

f.cafe=0;
f.art_museum=0;
f.park=0;
f.game_center=0;

//既に見た場所ならtrueを返すフラグ
//ここ気持ち悪いから修正したい
f.cafe_normal_flag="false";
f.cafe_special_flag="false";
f.art_museum_normal_flag="false";
f.art_museum_special_flag="false";
f.park_normal_flag="false";
f.park_special_flag="false";
f.gamecenter_normal_flag="false";
f.gamecenter_special_flag="false";

//放課後イベントのパラメータの調整用変数
f.nomrmal_houkagoevent=8;
f.special_houkagoevent=15;

//以下からキャラクターの好感度
f.scout=0;
f.scout_kouryu_key=0;
f.scout_flag='false';
f.memori=0;
f.memori_kouryu_key=0;
f.memori_flag='false';
f.tsukuri=0;
f.tsukuri_kouryu_key=0;
f.tsukuri_flag='false';
f.wakatsuki=0;
f.wakatsuki_kouryu_key=0;
f.wakatsuki_flag='false';

//以下から音声ファイルの宣言
f.button_clicking_se="../bgm/button_click_se.mp3";
[endscript] 

;以下に顔差分の宣言
;このゲームで登場するキャラクターを宣言

;tsukuri
[chara_new  name="tsukuri" storage="chara/tsukuri/tsukuri_normal.png" jname="ツクリ"  ]

[chara_face name="tsukuri" face="normal" storage="chara/tsukuri/tsukuri_normal.png"  ]
[chara_face name="tsukuri" face="perplexed" storage="chara/tsukuri/tsukuri_normal.png"  ]
[chara_face name="tsukuri" face="sad" storage="chara/tsukuri/tsukuri_normal.png"  ]
[chara_face name="tsukuri" face="surprise" storage="chara/tsukuri/tsukuri_normal.png"  ]
[chara_face name="tsukuri" face="smaile" storage="chara/tsukuri/tsukuri_normal.png"  ]
[chara_face name="tsukuri" face="weariness" storage="chara/tsukuri/tsukuri_normal.png"  ]
[chara_face name="tsukuri" face="angry" storage="chara/tsukuri/tsukuri_normal.png"  ]


;scout
[chara_new  name="scout"  storage="chara/scout/scout_normal.png" jname="スカウト" ]

[chara_face name="scout" face="normal" storage="chara/scout/scout_normal.png"  ]
[chara_face name="scout" face="perplexed" storage="chara/scout/scout_perplexed.png"  ]
[chara_face name="scout" face="sad" storage="chara/scout/scout_sad.png"  ]
[chara_face name="scout" face="surprise" storage="chara/scout/scout_surprise.png"  ]
[chara_face name="scout" face="half_sad" storage="chara/scout/scout_halfsad.png"  ]
[chara_face name="scout" face="smaile" storage="chara/scout/scout_smile.png"  ]
;この差分なし
[chara_face name="scout" face="weariness" storage="chara/scout/scout_normal.png"  ]
;この差分なし
[chara_face name="scout" face="angry" storage="chara/scout/scout_normal.png"  ]


;wakastuki
[chara_new  name="wakastuki" storage="chara/wakastuki/wakatsuki.png" jname="ワカツキ"  ]

[chara_face name="wakastuki" face="normal" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="perplexed" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="sad" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="surprise" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="smaile" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="weariness" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="angry" storage="chara/wakastuki/wakatsuki.png"  ]
[chara_face name="wakastuki" face="shy" storage="chara/wakastuki/wakatsuki.png"   ]
[chara_face name="wakastuki" face="ashamed" storage="chara/wakastuki/wakatsuki.png"]

;memori
[chara_new name="memori" storage="chara/memori/memori_normal.png"jname="めもり"  ]

[chara_face name="memori" face="normal" storage="chara/memori/memori_normal.png"  ]
[chara_face name="memori" face="perplexed" storage="chara/memori/memori_normal.png"  ]
[chara_face name="memori" face="sad" storage="chara/memori/memori_normal.png"  ]
[chara_face name="memori" face="surprise" storage="chara/memori/memori_normal.png"  ]
[chara_face name="memori" face="smaile" storage="chara/memori/memori_normal.png"  ]
[chara_face name="memori" face="weariness" storage="chara/memori/memori_normal.png"  ]
[chara_face name="memori" face="angry" storage="chara/memori/memori_normal.png"  ]
;めもり焦りの追加
[chara_face name="memori" face="impatience" storage="chara/memori/memori_normal.png"  ]


[macro name="pse"]
[p]
[playse storage="../bgm/text_click_se.mp3" ]
[endmacro]

[chara_config  talk_focus="brightness" ]



[jump storage="name_entry.ks"]