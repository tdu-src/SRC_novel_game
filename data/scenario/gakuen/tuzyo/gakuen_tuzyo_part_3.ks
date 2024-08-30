*start
[isHeaderLeastSize text="購買にて"]
[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="scout" width="450" height="600" ]

#
授業が終わった....やっと昼休みだ....[p]

[chara_show name="scout" ]
[chara_show name="memori" width="450" height="600"  ]

#スカウト
[emb exp="f.player_name"]さ～ん！また今日もぼっちめしですかぁ～？！[p]

#
廊下からの聞き覚えのある声に振り向くと、ツクリとメモリが立っていた…[p]

#メモリ
ボクたちこれから購買に行くんだけど、一緒に行かない？ なんでも、たまにしか売られない限定特製カレーパンがあるんだって！[p]

#スカウト
私はいつも売り切れ必死の大人気クリームパンが食べたいです！[emb exp="f.player_name"]さん、早く行きますよ！[p]

#
購買に移った[p]

#
（ざわざわ....）[p]

#スカウト
えぇっ？！無茶苦茶人がいますよ!！[p]

#メモリ
こ、これじゃ並んでるうちにパンが売り切れちゃうよ！[p]

#
そこにはもはや列の概念はなく、険しい戦場が広がっている... [p]

#
二人が行くには危険すぎる... 自分が行かなくては... [p]

[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="150"  text="限定カレーパンを狙う！"   target="gakuen_tuzyo_part_3_root_1"]
[glink clickse="&f.button_clicking_se" color="blue"  size="28"  x="360"  width="500"  y="250"  text="大人気クリームパンを狙う!"  target="*gakuen_tuzyo_part_3_root_2" ]
[s]



*gakuen_tuzyo_part_3_root_1
[eval exp="f.memori+=f.gakuen_tuzyou_koukando"]

#
狙いをカレーパンに定め、隙間が空く瞬間を伺う...[p]

#&f.player_name
ここだ！[p]

#
(パシッ！！)[p]

#
人の波の間から、カレーパンを２つ掴んだ。[p]

#&f.player_name
はい、二人の分！[p]

#メモリ
すごい！ボクたちのために取ってくれたの？！[p]

#スカウト
ふーん、やるじゃないですか！[emb exp="f.player_name"]さん！[p]

#メモリ
でも、[emb exp="f.player_name"]の分が...そうだ、ボクのを半分こして食べようよ！[p]

#&f.player_name
えっ、いいの？[p]

#メモリ
うん、せっかくボクのためにとってきてくれたんだし！[p]

#スカウト
あっ...これ、私も分けなきゃいけない流れですか？


#メモリ
.....やっぱそれ、[emb exp="f.player_name"]の分ね。[p]

#スカウト
そんなぁ？！[p]


[jump storage="gakuen/gakuen_end_point.ks"]
*gakuen_tuzyo_part_3_root_2
[eval exp="f.scout+=f.gakuen_tuzyou_koukando"]

#
狙いをカレーパンに定め、隙間が空く瞬間を伺う...[p]

#&f.player_name
ここだ！[p]

#
（パシッ！！）[p]

#
人の波の間から、クリームパンを２つ掴んだ！[p]

#&f.player_name
はい、二人の分！[p]

#スカウト
ふーん、やるじゃないですか！[emb exp="f.player_name"]さん！[p]

#メモリ
すごい！ボクたちのために取ってくれたの？！[p]

#スカウト
でも、そうしたら[emb exp="f.player_name"]さんの分がありませんね...仕方ないですね、私のを半分分けてあげてもいいですよ?[p]

#&f.player_name
えっ、いいの？[p]

#スカウト
まぁ、相応の態度でお願いすればの話ですけどね！それじゃあ手始めに...！[p]

#メモリ
はい、もうひとつのは[emb exp="f.player_name"]の分ね。[p]

#スカウト
ちょっと待って？！[p]


[jump storage="gakuen/gakuen_end_point.ks"]