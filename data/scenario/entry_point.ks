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

//エンドターンの計算
f.end_turn=f.gakuen_turn_list.length;
f.end_turn*=2;
f.end_turn+=1;


//以下から主人公のパラメータ
f.player_name;
f.cafe=0;
f.my_home=0;
f.library=0;
f.game_senter=0;

//場所のパラメータの値の通常と遭遇イベントの値の変化
f.normal_place_parameter=10;
f.special_place_parameter=15;

//以下からキャラクターの好感度
f.scout=0;
f.scout_kouryu_key=0;
f.scout_flag='false';
f.memori=0;
f.memori_kouryu_key=0;
f.memori_flag='false';
f.tsukuri=60;
f.tsukuri_kouryu_key=0;
f.tsukuri_flag='false';
f.wakatsuki=0;
f.wakatsuki_kouryu_key=0;
f.wakatsuki_flag='false';
[endscript] 
;[jump storage="logic.ks"  ]
[jump storage="name_entry.ks"]