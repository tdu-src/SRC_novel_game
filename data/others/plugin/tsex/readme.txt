【ティラノスタジオ用デバッグ支援プラグイン】

■使い方
このテキストが入っているフォルダごと「data/others/plugin」フォルダに置きます。
それからfirst.ksとかに以下のように記述してください。
記述した時点からデバッグツールがゲーム画面上に表示されます。

[plugin name=tsex]
指定可能属性
hotkey：ゲーム画面リロードのホットキーを変更できます。指定の仕方はkeyConfig.jsに書いてあるURL見てください
back：「ひとつ戻る」で戻れる範囲を指定します。初期値は100です。あんまり大きい値にするとメモリをバカ食いするのでほどほどに設定してください。
error：開発者ツールのconsoleタブに表示されるエラーをゲーム画面側に表示させます。このエラーメッセージをスクショしてツイッターに流すと解決の早道になるかも、ならないかも


■できること
・ホットキーによるゲーム画面リロード
Shift+Alt+Rキー同時押しにより、ゲーム画面が非アクティブ時でもゲーム画面をリロードできます。
キーは自由に変更できます。

・シナリオジャンプ
プロジェクト内の任意のシナリオ、ラベル位置にジャンプできます。
ジャンプ時に画面初期化も行います。
画面初期化しないタイプのシナリオジャンプもできます。

・ここまでスキップ
ジャンプしたシナリオ内の任意の行までスキップします。

・ひとつ戻る
ひとつ前のメッセージまで戻ります。

・ミュート
ゲーム画面自体をミュートします。
（BGM音量等は変化しません）

・オート（おまけ）
チェックを入れるとオートモードがスタートします。

・スキップ（おまけ）
チェックを入れるとスキップモードがスタートします。

・デバッグメニューの表示／非表示切り替え
Ctrl+Shift+Qキー同時押しによりデバッグメニューの表示／非表示を切り替えます。

・スクリーンショット撮影
ゲーム画面のスクリーンショットを撮影します。ゲーム画面のみ撮影されます。

・ドラッグ無効
チェックを入れるとデバッグメニューがドラッグで動かなくなります。

・ツール位置を記憶
チェックを入れるとデバッグメニュー位置をリロード後も記憶します。

・開発者ツール表示／非表示切り替え
開発者ツールの表示／非表示を切り替えます。

・デバッグメニュー折りたたみ
デバッグメニューを折りたたんで省スペースにできます。
「ツール位置を記憶」にチェックを入れると、リロード後も折りたたみ状況を保持します。

・consoleタブに表示されるエラーログをゲーム画面側にも表示
javascript起因のエラーなど、開発者ツールのconsoleタブに表示されるエラーをゲーム画面側に表示することでエラーに気づきやすくなります。


■注意事項
本プラグインはデバッグ作業用のプラグインなので、リリース時には必ずプラグイン本体および[plugin]タグの削除を行ってください。
このプラグインを使用したことで生じたあらゆる問題について、製作者は責任を負いません。


■製作者
さくた（@skt_order）
https://skt-pnt.netlify.app


■更新履歴
2023/03/09  ver2.1.3公開
・セーブスナップ取得処理を変更

2023/02/02  ver2.1.2公開
・「ここまでスキップ時ログ出力しない」にチェック入れていない場合にログ出力されないことがある不具合を修正

2022/12/10  ver2.1.1公開
・スキップ、オート系のバグ修正

2022/11/28  ver2.1.0公開
・「ひとつ戻る」で戻れる範囲を20から100に変更
・「ここまでスキップ時ログ出力しない」を追加、ここまでスキップ中の負荷が多少軽減できます
・[jump]タグでシナリオジャンプ時、シナリオ選択および行選択メニューが現在のシナリオを追従するように変更
・折りたたみ時のレイアウト変更

2022/10/20  ver2.0.0公開
・ティラノスクリプトv520対応、v514以下との互換性なし

2022/03/25  ver1.8.6公開
・特定条件でデバッグメニューの表示が崩れる不具合を修正

2022/02/11  ver1.8.5公開
・シナリオ選択時にラベルのセレクトボックスを初期化するように修正

2022/01/29  ver1.8.4公開
・デバッグメニューを折りたたみできるように
・シナリオジャンプ時、ここまでスキップのセレクトボックスを初期化するように修正

2022/01/16  ver1.8.3公開
・画面初期化せずジャンプでエラーが発生する不具合を修正

2022/01/16  ver1.8.2公開
・各ボタンにツールチップで簡易説明を表示するよう修正
・ドラッグ無効状態でも、ツール内のボタンを押している最中はドラッグできてしまう不具合を修正
・初期状態で選択されているシナリオのラベルを取得しておくよう修正

2021/10/11  ver1.8.1公開
・スクリーンショット画像の下側が切れる不具合を修正

2021/10/02  ver1.8公開
・「画面初期化せずジャンプ」機能を追加

2021/08/27  ver1.7公開
・開発者ツールのconsoleタブに表示されるエラーをゲーム画面側に表示するオプションを追加

2021/07/01  ver1.6.3公開
・シナリオ選択時に取得するラベル一覧に「---」（未選択）を追加

2021/03/14  ver.1.6.2公開
・シナリオジャンプで拡張子が大文字のシナリオファイルが表示されない不具合を修正

2021/01/25  ver.1.6.1公開
・スクリーンショット撮影で2MB以上の画像を保存できない不具合を修正

2021/01/15  ver.1.6公開
・「ひとつ戻る」で戻れる範囲の上限値を設定

2020/11/22  ver.1.5公開
・デバッグメニューのドラッグ移動無効  追加
・デバッグメニュー位置記憶  追加
・開発者ツール表示非表示切り替え  追加
・いろいろバグ修正

2020/06/27  ver.1.0公開
・デバッグメニューの表示／非表示切り替え  追加
・スクリーンショット撮影  追加
・諸々バグ修正

2020/04/24
私製版公開