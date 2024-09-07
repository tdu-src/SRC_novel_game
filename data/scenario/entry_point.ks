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
[chara_new  name="tsukuri" storage="chara/tsukuri/normal.png" jname="ツクリ"  ]

[chara_face name="tsukuri" face="normal" storage="chara/tsukuri/normal.png"  ]
[chara_face name="tsukuri" face="perplexed" storage="chara/tsukuri/perplexed.png"  ]
[chara_face name="tsukuri" face="sad" storage="chara/tsukuri/sad.png"  ]
[chara_face name="tsukuri" face="surprise" storage="chara/tsukuri/surprise.png"  ]
[chara_face name="tsukuri" face="smaile" storage="chara/tsukuri/smile.png"  ]
[chara_face name="tsukuri" face="weariness" storage="chara/tsukuri/tsukuri_weariness.png"  ]
[chara_face name="tsukuri" face="angry" storage="chara/tsukuri/tsukuri_angry.png"  ]


;scout
[chara_new  name="scout"  storage="chara/scout/scout_normal.png" jname="スカウト" ]

[chara_face name="scout" face="normal" storage="chara/scout/scout_normal.png"  ]
[chara_face name="scout" face="perplexed" storage="chara/scout/scout_perplexed.png"  ]
[chara_face name="scout" face="sad" storage="chara/scout/scout_sad.png"  ]
[chara_face name="scout" face="surprise" storage="chara/scout/scout_surprise.png"  ]
[chara_face name="scout" face="half_sad" storage="chara/scout/scout_halfsad.png"  ]
[chara_face name="scout" face="smaile" storage="chara/scout/scout_smile.png"  ]
[chara_face name="scout" face="weariness" storage="chara/scout/scout_weariness.png"  ]
[chara_face name="scout" face="angry" storage="chara/scout/scout_angry.png"  ]


;wakastuki
[chara_new  name="wakastuki" storage="chara/wakastuki/normal.png" jname="ワカツキ"  ]

[chara_face name="wakastuki" face="normal" storage="chara/wakastuki/normal.png"  ]
[chara_face name="wakastuki" face="perplexed" storage="chara/wakastuki/perplexed.png"  ]
[chara_face name="wakastuki" face="sad" storage="chara/wakastuki/sad.png"  ]
[chara_face name="wakastuki" face="surprise" storage="chara/wakastuki/surprise.png"  ]
[chara_face name="wakastuki" face="smaile" storage="chara/wakastuki/smile.png"  ]
[chara_face name="wakastuki" face="weariness" storage="chara/wakastuki/weariness.png"  ]
[chara_face name="wakastuki" face="angry" storage="chara/wakastuki/angry.png"  ]
[chara_face name="wakastuki" face="shy" storage="chara/wakastuki/shy.png"   ]
[chara_face name="wakastuki" face="ashamed" storage="chara/wakastuki/ashamed.png"]

;memori
[chara_new name="memori" storage="chara/memori/normal.png"jname="めもり"  ]

[chara_face name="memori" face="normal" storage="chara/memori/normal.png"  ]
[chara_face name="memori" face="perplexed" storage="chara/memori/perplexed.png"  ]
[chara_face name="memori" face="sad" storage="chara/memori/memori_sad.png"  ]
[chara_face name="memori" face="surprise" storage="chara/memori/surprise.png"  ]
[chara_face name="memori" face="smaile" storage="chara/memori/smile.png"  ]
[chara_face name="memori" face="weariness" storage="chara/memori/memori_weariness.png"  ]
[chara_face name="memori" face="angry" storage="chara/memori/angry.png"  ]
[chara_face name="memori" face="impatience" storage="chara/memori/memori_impatience.png"  ]

;seと[p]のマクロ
[macro name="pse"]
[p]
[playse storage="../bgm/text_click_se.mp3" ]
[endmacro]


;キャラクターのハイド
[chara_config  talk_focus="brightness" ]

;画面遷移のマクロ
[macro name="SceneMove"]
[button name="first_arrow" graphic="../fgimage/items/screen_transition_item/yellow_arrow.png" x="-1500" y="0"]
[anim name="first_arrow" left="2000" time="6000"]
[wait time="500"]
[button name="second_arrow" graphic="../fgimage/items/screen_transition_item/green_arrow.png" x="-2000" y="0"]
[anim name="second_arrow" left="2500" time="4500"]
[wait time="500"]
[button name="third_arrow" graphic="../fgimage/items/screen_transition_item/blue_arrow.png" x="-2400" y="-10"]
[anim name="third_arrow" left="4000" time="4500"]
[endmacro]

;時間経過カットイン
[macro name="isTimePassage"]
[SceneMove]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Timepassage"]
[endmacro]

[macro name="isTimePassage2"]
[SceneMove]
[glink graphic="../fgimage/items/screen_transition_item/InvisibleScreen.png"   size="500"  x="0"  width="2000"  y="0"  text=""   target="*Timepassage2"]
[endmacro]


[macro name="isHeader"]
;width=565 height=130 デフォルト
[image layer="0" x="-30" y="-10" storage="../fgimage/items/partwindow_background.png"  width="%width" height="110"]
;x=-350 デフォルト
[ptext name="align_ct_h" layer="1" x="%x" y="10" size="48" text="%text"  bold="true"  face="Arial"]
[endmacro]

[macro name="isKoryuHeader3"]
[image layer="0" x="-30" y="-10" storage="../fgimage/relationship_selector_image/image/PartHeader.png"  width="420" height="110"]
[ptext name="align_ct_h" layer="1" x="-400" y="10" size="48" text="%text"  bold="true"  face="Arial"]
[endmacro]

[macro name="isKoryuHeader4"]
[image layer="0" x="-30" y="-10" storage="../fgimage/relationship_selector_image/image/PartHeader.png"  width="450" height="110"]
[ptext name="align_ct_h" layer="1" x="-380" y="10" size="48" text="%text"  bold="true"  face="Arial"]
[endmacro]

[jump storage="name_entry.ks"]