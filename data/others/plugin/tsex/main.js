var __tsex = {
    _save: [],
    _save_slot: 100,
    isSnap: false,
    skipIndex: -999,
    defSkipSpeed: 30,
    defDebugMesu: true,
    //defUnReadTextSkip: undefined,
    isAuto: false,
    isSkip: false,
    hotkey: "Alt+Shift+R",
    swithkey: "Ctrl+Shift+Q",
    error_console: [],
    capture: [],
    click: null,
    _studio: false,
}

;(function () {
    const {app, globalShortcut, BrowserWindow} = require("electron").remote.require("electron")
    const fs = require("fs")
    const path = require("path")
    const win = BrowserWindow.getAllWindows()[1]

    if (TYRANO.kag.variable.sf.__tsex === undefined) {
        TYRANO.kag.variable.sf.__tsex = {}
    }
    const sf = TYRANO.kag.variable.sf.__tsex

    var debug = $(".ui-draggable")
    debug.on("click", function (e) {
        e.stopPropagation()
    })

    /**
     * デバッグメニューレイアウト
     */
    debug.find("button").addClass("not_fold")
    debug.append("<span class='button fold not_fold'>折りたたみ▲</span>")
    debug.append("<span class='button devtools '>開発者ツール</span>")
    debug.append(
        '<label class="checklabel label_immovable "><input name="Immovable_check" id="Immovable_check" type="checkbox" class="checkImmovable debug_check" />ドラッグ無効</label>'
    )
    debug.append(
        '<label class="checklabel label_posrec "><input name="posrec_check" id="posrec_check" type="checkbox" class="checkPosRec debug_check" />ツール位置を記憶</label>'
    )

    debug.append("<br>")

    debug.append("<select name='select' class='scenario_select selectbox not_fold'></select>")
    debug.append("<select name='select' class='label_select selectbox not_fold'></select>")
    debug.append("<span class='button scenario_button not_fold'>ジャンプ</span>")
    debug.append("<span class='button scenario_button2'>画面初期化せずジャンプ</span>")

    debug.append("<br>")

    debug.append("<select name='line' class='line_select selectbox not_fold'></select>")
    debug.append("<span class='button label_button not_fold'>ここまでスキップ</span>")
    debug.append(
        '<label class="checklabel label_log"><input name="log_check" id="log_check" type="checkbox" class="checklog debug_check" />ここまでスキップ時ログ出力しない</label>'
    )
    //    debug.append('<label class="checklabel"><input name="click_check" id="click_check" type="checkbox" class="checkclick debug_check" />クリック連打</label>')

    debug.append("<br>")

    debug.append("<span class='button prev'>ひとつ戻る</span>")
    debug.append(
        '<label class="checklabel label_mute"><input name="mute_check" id="mute_check" type="checkbox" class="checkmute debug_check" />ミュート</label>'
    )
    debug.append('<label class="checklabel label_auto"><input name="auto_check" id="auto_check" type="checkbox" class="checkauto debug_check" />オート</label>')
    debug.append(
        '<label class="checklabel label_skip"><input name="skip_check" id="skip_check" type="checkbox" class="checkskip debug_check" />スキップ</label>'
    )
    debug.append("<span class='button capture'>スクリーンショット</span>")

    /**
     * ツールチップ表示
     */
    $(".fold ").attr("title", "デバッグメニューを縮小表示します")
    $(".label_immovable").attr("title", "ドラッグによるデバッグツール移動を無効化します")
    $(".label_posrec").attr("title", "現在のツール位置をリロード後も保持します")
    $(".devtools").attr("title", "開発者ツールの表示・非表示を切り替えます")
    $(".scenario_button").attr("title", "指定したシナリオ・ラベルへジャンプします")
    $(".scenario_button2").attr("title", "指定したシナリオ・ラベルへ画面初期化せずジャンプします")
    $(".label_button").attr("title", "指定した行までスキップします")
    $(".label_log").attr("title", "ここまでスキップ時開発者ツールへのログ出力を停止します")
    $(".prev").attr("title", "一つ前のメッセージまで戻ります")
    $(".label_mute").attr("title", "ゲーム画面ミュートを開始・終了します")
    $(".label_auto").attr("title", "強制オートモードを開始・終了します")
    $(".label_skip").attr("title", "強制スキップモードを開始・終了します")
    $(".capture").attr("title", "ゲーム画面のみのスクリーンショットを撮影します")

    /**
     * デバッグメニューのスタイルなど
     */
    if (sf.posrec) {
        debug.css({
            "line-height": "120%",
            top: sf.toolpos.x || 0,
            left: sf.toolpos.y || 0,
        })
    }
    debug.css({
        "user-select": "none",
    })
    $(".ui-draggable button").css({
        "pointer-events": "auto",
    })
    $("span.button").css({
        "font-size": "14px",
        margin: "0 4px",
        background: "#333",
        display: "inline-block",
        color: "white",
        border: "1px white solid",
        padding: "2px 8px",
        margin: "4px 0",
        cursor: "pointer",
        "pointer-events": "auto",
    })

    $(".selectbox").css({
        width: "280px",
        height: "32px",
        margin: "8px 0",
        "pointer-events": "auto",
    })
    $(".label_select").css({
        width: "160px",
    })

    $(".checklabel").css({
        color: "black",
        "margin-left": "12px",
        "margin-right": "12px",
        "pointer-events": "auto",
    })
    $(".checkbox").css({
        opacity: 1,
        position: "relative",
        width: "16px",
        height: "16px",
        "pointer-events": "auto",
    })
    $(".debug_check").css({
        opacity: 1,
        height: "16px",
        width: "16px",
        position: "initial",
        "pointer-events": "auto",
    })

    /**
     * サブフォルダ内ファイル探索
     * @param {string} folderPath
     * @returns {array} result
     */
    const readSubDirSync = (folderPath) => {
        let result = []
        const readTopDirSync = (folderPath) => {
            let items = fs.readdirSync(folderPath)
            items = items.map((itemName) => {
                return path.join(folderPath, itemName)
            })
            items.forEach((itemPath) => {
                result.push(itemPath)
                if (fs.statSync(itemPath).isDirectory()) {
                    readTopDirSync(itemPath)
                    //再帰処理
                }
            })
        }
        readTopDirSync(folderPath)
        return result
    }

    /**
     * scenarioフォルダ内ksファイル一覧取得
     */
    var items = readSubDirSync(__dirname + "/data/scenario")
    items.forEach((itemPath) => {
        if (itemPath.toLowerCase().indexOf(".ks") > 0) {
            var scene = path.relative(__dirname + "/data/scenario", itemPath)
            var opt = $("<option></option>")
            scene = scene.replace(/\\/g, "/")
            opt.attr("val", scene)
            opt.text(scene)
            $(".scenario_select").append(opt)
        }
    })

    /**
     * ボタン、チェックボックス押下時にドラッグできないように
     */
    $(".checklabel, .button").on("mousedown", function (e) {
        e.stopPropagation()
    })

    /**
     * ツール位置記憶
     */
    debug.on("mouseup", function (e) {
        if (sf.posrec) {
            sf.toolpos = {
                x: debug.css("top"),
                y: debug.css("left"),
            }
            TYRANO.kag.saveSystemVariable()
        }
    })
    $(".checkPosRec").on("change", function (e) {
        if ($(".checkPosRec").prop("checked")) {
            sf.posrec = true
            sf.toolpos = {
                x: debug.css("top"),
                y: debug.css("left"),
            }
        } else {
            sf.posrec = false
        }
        TYRANO.kag.saveSystemVariable()
        return false
    })
    if (sf.posrec) {
        $(".checkPosRec").prop("checked", true)
    } else {
        $(".checkPosRec").prop("checked", false)
    }

    /**
     * ドラッグ無効
     */
    $(".checkImmovable").on("change", function (e) {
        if ($(".checkImmovable").prop("checked")) {
            debug.css({
                "pointer-events": "none",
            })
            sf.toolImmovable = true
        } else {
            debug.css({
                "pointer-events": "auto",
            })
            sf.toolImmovable = false
        }
        TYRANO.kag.saveSystemVariable()
        e.stopPropagation()
        return false
    })
    if (sf.toolImmovable) {
        debug.css({
            "pointer-events": "none",
        })
        $(".checkImmovable").prop("checked", true)
    } else {
        debug.css({
            "pointer-events": "auto",
        })
        $(".checkImmovable").prop("checked", false)
    }

    /**
     * 開発者ツール表示切り替え
     */
    $(".devtools").on("click", function () {
        win.toggleDevTools()
    })

    /**
     * ラベル一覧セット
     */
    $(".scenario_select").on("change", function (e) {
        $(".label_select").empty()
        $.loadText("./data/scenario/" + $(".scenario_select").val(), function (text_str) {
            const result_obj = TYRANO.kag.parser.parseScenario(text_str)
            const map_label = result_obj.map_label
            var opt = $("<option></option>")
            opt.val("")
            opt.text("---")
            $(".label_select").append(opt)
            Object.keys(map_label).forEach(function (key) {
                var opt = $("<option></option>")
                opt.val(map_label[key].label_name)
                opt.text("*" + map_label[key].label_name)
                $(".label_select").append(opt)
            })
        })
    })
    $(".scenario_select").trigger("change")

    /**
     * シナリオジャンプ
     */
    $(".scenario_button").on("click", function (e) {
        //セーブデータをリセット
        global.__tsex._save = []
        TYRANO.kag.stat.is_strong_stop = true
        TYRANO.kag.layer.hideEventLayer()

        $(".line_select").empty()
        TYRANO.kag.variable.tf.storage = $(".scenario_select").val()
        TYRANO.kag.variable.tf.target = $(".label_select").val()
        TYRANO.kag.loadScenario(TYRANO.kag.variable.tf.storage, function (ary_tag) {
            for (var i = 0; i < ary_tag.length; i++) {
                var opt = $("<option></option>")
                opt.val(i)
                opt.text(ary_tag[i].line + "：[" + ary_tag[i].name + "]" + ary_tag[i].val)
                $(".line_select").append(opt)
            }
        })

        TYRANO.kag.ftag.startTag("cm")
        TYRANO.kag.ftag.startTag("clearfix")
        TYRANO.kag.ftag.startTag("freeimage", {
            layer: "base",
        })
        for (var i = 0; i < TYRANO.kag.config.numCharacterLayers; i++) {
            TYRANO.kag.ftag.startTag("freeimage", {
                layer: i,
            })
        }
        for (var i = 0; i < TYRANO.kag.config.numMessageLayers; i++) {
            TYRANO.kag.ftag.startTag("layopt", {
                layer: i,
                visible: false,
            })
        }
        TYRANO.kag.ftag.startTag("jump", {
            storage: "../others/plugin/tsex/init.ks",
            target: "*go",
            sp: "true",
        })
        e.stopPropagation()
    })

    /**
     * 画面初期化せずシナリオジャンプ
     */
    $(".scenario_button2").on("click", function (e) {
        //セーブデータをリセット
        global.__tsex._save = []
        TYRANO.kag.stat.is_strong_stop = true
        TYRANO.kag.layer.hideEventLayer()

        $(".line_select").empty()
        TYRANO.kag.variable.tf.storage = $(".scenario_select").val()
        TYRANO.kag.variable.tf.target = $(".label_select").val()
        TYRANO.kag.loadScenario(TYRANO.kag.variable.tf.storage, function (ary_tag) {
            for (var i = 0; i < ary_tag.length; i++) {
                var opt = $("<option></option>")
                opt.val(i)
                opt.text(ary_tag[i].line + "：[" + ary_tag[i].name + "]" + ary_tag[i].val)
                $(".line_select").append(opt)
            }
        })
        TYRANO.kag.ftag.startTag("jump", {
            storage: "../others/plugin/tsex/init.ks",
            target: "*go",
            sp: "true",
        })
        e.stopPropagation()
    })

    /**
     * 指定位置までスキップ
     */
    $(".label_button").on("click", function (e) {
        e.preventDefault()
        global.__tsex.defSkipSpeed = TYRANO.kag.config.skipSpeed
        TYRANO.kag.config.skipSpeed = 1
        global.__tsex.defUnReadTextSkip = TYRANO.kag.config.unReadTextSkip
        TYRANO.kag.config.unReadTextSkip = true
        if (sf.hideLog) {
            global.__tsex.defDebugMesu = TYRANO.kag.config["debugMenu.visible"]
            TYRANO.kag.config["debugMenu.visible"] = "false"
        }
        global.__tsex.skipIndex = parseInt($(".line_select").val())
        TYRANO.kag.ftag.startTag("skipstart", {})
        e.stopPropagation()
    })

    /**
     * ログ出力有無
     */
    $(".checklog").on("change", function (e) {
        if ($(".checklog").prop("checked")) {
            sf.hideLog = true
        } else {
            sf.hideLog = false
        }
        TYRANO.kag.saveSystemVariable()
        e.stopPropagation()
        return false
    })
    $(".checklog").prop("checked", sf.hideLog)

    /**
     * クリック連打（未使用）
     */
    $(".checkclick").on("change", function (e) {
        let click = function () {
            const el = $(".layer_event_click")
            if (el.css("display") !== "none") {
                el.trigger("click")
            }
            __tsex.click = requestAnimationFrame(click)
        }
        if ($(".checkclick").prop("checked")) {
            click()
        } else {
            cancelAnimationFrame(__tsex.click)
        }
        e.stopPropagation()
        return false
    })

    /**
     * ミュート
     */
    $(".checklabel").on("click", function (e) {
        e.stopPropagation()
    })
    $(".checkmute").on("change", function (e) {
        if ($(".checkmute").prop("checked")) {
            BrowserWindow.getAllWindows()[1].webContents.audioMuted = true
        } else {
            BrowserWindow.getAllWindows()[1].webContents.audioMuted = false
        }
        e.stopPropagation()
        return false
    })
    if (BrowserWindow.getAllWindows()[1].webContents.audioMuted) {
        $(".checkmute").prop("checked", true)
    } else {
        $(".checkmute").prop("checked", false)
    }

    /**
     * オート
     */
    $(".checkauto").on("change", function (e) {
        if ($(".checkauto").prop("checked")) {
            TYRANO.kag.ftag.startTag("autostart", {}, function () {
                return false
            })
        } else {
            TYRANO.kag.ftag.startTag("autostop", {}, function () {
                return false
            })
        }
        e.stopPropagation()
        //return false
    })

    /**
     * スキップ
     */
    $(".checkskip").on("change", function (e) {
        if ($(".checkskip").prop("checked")) {
            TYRANO.kag.ftag.startTag("skipstart", {}, function () {
                return false
            })
        } else {
            TYRANO.kag.ftag.startTag("skipstop", {}, function () {
                return false
            })
        }
        e.stopPropagation()
    })

    /**
     * ひとつ戻る
     */
    $(".prev").on("click", function (e) {
        var data = null
        for (var i = global.__tsex._save.length - 1; i > 0; i--) {
            data = global.__tsex._save[global.__tsex._save.length - 1]
            global.__tsex._save.pop()
            if (data.current_order_index > 0) {
                break
            }
        }
        data = global.__tsex._save[global.__tsex._save.length - 1]
        global.__tsex._save.pop()
        TYRANO.kag.menu.loadGameData($.extend(true, {}, data))
        e.stopPropagation()
    })

    /**
     * dataURI→PNG変換
     * @param {string} dataURI
     * @returns
     */
    function dataURItoBlob(dataURI) {
        const b64 = atob(dataURI.split(",")[1])
        const u8 = Uint8Array.from(b64.split(""), (e) => e.charCodeAt())
        return new Blob([u8], {type: "image/png"})
    }

    /**
     * キャプチャ撮影
     */
    $(".capture").on("click", function (e) {
        $(".ui-draggable").css("visibility", "hidden")
        var base = $(".tyrano_base").get(0)
        var offset_top = base.offsetTop
        var offset_left = base.offsetLeft
        var width = base.offsetParent.clientWidth - offset_left * 2
        var height = document.documentElement.clientHeight - offset_top * 2 //base.offsetParent.clientHeight - offset_top * 2
        setTimeout(function () {
            BrowserWindow.getAllWindows()[1]
                .capturePage({
                    x: offset_left,
                    y: offset_top,
                    width: width,
                    height: height,
                })
                .then((img) => {
                    var el = $("<a>test</a>")
                    var d = $.replaceAll($.replaceAll($.getNowDate(), "/", ""), " ", "")
                    var t = $.replaceAll($.getNowTime(), "：", "")
                    var blob = dataURItoBlob(img.toDataURL())
                    var url = URL.createObjectURL(blob)
                    el.attr("href", url)
                    el.attr("download", d + t + ".png")
                    el[0].click()
                    setTimeout(function () {
                        $(".ui-draggable").css("visibility", "visible")
                    }, 5)
                })
        }, 100)
        e.stopPropagation()
    })

    /**
     * リロードボタンのホットキー設定
     */
    globalShortcut.unregisterAll()
    globalShortcut.register(global.__tsex.hotkey, () => {
        $(".ui-draggable button").trigger("click")
        BrowserWindow.getAllWindows()[1].focus()
    })

    /**
     * デバッグメニュー表示ON/OFF
     */
    window.addEventListener(
        "keyup",
        function (e) {
            if (e.key == "Q" && e.ctrlKey && e.shiftKey) {
                var disp = $(".ui-draggable").css("display") == "none" ? "" : "none"
                $(".ui-draggable").css({
                    display: disp,
                })
            }
        },
        true
    )

    /**
     * 折りたたみON/OFF
     */
    if (sf.is_fold === undefined) {
        sf.is_fold = false
    }
    const fold_style = {
        margin: $(".ui-draggable").find("select").css("margin"),
        width_scenario: $(".scenario_select").css("width"),
        width_label: $(".label_select").css("width"),
        width_line: $(".line_select").css("width"),
    }
    const folding = function (is_fold) {
        //const is_display = $(".ui-draggable").find("br").css("display")
        if (!is_fold) {
            $(".fold").text("折りたたみ▲")
            $(".ui-draggable>:not(.not_fold)").css({
                display: "",
            })
            $(".ui-draggable")
                .find("select")
                .each(function () {
                    $(this).css("margin", fold_style.margin)
                })
            $(".scenario_select").css("width", fold_style.width_scenario)
            $(".label_select").css("width", fold_style.width_label)
            $(".line_select").css("width", fold_style.width_line)
            sf.is_fold = false
        } else {
            $(".fold").text("折りたたみ▼")
            $(".ui-draggable>:not(.not_fold)").css({
                display: "none",
            })
            $(".ui-draggable")
                .find("select")
                .each(function () {
                    $(this).css("margin", "0")
                })
            $(".scenario_select, .label_select, .line_select").css("width", "100px")
            sf.is_fold = true
        }
        TYRANO.kag.saveSystemVariable()
    }
    $(".fold").on("click", function (e) {
        e.stopPropagation()
        folding(!sf.is_fold)
    })
    //折りたたみ状況
    if (sf.posrec && sf.is_fold) {
    } else {
        sf.is_fold = false
    }
    folding(sf.is_fold)

    /**
     * ティラノスタジオのエラーを表示
     */
    if (TYRANO.kag.stat.mp._studio) {
        const studio = BrowserWindow.getAllWindows()[0]
        studio.webContents.executeJavaScript(
            `
            console.error = function(e){
                const { BrowserWindow } = require('electron').remote.require("electron")
                const win = BrowserWindow.getAllWindows()[1]
                win.webContents.executeJavaScript('console.error("ティラノスタジオのエラー：' + e + '")')
            }
        `,
            false
        )
    }

    /**
     * 既存関数オーバーライド
     */

    /**
     * showNextImg
     */
    const _showNextImg = TYRANO.kag.ftag.showNextImg
    TYRANO.kag.ftag.showNextImg = function () {
        _showNextImg.apply(TYRANO.kag.ftag, arguments)
        //セーブスロット上限値
        if (global.__tsex._save.length >= global.__tsex._save_slot) {
            global.__tsex._save.shift()
        }
        const that = TYRANO.kag.menu
        const snap = that.snap
        that.snapSave(
            "saveTitle",
            function () {
                global.__tsex._save.push(that.snap)
                that.snap = snap
            },
            "false"
        )
    }

    /**
     * nextOrder
     */
    const _nextOrder = tyrano.plugin.kag.ftag.nextOrder
    tyrano.plugin.kag.ftag.nextOrder = function () {
        let that = TYRANO
        if (global.__tsex.skipIndex > 0) {
            var line = 0
            if (that.kag.stat.stack["macro"].length === 0) {
                line = that.kag.ftag.current_order_index
            } else {
                line = that.kag.stat.stack["macro"][that.kag.stat.stack["macro"].length - 1].index
            }
            if (global.__tsex.skipIndex <= line) {
                that.kag.setSkip(false)
                //that.kag.stat.is_skip = false
                global.__tsex.skipIndex = -999
                that.kag.config.skipSpeed = global.__tsex.defSkipSpeed
                that.kag.config.unReadTextSkip = global.__tsex.defUnReadTextSkip
                if (sf.hideLog) {
                    TYRANO.kag.config["debugMenu.visible"] = global.__tsex.defDebugMesu
                }
            } else {
            }
        } else {
            if (global.__tsex.defUnReadTextSkip === undefined) {
            } else {
                that.kag.setSkip(false)
                //that.kag.stat.is_skip = false
                global.__tsex.skipIndex = -999
                that.kag.config.skipSpeed = global.__tsex.defSkipSpeed
                that.kag.config.unReadTextSkip = global.__tsex.defUnReadTextSkip
                if (sf.hideLog) {
                    TYRANO.kag.config["debugMenu.visible"] = global.__tsex.defDebugMesu
                }
                delete global.__tsex.defUnReadTextSkip
            }
        }
        if (that.kag.stat.is_auto === false) {
            $(".checkauto").prop("checked", false)
        }
        if (that.kag.stat.is_skip === false) {
            $(".checkskip").prop("checked", false)
        }
        //_nextOrder.apply(this)
        _nextOrder.apply(this)
    } //.bind(TYRANO)
    TYRANO.kag.ftag.nextOrder = tyrano.plugin.kag.ftag.nextOrder

    /**
     * jump
     */
    const _jump = tyrano.plugin.kag.tag.jump
    tyrano.plugin.kag.tag.jump = $.extend(true, {}, _jump, {
        start: function (pm) {
            if (pm.storage && pm.sp === undefined) {
                $(".scenario_select").val(pm.storage)
                $(".scenario_select").trigger("change")
                $.loadText(`./data/scenario/${pm.storage}`, function (order) {
                    var result_obj = TYRANO.kag.parser.parseScenario(order)
                    var tag_obj = result_obj.array_s
                    $(".line_select").empty()
                    for (var i = 0; i < tag_obj.length; i++) {
                        var opt = $("<option></option>")
                        opt.val(i)
                        opt.text(tag_obj[i].line + "：[" + tag_obj[i].name + "]" + tag_obj[i].val)
                        $(".line_select").append(opt)
                    }
                })
            }
            _jump.start.apply(TYRANO.kag, arguments)
        },
    })
    tyrano.plugin.kag.ftag.master_tag.jump = tyrano.plugin.kag.tag.jump
    tyrano.plugin.kag.ftag.master_tag.jump.kag = tyrano.plugin.kag
})()
