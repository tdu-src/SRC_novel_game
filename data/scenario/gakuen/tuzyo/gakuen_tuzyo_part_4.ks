*start

[playbgm storage="../bgm/sofuchara_bgm_normal.mp3" ]
[chara_show name="tsukuri" width="450" height="600" ]
[chara_show name="wakastuki" width="450" height="600" ]

#
授業後、ツクリの創作活動のためにワカツキと一緒に資料写真を集めることになった[p]

#ワカツキ
ツクリ、こんな感じでいいの？[p]

#ツクリ
見せて。部活動の様子に放課後の校庭...あっ、この廊下の風景もいい感じ。[p]

#&f.player_name
（写真、結構集まったね。）[p]

#ツクリ
うん。でもあと何かが足りないんだよね...インスピレーションを刺激する何かが...[p]

#ワカツキ
そういえば、たまに校庭に入ってきてる野良猫がいるよね？あんまり姿を現さないから、探すところからだけど...[p]

#ツクリ
実際に見てみないとピンとこないかも.... どうしよう...？[p]

[glink  color="blue"  size="28"  x="360"  width="500"  y="150"  text="猫、探してみようか"  exp="f.scout+=5 && f.memori+=5" target="gakuen_tuzyo_part_4_root_1"]
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="自分が被写体になるよ！"  exp="f.tsukuri+=5" target="*gakuen_tuzyo_part_4_root_2" ]
[s]



*gakuen_tuzyo_part_4_root_1
#ツクリ
わかった。とりあえず学校の中を探してみよう。[p]

#
（時間経過...[p]

#ワカツキ
あっ、いた！見つけたよ！[p]

#
驚かさないように様子を窺っていると、猫は自分から近づいてきた[p]

#ワカツキ
結構人慣れしてるみたいだね、触っても大丈夫かな？[p]

#ツクリ
かわいいし、あったかい... 写真も撮らせてもらおう。[p]

#
（学園のマスコットとの触れ合いで、ツクリのインスピレーションを刺激できた！[p]


[jump storage="gakuen/gakuen_end_point.ks"]

*gakuen_tuzyo_part_4_root_2

#ワカツキ
え、何言ってるの...？[p]

#ツクリ
（主人公）を撮るってこと?う～ん、１回試しにやってみようか。[p]

#ワカツキ
ほ、本気...？[p]

#
教室に入って撮影の準備を終えると、自分は中世の彫刻顔負けのポーズを取り始めた[p]

#ツクリ
す、すごい...！芸術的な構図... 創作意欲が湧いてくるよ！[p]

#&f.player_name
（どんどん撮っていこう！）[p]

#ワカツキ
わ、私は何を見せられているんだろう...[p]

#
撮った写真はツクリの創作意欲に火を点け、その熱は当分消えることはなかった...[p]


[jump storage="gakuen/gakuen_end_point.ks"]