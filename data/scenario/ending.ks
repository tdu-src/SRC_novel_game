*start
;-------------------------------------------------------------
*ending_root_memori

#
ここはメモリエンドです[p]
[jump target="*ending_to_titles" ]

;-------------------------------------------------------------
*ending_root_scout

#
ここはスカウトエンドです[p]
[jump target="*ending_to_titles" ]

;-------------------------------------------------------------
*ending_root_normal

#
ここはノーマルエンドです[p]
[jump target="*ending_to_titles" ]
;-------------------------------------------------------------

*ending_to_titles
[free layer="message0" name="chara_name_area"  ]
[clearfix]
[layopt layer="message0" visible="false"  ]
[chara_hide name="akane" time="1000" ]
[chara_hide name="yamato" time="1000" ]

[jump storage="title.ks" ]
