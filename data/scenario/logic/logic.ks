*start
;学園モード、放課後モード、エンドの分岐のための判断をする
[iscript]
f.logic_turn+=1;
[endscript]
[if exp="f.logic_turn>=f.end_turn" ]
[jump storage="logic/loop/ending.ks" ]
[elsif exp="f.gakuen_FT==ture" ]
[jump storage="logic/loop/gakuen.ks" ]
[elsif exp="f.gakuen_FT==false" ]
[jump storage="logic/loop/houkago_selector.ks" ]
[else]
[jump storage="title.ks" ]
[endif]

