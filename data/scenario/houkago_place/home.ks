*start
[bg storage="rouka.jpg" time="100" ]
[ptext layer="1" x="-350" y="25" size="40" text="公園" name="align_ct_h" bold="true"  face="Arial"]
[iscript]
f.art_museum+=f.nomrmal_houkagoevent;
[endscript]
[if exp="f.art_museum_normal_flag=='true'"]
[jump target="*myhome_shortpart"]
[endif]
#
ここは公園です[p]


[iscript]
f.art_museum_normal_flag="true";
[endscript]

[jump storage="houkago_place/houkago_end.ks"]

;以下からショートパート
;---------------------------------------------------------
*myhome_shortpart

#
ここは公園のショートパートです[p]
[jump storage="houkago_place/houkago_end.ks"]
