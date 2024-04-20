*start
[iscript]
f.gakuen_FT=true; //trueなら学園モード、falseなら放課後モード
f.logic_turn=0; //logic_turnの値でend.ksに遷移する
f.end_turn=24; //エンドに分岐するための変数
f.gakuen_turn=0; //学園モードのターン設定

//以下から主人公のパラメータ
f.cafe=0;
f.park=0;
f.library=0;
f.game_senter=0;

//以下からキャラクターの好感度
f.scout=0;
f.memori=0;
[endscript] 
[jump storage="logic/logic.ks" ]