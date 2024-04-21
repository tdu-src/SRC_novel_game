*start
;学園モード、放課後モード、エンドの分岐のための判断をする
[iscript]
f.logic_turn+=1;
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

