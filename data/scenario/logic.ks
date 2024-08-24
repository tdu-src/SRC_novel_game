*start
;学園モード、放課後モード、エンドの分岐のための判断をする
[iscript]
//ターンを進める
f.logic_turn+=1;

//パラメータを100より大きくなると100にするもの
var obj={
    parameter_controll : function(parameter){
        if(parameter>100){
            parameter=100;
        }else if(parameter<0){
            parameter=0;
        }else{
            parameter=parameter;
        }
        return parameter;
    }
}
f.cafe=obj.parameter_controll(f.cafe);
f.park=obj.parameter_controll(f.park);
f.art_museum=obj.parameter_controll(f.art_museum);
f.game_center=obj.parameter_controll(f.game_center);
f.scout=obj.parameter_controll(f.scout);
f.memori=obj.parameter_controll(f.memori);
f.wakatsuki=obj.parameter_controll(f.wakatsuki);
f.tsukuri=obj.parameter_controll(f.tsukuri);
[endscript]

[if exp="f.logic_turn>=f.end_turn" ]
[jump storage="ending_selector.ks"  ]
[elsif exp="f.gakuen_FT==0" ]
[jump storage="gakuen_selector.ks" ]
[elsif exp="f.gakuen_FT==1" ]
[jump storage="houkago_selector.ks" ]
[else]
[jump storage="title.ks" ]
[endif]

