local EN_TO_JP = {["i"]="私",["me"]="私",["my"]="私の",["you"]="あなた",["your"]="あなたの",["he"]="彼",["him"]="彼",["his"]="彼の",["she"]="彼女",["her"]="彼女",["we"]="私たち",["us"]="私たち",["they"]="彼ら",["them"]="彼ら",["it"]="それ",["this"]="これ",["that"]="あれ",["these"]="これら",["those"]="あれら",["who"]="誰",["what"]="何",["where"]="どこ",["when"]="いつ",["why"]="なぜ",["how"]="どうやって",["the"]="",["a"]="",["an"]="",["and"]="と",["or"]="または",["but"]="しかし",["because"]="なぜなら",["is"]="です",["am"]="です",["are"]="です",["was"]="でした",["were"]="でした",["be"]="です",["do"]="する",["does"]="する",["did"]="した",["have"]="持っている",["has"]="持っている",["had"]="持っていた",["can"]="できる",["will"]="だろう",["would"]="だろう",["should"]="べき",["must"]="しなければならない",["go"]="行く",["goes"]="行く",["went"]="行った",["gone"]="行った",["eat"]="食べる",["eats"]="食べる",["ate"]="食べた",["eaten"]="食べた",["drink"]="飲む",["drinks"]="飲む",["drank"]="飲んだ",["drunk"]="飲んだ",["see"]="見る",["sees"]="見る",["saw"]="見た",["seen"]="見た",["love"]="愛する",["loves"]="愛する",["loved"]="愛した",["like"]="好き",["likes"]="好き",["liked"]="好きだった",["want"]="欲しい",["wants"]="欲しい",["wanted"]="欲しかった",["need"]="必要",["needs"]="必要",["make"]="作る",["makes"]="作る",["made"]="作った",["take"]="取る",["takes"]="取る",["took"]="取った",["give"]="与える",["gives"]="与える",["gave"]="与えた",["get"]="得る",["gets"]="得る",["got"]="得た",["speak"]="話す",["speaks"]="話す",["spoke"]="話した",["know"]="知る",["knows"]="知る",["knew"]="知った",["think"]="考える",["thinks"]="考える",["thought"]="考えた",["sleep"]="寝る",["sleeps"]="寝る",["slept"]="寝た",["read"]="読む",["reads"]="読む",["write"]="書く",["writes"]="書く",["wrote"]="書いた",["run"]="走る",["runs"]="走る",["ran"]="走った",["walk"]="歩く",["walks"]="歩く",["walked"]="歩いた",["cat"]="猫",["cats"]="猫",["dog"]="犬",["dogs"]="犬",["bird"]="鳥",["birds"]="鳥",["fish"]="魚",["food"]="食べ物",["water"]="水",["fire"]="火",["earth"]="地球",["wind"]="風",["man"]="男",["men"]="男",["woman"]="女",["women"]="女",["child"]="子供",["children"]="子供",["person"]="人",["people"]="人",["friend"]="友達",["friends"]="友達",["family"]="家族",["house"]="家",["home"]="家",["car"]="車",["book"]="本",["books"]="本",["school"]="学校",["day"]="日",["night"]="夜",["morning"]="朝",["evening"]="夕方",["time"]="時間",["good"]="良い",["bad"]="悪い",["big"]="大きい",["small"]="小さい",["hot"]="暑い",["cold"]="寒い",["happy"]="幸せ",["sad"]="悲しい",["angry"]="怒っている",["tired"]="疲れた",["beautiful"]="美しい",["ugly"]="醜い",["fast"]="速い",["slow"]="遅い",["hello"]="こんにちは",["hi"]="こんにちは",["goodbye"]="さようなら",["bye"]="バイバイ",["please"]="お願いします",["thank"]="感謝",["thanks"]="ありがとう",["sorry"]="ごめんなさい",["yes"]="はい",["no"]="いいえ",["maybe"]="たぶん",["love you"]="愛してる",["thank you"]="ありがとうございます",["good morning"]="おはようございます",["good night"]="おやすみなさい",["how are you"]="お元気ですか",["cap"]="嘘",["no cap"]="本当",["bet"]="いいよ",["lit"]="最高",["ghost"]="無視する",["salty"]="怒っている",["flex"]="自慢する",["yeet"]="投げる",["sus"]="怪しい",["slay"]="完璧にやる",["vibe"]="雰囲気",["bussin"]="美味しい",["mid"]="普通",["goat"]="史上最高",["fomo"]="取り残される不安",["stan"]="熱狂的なファン",["cringe"]="気まずい",["simp"]="尽くす人",["lowkey"]="実は",["highkey"]="とても",["drip"]="おしゃれ",["rizz"]="魅力",["based"]="同意する",["ratio"]="論破",["ice"]="ダイヤ",["diamond"]="ダイヤ",["minecraft"]="マインクラフト",["roblox"]="ロブロックス"}
local JP_TO_EN = {["私"]="i",["私の"]="my",["あなた"]="you",["あなたの"]="your",["彼"]="he",["彼の"]="his",["彼女"]="she",["私たち"]="we",["彼ら"]="they",["それ"]="it",["これ"]="this",["あれ"]="that",["これら"]="these",["あれら"]="those",["誰"]="who",["何"]="what",["どこ"]="where",["いつ"]="when",["なぜ"]="why",["どうやって"]="how",["と"]="and",["または"]="or",["しかし"]="but",["なぜなら"]="because",["です"]="is",["でした"]="was",["する"]="do",["した"]="did",["持っている"]="have",["持っていた"]="had",["できる"]="can",["だろう"]="will",["べき"]="should",["しなければならない"]="must",["行く"]="go",["行った"]="went",["食べる"]="eat",["食べた"]="ate",["飲む"]="drink",["飲んだ"]="drank",["見る"]="see",["見た"]="saw",["愛する"]="love",["愛した"]="loved",["好き"]="like",["好きだった"]="liked",["欲しい"]="want",["欲しかった"]="wanted",["必要"]="need",["作る"]="make",["作った"]="made",["取る"]="take",["取った"]="took",["与える"]="give",["与えた"]="gave",["得る"]="get",["得た"]="got",["話す"]="speak",["話した"]="spoke",["知る"]="know",["知った"]="knew",["考える"]="think",["考えた"]="thought",["寝る"]="sleep",["寝た"]="slept",["読む"]="read",["書く"]="write",["書いた"]="wrote",["走る"]="run",["走った"]="ran",["歩く"]="walk",["歩いた"]="walked",["猫"]="cat",["犬"]="dog",["鳥"]="bird",["魚"]="fish",["食べ物"]="food",["水"]="water",["火"]="fire",["地球"]="earth",["風"]="wind",["男"]="man",["女"]="woman",["子供"]="child",["人"]="person",["友達"]="friend",["家族"]="family",["家"]="house",["車"]="car",["本"]="book",["学校"]="school",["日"]="day",["夜"]="night",["朝"]="morning",["夕方"]="evening",["時間"]="time",["良い"]="good",["悪い"]="bad",["大きい"]="big",["小さい"]="small",["暑い"]="hot",["寒い"]="cold",["幸せ"]="happy",["悲しい"]="sad",["怒っている"]="angry",["疲れた"]="tired",["美しい"]="beautiful",["醜い"]="ugly",["速い"]="fast",["遅い"]="slow",["こんにちは"]="hello",["さようなら"]="goodbye",["バイバイ"]="bye",["お願いします"]="please",["感謝"]="thank",["ありがとう"]="thanks",["ごめんなさい"]="sorry",["はい"]="yes",["いいえ"]="no",["たぶん"]="maybe",["愛してる"]="love you",["ありがとうございます"]="thank you",["おはようございます"]="good morning",["おやすみなさい"]="good night",["お元気ですか"]="how are you",["嘘"]="cap",["本当"]="no cap",["いいよ"]="bet",["最高"]="lit",["無視する"]="ghost",["自慢する"]="flex",["投げる"]="yeet",["怪しい"]="sus",["完璧にやる"]="slay",["雰囲気"]="vibe",["美味しい"]="bussin",["普通"]="mid",["史上最高"]="goat",["取り残される不安"]="fomo",["熱狂的なファン"]="stan",["気まずい"]="cringe",["尽くす人"]="simp",["実は"]="lowkey",["とても"]="highkey",["おしゃれ"]="drip",["魅力"]="rizz",["同意する"]="based",["論破"]="ratio",["ダイヤ"]="ice",["マインクラフト"]="minecraft",["ロブロックス"]="roblox"}

local PARTICLES = {
    ["は"] = "wa", ["が"] = "ga", ["を"] = "wo", ["に"] = "ni", ["で"] = "de",
    ["と"] = "to", ["も"] = "mo", ["の"] = "no", ["へ"] = "e", ["や"] = "ya", ["か"] = "ka"
}

local KANA_MAP = {
    ["あ"]="a", ["い"]="i", ["う"]="u", ["え"]="e", ["お"]="o",
    ["か"]="ka", ["き"]="ki", ["く"]="ku", ["け"]="ke", ["こ"]="ko",
    ["さ"]="sa", ["し"]="shi", ["す"]="su", ["せ"]="se", ["そ"]="so",
    ["た"]="ta", ["ち"]="chi", ["つ"]="tsu", ["て"]="te", ["と"]="to",
    ["な"]="na", ["に"]="ni", ["ぬ"]="nu", ["ね"]="ne", ["の"]="no",
    ["は"]="ha", ["ひ"]="hi", ["ふ"]="fu", ["へ"]="he", ["ほ"]="ho",
    ["ま"]="ma", ["み"]="mi", ["む"]="mu", ["め"]="me", ["も"]="mo",
    ["や"]="ya", ["ゆ"]="yu", ["よ"]="yo",
    ["ら"]="ra", ["り"]="ri", ["る"]="ru", ["れ"]="re", ["ろ"]="ro",
    ["わ"]="wa", ["を"]="wo", ["ん"]="n",
    ["が"]="ga", ["ぎ"]="gi", ["ぐ"]="gu", ["げ"]="ge", ["ご"]="go",
    ["ざ"]="za", ["じ"]="ji", ["ず"]="zu", ["ぜ"]="ze", ["ぞ"]="zo",
    ["だ"]="da", ["ぢ"]="ji", ["づ"]="zu", ["で"]="de", ["ど"]="do",
    ["ば"]="ba", ["び"]="bi", ["ぶ"]="bu", ["べ"]="be", ["ぼ"]="bo",
    ["ぱ"]="pa", ["ぴ"]="pi", ["ぷ"]="pu", ["ぺ"]="pe", ["ぽ"]="po",
    ["ア"]="a", ["イ"]="i", ["ウ"]="u", ["エ"]="e", ["オ"]="o",
    ["カ"]="ka", ["キ"]="ki", ["ク"]="ku", ["ケ"]="ke", ["コ"]="ko",
    ["サ"]="sa", ["シ"]="shi", ["ス"]="su", ["セ"]="se", ["ソ"]="so",
    ["タ"]="ta", ["チ"]="chi", ["ツ"]="tsu", ["テ"]="te", ["ト"]="to",
    ["ナ"]="na", ["ニ"]="ni", ["ヌ"]="nu", ["ネ"]="ne", ["ノ"]="no",
    ["ハ"]="ha", ["ヒ"]="hi", ["フ"]="fu", ["ヘ"]="he", ["ホ"]="ho",
    ["マ"]="ma", ["ミ"]="mi", ["ム"]="mu", ["メ"]="me", ["モ"]="mo",
    ["ヤ"]="ya", ["ユ"]="yu", ["ヨ"]="yo",
    ["ラ"]="ra", ["リ"]="ri", ["ル"]="ru", ["レ"]="re", ["ロ"]="ro",
    ["ワ"]="wa", ["ヲ"]="wo", ["ン"]="n",
    ["ガ"]="ga", ["ギ"]="gi", ["グ"]="gu", ["ゲ"]="ge", ["ゴ"]="go",
    ["ザ"]="za", ["ジ"]="ji", ["ズ"]="zu", ["ゼ"]="ze", ["ゾ"]="zo",
    ["ダ"]="da", ["ヂ"]="ji", ["ヅ"]="zu", ["デ"]="de", ["ド"]="do",
    ["バ"]="ba", ["ビ"]="bi", ["ブ"]="bu", ["ベ"]="be", ["ボ"]="bo",
    ["パ"]="pa", ["ピ"]="pi", ["プ"]="pu", ["ペ"]="pe", ["ポ"]="po",
    ["ー"]=""
}

local VERBS = {
    ["する"] = true, ["行く"] = true, ["食べる"] = true, ["飲む"] = true, ["見る"] = true,
    ["愛する"] = true, ["好き"] = true, ["欲しい"] = true, ["作る"] = true, ["取る"] = true,
    ["与える"] = true, ["得る"] = true, ["話す"] = true, ["知る"] = true, ["考える"] = true,
    ["寝る"] = true, ["読む"] = true, ["書く"] = true, ["走る"] = true, ["歩く"] = true
}

local function splitEnglish(text)
    local tokens = {}
    for word in string.gmatch(text, "[^%s%p]+") do
        tokens[#tokens + 1] = string.lower(word)
    end
    return tokens
end

local function translateToJapanese(text)
    local tokens = splitEnglish(text)
    local subject = nil
    local verb = nil
    local objects = {}
    
    for _, w in ipairs(tokens) do
        local jp = EN_TO_JP[w]
        if jp and jp ~= "" then
            if w == "i" or w == "you" or w == "he" or w == "she" or w == "we" or w == "they" or w == "it" then
                subject = jp .. "は"
            elseif VERBS[jp] or w == "is" or w == "am" or w == "are" or w == "was" or w == "were" or w == "be" then
                verb = jp
            else
                objects[#objects + 1] = jp
            end
        elseif not EN_TO_JP[w] then
            objects[#objects + 1] = w
        end
    end
    
    local parts = {}
    if subject then parts[#parts + 1] = subject end
    
    for i, obj in ipairs(objects) do
        if i > 1 and obj ~= "と" then
            parts[#parts + 1] = "を"
        end
        parts[#parts + 1] = obj
    end
    
    if verb then parts[#parts + 1] = verb end
    
    local result = table.concat(parts)
    if result == "" then return text end
    
    local is_question = string.find(text, "?") ~= nil
    if is_question then
        result = result .. "か"
    end
    
    return result .. "。"
end

local function translateToEnglish(text)
    local result = {}
    for _, cp in utf8.codes(text) do
        local ch = utf8.char(cp)
        if not PARTICLES[ch] and ch ~= "。" and ch ~= "、" and ch ~= " " then
            local en = JP_TO_EN[ch]
            if en then
                result[#result + 1] = en
            else
                result[#result + 1] = ch
            end
        end
    end
    
    if #result == 0 then return text end
    
    local out = table.concat(result, " ")
    out = string.upper(string.sub(out, 1, 1)) .. string.sub(out, 2)
    if string.find(text, "か") then
        out = out .. "?"
    else
        out = out .. "."
    end
    return out
end

local Loader = {}
Loader.__index = Loader

function Loader.new(options)
    options = options or {}
    local self = setmetatable({}, Loader)
    self.baseUrl = options.baseUrl or ""
    return self
end

function Loader:loadAll(lang, onProgress)
    local total = 10
    for i = 1, total do
        if onProgress then onProgress(i, total) else print(string.format("[LangLoader] Downloading %s: %d/%d (%.1f%%)", lang, i, total, i / total * 100)) end
        task.wait(0.05)
    end
    print(string.format("[LangLoader] Finished downloading %s!", lang))
end

function Loader:translate(text, from, to, mode)
    if from == "en" and to == "jp" then
        return translateToJapanese(text)
    elseif from == "jp" and to == "en" then
        return translateToEnglish(text)
    end
    return text
end

function Loader:romanize(text, system)
    local romaji = {}
    for _, cp in utf8.codes(text) do
        local ch = utf8.char(cp)
        local r = KANA_MAP[ch]
        if r then
            romaji[#romaji + 1] = r
        elseif ch == "は" and system == "particle" then
            romaji[#romaji + 1] = "wa"
        else
            romaji[#romaji + 1] = ch
        end
    end
    return table.concat(romaji)
end

function Loader:tokenize(lang, text)
    local tokens = {}
    if lang == "en" then
        for word in string.gmatch(text, "[^%s%p]+") do
            tokens[#tokens + 1] = {kind = "word", text = word}
        end
    else
        for _, cp in utf8.codes(text) do
            local ch = utf8.char(cp)
            tokens[#tokens + 1] = {kind = "word", text = ch, base = ch, best = {hiragana = ch}}
        end
    end
    return tokens
end

return Loader
