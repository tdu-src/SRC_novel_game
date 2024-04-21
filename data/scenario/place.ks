*start

;----------------------------------------------------------------------
*place_cafe
[bg storage="rouka.jpg" time="100" ]

#
ここはカフェです[p]


[jump target="*place_end" ]
;----------------------------------------------------------------------
*place_library
[bg storage="rouka.jpg" time="100" ]


#
ここは図書館です[p]

[jump target="*place_end" ]
;----------------------------------------------------------------------
*place_home
[bg storage="rouka.jpg" time="100" ]


#
ここは自宅です[p]

[jump target="*place_end" ]
;----------------------------------------------------------------------
*place_game_center
[bg storage="rouka.jpg" time="100" ]


#
ここはゲームセンターです[p]


[jump target="*place_end" ]
;----------------------------------------------------------------------
*place_end
[jump storage="logic.ks" ]

