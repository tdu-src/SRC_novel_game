*start
ここは放課後セレクターです。[p]

[iscript]
// 各ボタンが赤くなる確率を設定
var randomChance = Math.random();
f.gameColor = randomChance < 0.5 ? "red" : "blue";
f.homeColor = randomChance < 0.5 ? "red" : "blue";
f.artColor = randomChance < 0.5 ? "red" : "blue";
f.cafeColor = randomChance < 0.5 ? "red" : "blue";

[endscript]

*selector

[glink color="&f.gameColor" size="28" x="360" width="500" y="150" text="ゲーセン" target="*game"]
[glink color="&f.homeColor" size="28" x="360" width="500" y="250" text="自宅" target="*home"]
[glink color="&f.artColor" size="28" x="360" width="500" y="350" text="美術館" target="*art"]
[glink color="&f.cafeColor" size="28" x="360" width="500" y="450" text="カフェ" target="*cafe"]
[glink color="red" size="28" x="360" width="500" y="550" text="交流" target="*relation"]

[s]

*game
[bg storage="game_center.jpg" time="1000" method="vanishIn" ]
[if exp="f.gameColor == 'red' && f.met_event_game != true"]
    @call storage="story/place/special/game_center_special.ks"  ; 赤い場合、特定の遭遇イベントを呼び出す
    [iscript]
        f.met_event_game = true;
    [endscript] 
[else]
    @call storage="story/place/game_center.ks" ; 通常のゲーセンシナリオに進む
[endif]
@jump target="*houkago_end"

*home
[bg storage="home_evening.jpg" time="1000" method="vanishIn" ]
[if exp="f.homeColor == 'red' && f.met_event_home != true"]
    @call storage="story/place/special/home_special.ks"  ; 赤い場合、特定の遭遇イベントを呼び出す
    [iscript]
        f.met_event_home = true;
    [endscript] 
[else]
    @call storage="story/place/home.ks"        ; 通常の自宅シナリオに進む
[endif]
@jump target="*houkago_end"

*art
[bg storage="art_muserum_day.jpg" time="1000" method="vanishIn" ]
[if exp="f.artColor == 'red' && f.met_event_art != true"]
    @call storage="story/place/special/art_museum_special.ks"   ; 赤い場合、特定の遭遇イベントを呼び出す
    [iscript]
        f.met_event_art = true;
    [endscript] 
[else]
    @call storage="story/place/art_museum.ks"  ; 通常の美術館シナリオに進む
[endif]
@jump target="*houkago_end"

*cafe
[bg storage="cafe_evening.jpg" time="1000" method="vanishIn" ]
[if exp="f.cafeColor == 'red' && f.met_event_cafe != true"]
    @call storage="story/place/special/cafe_special.ks"  ; 赤い場合、特定の遭遇イベントを呼び出す
    [iscript]
        f.met_event_cafe = true;
    [endscript] 
[else]
    @call storage="story/place/cafe.ks"        ; 通常のカフェシナリオに進む
[endif]
@jump target="*houkago_end"

*relation
@jump storage="story/loop/relation_selector.ks"  ; 交流シナリオに進む

*houkago_end
@jump storage="story/loop/gakuen.ks"
