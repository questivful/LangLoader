local LangLoader = {}
LangLoader.__index = LangLoader

local DICT = {}

local function add(t)
  for k, v in pairs(t) do DICT[k] = v end
end

add({
["hello"]={ja="こんにちは",type="greeting"},["hi"]={ja="やあ",type="greeting"},["hey"]={ja="やあ",type="greeting"},
["goodbye"]={ja="さようなら",type="greeting"},["bye"]={ja="バイバイ",type="greeting"},["thanks"]={ja="ありがとう",type="greeting"},
["thank"]={ja="ありがとう",type="greeting"},["please"]={ja="お願いします",type="greeting"},["yes"]={ja="はい",type="greeting"},
["no"]={ja="いいえ",type="greeting"},["sorry"]={ja="ごめんなさい",type="greeting"},["welcome"]={ja="ようこそ",type="greeting"},
["congratulations"]={ja="おめでとう",type="greeting"},["goodnight"]={ja="おやすみ",type="greeting"},
["i"]={ja="私",type="pronoun"},["me"]={ja="私",type="pronoun"},["you"]={ja="あなた",type="pronoun"},
["he"]={ja="彼",type="pronoun"},["she"]={ja="彼女",type="pronoun"},["it"]={ja="それ",type="pronoun"},
["we"]={ja="私たち",type="pronoun"},["us"]={ja="私たち",type="pronoun"},["they"]={ja="彼ら",type="pronoun"},
["them"]={ja="彼ら",type="pronoun"},["myself"]={ja="自分",type="pronoun"},["yourself"]={ja="自分",type="pronoun"},
["my"]={ja="私の",type="possessive"},["your"]={ja="あなたの",type="possessive"},["his"]={ja="彼の",type="possessive"},
["her"]={ja="彼女の",type="possessive"},["its"]={ja="それの",type="possessive"},["our"]={ja="私たちの",type="possessive"},
["their"]={ja="彼らの",type="possessive"},["a"]={ja="",type="article"},["an"]={ja="",type="article"},["the"]={ja="",type="article"},
["this"]={ja="これ",type="demonstrative"},["that"]={ja="あれ",type="demonstrative"},["these"]={ja="これら",type="demonstrative"},
["those"]={ja="あれら",type="demonstrative"},["here"]={ja="ここ",type="demonstrative"},["there"]={ja="そこ",type="demonstrative"},
["am"]={ja="です",type="copula",tense="present"},["is"]={ja="です",type="copula",tense="present"},
["are"]={ja="です",type="copula",tense="present"},["was"]={ja="でした",type="copula",tense="past"},
["were"]={ja="でした",type="copula",tense="past"},["be"]={ja="です",type="copula",tense="present"},
["been"]={ja="でした",type="copula",tense="past"},
["will"]={ja="",type="modal",modal="future"},["would"]={ja="",type="modal",modal="would"},
["can"]={ja="",type="modal",modal="can"},["could"]={ja="",type="modal",modal="could"},
["should"]={ja="",type="modal",modal="should"},["must"]={ja="",type="modal",modal="must"},
["may"]={ja="",type="modal",modal="may"},["might"]={ja="",type="modal",modal="might"},
["do"]={ja="",type="aux",aux="do"},["does"]={ja="",type="aux",aux="do"},["did"]={ja="",type="aux",aux="past"},
["not"]={ja="",type="aux_neg"},["don't"]={ja="",type="aux_neg"},["doesn't"]={ja="",type="aux_neg"},
["didn't"]={ja="",type="aux_neg"},["can't"]={ja="",type="aux_neg"},["won't"]={ja="",type="aux_neg"},
["have"]={ja="持つ",type="verb",vt="godan"},["has"]={ja="持つ",type="verb",vt="godan"},
["had"]={ja="持つ",type="verb",vt="godan",past=true},
["what"]={ja="何",type="question"},["who"]={ja="誰",type="question"},["where"]={ja="どこ",type="question"},
["when"]={ja="いつ",type="question"},["why"]={ja="なぜ",type="question"},["how"]={ja="どう",type="question"},
["which"]={ja="どれ",type="question"},
["and"]={ja="と",type="conjunction"},["but"]={ja="しかし",type="conjunction"},["or"]={ja="または",type="conjunction"},
["because"]={ja="なぜなら",type="conjunction"},["so"]={ja="だから",type="conjunction"},
["if"]={ja="もし",type="conjunction"},["while"]={ja="間",type="conjunction"},["although"]={ja="けれども",type="conjunction"},
["than"]={ja="より",type="conjunction"},["then"]={ja="そして",type="conjunction"},
["in"]={ja="に",type="preposition"},["on"]={ja="の上に",type="preposition"},["at"]={ja="で",type="preposition"},
["to"]={ja="に",type="preposition"},["from"]={ja="から",type="preposition"},["with"]={ja="と",type="preposition"},
["without"]={ja="なしで",type="preposition"},["for"]={ja="のために",type="preposition"},["of"]={ja="の",type="preposition"},
["by"]={ja="によって",type="preposition"},["about"]={ja="について",type="preposition"},["under"]={ja="の下に",type="preposition"},
["over"]={ja="の上に",type="preposition"},["between"]={ja="の間に",type="preposition"},["near"]={ja="の近くに",type="preposition"},
["behind"]={ja="の後ろに",type="preposition"},["before"]={ja="の前に",type="preposition"},["after"]={ja="の後に",type="preposition"},
["during"]={ja="の間に",type="preposition"},["through"]={ja="を通って",type="preposition"},
["very"]={ja="とても",type="adverb"},["really"]={ja="本当に",type="adverb"},["always"]={ja="いつも",type="adverb"},
["never"]={ja="決して",type="adverb"},["sometimes"]={ja="時々",type="adverb"},["often"]={ja="よく",type="adverb"},
["now"]={ja="今",type="adverb"},["today"]={ja="今日",type="adverb"},["tomorrow"]={ja="明日",type="adverb"},
["yesterday"]={ja="昨日",type="adverb"},["soon"]={ja="すぐに",type="adverb"},["later"]={ja="後で",type="adverb"},
["already"]={ja="もう",type="adverb"},["still"]={ja="まだ",type="adverb"},["also"]={ja="も",type="adverb"},
["too"]={ja="も",type="adverb"},["only"]={ja="だけ",type="adverb"},["again"]={ja="また",type="adverb"},
["together"]={ja="一緒に",type="adverb"},["quickly"]={ja="速く",type="adverb"},["slowly"]={ja="ゆっくり",type="adverb"},
["well"]={ja="よく",type="adverb"},["badly"]={ja="悪く",type="adverb"},["maybe"]={ja="多分",type="adverb"},
["perhaps"]={ja="おそらく",type="adverb"},["almost"]={ja="ほとんど",type="adverb"},["enough"]={ja="十分",type="adverb"},
["one"]={ja="一",type="number"},["two"]={ja="二",type="number"},["three"]={ja="三",type="number"},
["four"]={ja="四",type="number"},["five"]={ja="五",type="number"},["six"]={ja="六",type="number"},
["seven"]={ja="七",type="number"},["eight"]={ja="八",type="number"},["nine"]={ja="九",type="number"},
["ten"]={ja="十",type="number"},["hundred"]={ja="百",type="number"},["thousand"]={ja="千",type="number"},
["first"]={ja="最初",type="number"},["last"]={ja="最後",type="number"},["many"]={ja="多い",type="i_adj"},
["much"]={ja="多い",type="i_adj"},["few"]={ja="少ない",type="i_adj"},["some"]={ja="いくつか",type="determiner"},
["all"]={ja="全部",type="determiner"},["every"]={ja="毎",type="determiner"},["each"]={ja="それぞれ",type="determiner"},
["other"]={ja="他の",type="determiner"},["another"]={ja="他の",type="determiner"},["same"]={ja="同じ",type="na_adj"},
["different"]={ja="違う",type="i_adj"},
["person"]={ja="人",type="noun"},["people"]={ja="人々",type="noun"},["man"]={ja="男",type="noun"},
["woman"]={ja="女",type="noun"},["boy"]={ja="男の子",type="noun"},["girl"]={ja="女の子",type="noun"},
["child"]={ja="子供",type="noun"},["children"]={ja="子供たち",type="noun"},["baby"]={ja="赤ちゃん",type="noun"},
["adult"]={ja="大人",type="noun"},["friend"]={ja="友達",type="noun"},["family"]={ja="家族",type="noun"},
["mother"]={ja="母",type="noun"},["father"]={ja="父",type="noun"},["parent"]={ja="親",type="noun"},
["brother"]={ja="兄",type="noun"},["sister"]={ja="姉",type="noun"},["son"]={ja="息子",type="noun"},
["daughter"]={ja="娘",type="noun"},["grandmother"]={ja="祖母",type="noun"},["grandfather"]={ja="祖父",type="noun"},
["husband"]={ja="夫",type="noun"},["wife"]={ja="妻",type="noun"},["neighbor"]={ja="隣人",type="noun"},
["teacher"]={ja="先生",type="noun"},["student"]={ja="学生",type="noun"},["doctor"]={ja="医者",type="noun"},
["nurse"]={ja="看護師",type="noun"},["police"]={ja="警察",type="noun"},["chef"]={ja="シェフ",type="noun"},
["driver"]={ja="運転手",type="noun"},["worker"]={ja="労働者",type="noun"},["boss"]={ja="上司",type="noun"},
["customer"]={ja="お客さん",type="noun"},["guest"]={ja="客",type="noun"},["stranger"]={ja="見知らぬ人",type="noun"},
["animal"]={ja="動物",type="noun"},["cat"]={ja="猫",type="noun"},["dog"]={ja="犬",type="noun"},
["bird"]={ja="鳥",type="noun"},["fish"]={ja="魚",type="noun"},["horse"]={ja="馬",type="noun"},
["cow"]={ja="牛",type="noun"},["pig"]={ja="豚",type="noun"},["sheep"]={ja="羊",type="noun"},
["mouse"]={ja="鼠",type="noun"},["rabbit"]={ja="兎",type="noun"},["tiger"]={ja="虎",type="noun"},
["lion"]={ja="ライオン",type="noun"},["bear"]={ja="熊",type="noun"},["wolf"]={ja="狼",type="noun"},
["fox"]={ja="狐",type="noun"},["deer"]={ja="鹿",type="noun"},["monkey"]={ja="猿",type="noun"},
["elephant"]={ja="象",type="noun"},["snake"]={ja="蛇",type="noun"},["insect"]={ja="虫",type="noun"},
["home"]={ja="家",type="noun"},["house"]={ja="家",type="noun"},["room"]={ja="部屋",type="noun"},
["door"]={ja="ドア",type="noun"},["window"]={ja="窓",type="noun"},["wall"]={ja="壁",type="noun"},
["floor"]={ja="床",type="noun"},["roof"]={ja="屋根",type="noun"},["garden"]={ja="庭",type="noun"},
["kitchen"]={ja="台所",type="noun"},["bathroom"]={ja="お風呂",type="noun"},["bedroom"]={ja="寝室",type="noun"},
["table"]={ja="テーブル",type="noun"},["chair"]={ja="椅子",type="noun"},["bed"]={ja="ベッド",type="noun"},
["sofa"]={ja="ソファ",type="noun"},["desk"]={ja="机",type="noun"},["shelf"]={ja="棚",type="noun"},
["lamp"]={ja="ランプ",type="noun"},["clock"]={ja="時計",type="noun"},["mirror"]={ja="鏡",type="noun"},
["car"]={ja="車",type="noun"},["bus"]={ja="バス",type="noun"},["train"]={ja="電車",type="noun"},
["plane"]={ja="飛行機",type="noun"},["boat"]={ja="ボート",type="noun"},["ship"]={ja="船",type="noun"},
["bike"]={ja="自転車",type="noun"},["motorcycle"]={ja="バイク",type="noun"},["truck"]={ja="トラック",type="noun"},
["taxi"]={ja="タクシー",type="noun"},["road"]={ja="道",type="noun"},["street"]={ja="通り",type="noun"},
["city"]={ja="都市",type="noun"},["town"]={ja="町",type="noun"},["village"]={ja="村",type="noun"},
["country"]={ja="国",type="noun"},["world"]={ja="世界",type="noun"},["earth"]={ja="地球",type="noun"},
["sky"]={ja="空",type="noun"},["sun"]={ja="太陽",type="noun"},["moon"]={ja="月",type="noun"},
["star"]={ja="星",type="noun"},["cloud"]={ja="雲",type="noun"},["rain"]={ja="雨",type="noun"},
["snow"]={ja="雪",type="noun"},["wind"]={ja="風",type="noun"},["storm"]={ja="嵐",type="noun"},
["fire"]={ja="火",type="noun"},["water"]={ja="水",type="noun"},["ice"]={ja="氷",type="noun"},
["air"]={ja="空気",type="noun"},["light"]={ja="光",type="noun"},["dark"]={ja="暗闇",type="noun"},
["tree"]={ja="木",type="noun"},["flower"]={ja="花",type="noun"},["grass"]={ja="草",type="noun"},
["leaf"]={ja="葉",type="noun"},["root"]={ja="根",type="noun"},["seed"]={ja="種",type="noun"},
["mountain"]={ja="山",type="noun"},["river"]={ja="川",type="noun"},["lake"]={ja="湖",type="noun"},
["sea"]={ja="海",type="noun"},["ocean"]={ja="海洋",type="noun"},["beach"]={ja="浜辺",type="noun"},
["forest"]={ja="森",type="noun"},["field"]={ja="野原",type="noun"},["island"]={ja="島",type="noun"},
["stone"]={ja="石",type="noun"},["sand"]={ja="砂",type="noun"},["ground"]={ja="地面",type="noun"},
["school"]={ja="学校",type="noun"},["university"]={ja="大学",type="noun"},["library"]={ja="図書館",type="noun"},
["hospital"]={ja="病院",type="noun"},["store"]={ja="店",type="noun"},["shop"]={ja="店",type="noun"},
["market"]={ja="市場",type="noun"},["restaurant"]={ja="レストラン",type="noun"},["hotel"]={ja="ホテル",type="noun"},
["bank"]={ja="銀行",type="noun"},["church"]={ja="教会",type="noun"},["temple"]={ja="寺",type="noun"},
["station"]={ja="駅",type="noun"},["airport"]={ja="空港",type="noun"},["office"]={ja="事務所",type="noun"},
["factory"]={ja="工場",type="noun"},["farm"]={ja="農場",type="noun"},["park"]={ja="公園",type="noun"},
["museum"]={ja="博物館",type="noun"},["theater"]={ja="劇場",type="noun"},["cinema"]={ja="映画館",type="noun"},
["book"]={ja="本",type="noun"},["pen"]={ja="ペン",type="noun"},["pencil"]={ja="鉛筆",type="noun"},
["paper"]={ja="紙",type="noun"},["letter"]={ja="手紙",type="noun"},["word"]={ja="言葉",type="noun"},
["language"]={ja="言語",type="noun"},["story"]={ja="物語",type="noun"},["news"]={ja="ニュース",type="noun"},
["name"]={ja="名前",type="noun"},["number"]={ja="番号",type="noun"},["question"]={ja="質問",type="noun"},
["answer"]={ja="答え",type="noun"},["idea"]={ja="考え",type="noun"},["thought"]={ja="思考",type="noun"},
["dream"]={ja="夢",type="noun"},["hope"]={ja="希望",type="noun"},["love"]={ja="愛",type="noun"},
["life"]={ja="命",type="noun"},["death"]={ja="死",type="noun"},["health"]={ja="健康",type="noun"},
["money"]={ja="お金",type="noun"},["gold"]={ja="金",type="noun"},["silver"]={ja="銀",type="noun"},
["job"]={ja="仕事",type="noun"},["work"]={ja="仕事",type="noun"},["game"]={ja="ゲーム",type="noun"},
["sport"]={ja="スポーツ",type="noun"},["music"]={ja="音楽",type="noun"},["song"]={ja="歌",type="noun"},
["dance"]={ja="踊り",type="noun"},["movie"]={ja="映画",type="noun"},["picture"]={ja="写真",type="noun"},
["art"]={ja="芸術",type="noun"},["color"]={ja="色",type="noun"},["shape"]={ja="形",type="noun"},
["food"]={ja="食べ物",type="noun"},["drink"]={ja="飲み物",type="noun"},["milk"]={ja="牛乳",type="noun"},
["coffee"]={ja="コーヒー",type="noun"},["tea"]={ja="お茶",type="noun"},["juice"]={ja="ジュース",type="noun"},
["wine"]={ja="ワイン",type="noun"},["beer"]={ja="ビール",type="noun"},["bread"]={ja="パン",type="noun"},
["rice"]={ja="ご飯",type="noun"},["meat"]={ja="肉",type="noun"},["fruit"]={ja="果物",type="noun"},
["apple"]={ja="りんご",type="noun"},["orange"]={ja="オレンジ",type="noun"},["banana"]={ja="バナナ",type="noun"},
["grape"]={ja="ぶどう",type="noun"},["lemon"]={ja="レモン",type="noun"},["vegetable"]={ja="野菜",type="noun"},
["potato"]={ja="じゃがいも",type="noun"},["tomato"]={ja="トマト",type="noun"},["egg"]={ja="卵",type="noun"},
["cheese"]={ja="チーズ",type="noun"},["salt"]={ja="塩",type="noun"},["sugar"]={ja="砂糖",type="noun"},
["breakfast"]={ja="朝ご飯",type="noun"},["lunch"]={ja="昼ご飯",type="noun"},["dinner"]={ja="晩ご飯",type="noun"},
["day"]={ja="日",type="noun"},["night"]={ja="夜",type="noun"},["morning"]={ja="朝",type="noun"},
["evening"]={ja="夕方",type="noun"},["afternoon"]={ja="午後",type="noun"},["time"]={ja="時間",type="noun"},
["year"]={ja="年",type="noun"},["month"]={ja="月",type="noun"},["week"]={ja="週",type="noun"},
["hour"]={ja="時間",type="noun"},["minute"]={ja="分",type="noun"},["second"]={ja="秒",type="noun"},
["moment"]={ja="瞬間",type="noun"},["age"]={ja="年齢",type="noun"},["head"]={ja="頭",type="noun"},
["face"]={ja="顔",type="noun"},["eye"]={ja="目",type="noun"},["ear"]={ja="耳",type="noun"},
["nose"]={ja="鼻",type="noun"},["mouth"]={ja="口",type="noun"},["tooth"]={ja="歯",type="noun"},
["tongue"]={ja="舌",type="noun"},["neck"]={ja="首",type="noun"},["shoulder"]={ja="肩",type="noun"},
["arm"]={ja="腕",type="noun"},["hand"]={ja="手",type="noun"},["finger"]={ja="指",type="noun"},
["finger"]={ja="指",type="noun"},["leg"]={ja="脚",type="noun"},["foot"]={ja="足",type="noun"},
["knee"]={ja="膝",type="noun"},["back"]={ja="背中",type="noun"},["chest"]={ja="胸",type="noun"},
["stomach"]={ja="お腹",type="noun"},["heart"]={ja="心臓",type="noun"},["blood"]={ja="血",type="noun"},
["bone"]={ja="骨",type="noun"},["skin"]={ja="皮膚",type="noun"},["hair"]={ja="髪",type="noun"},
["body"]={ja="体",type="noun"},["mind"]={ja="心",type="noun"},["voice"]={ja="声",type="noun"},
["sound"]={ja="音",type="noun"},["smell"]={ja="匂い",type="noun"},["taste"]={ja="味",type="noun"},
["clothes"]={ja="服",type="noun"},["shirt"]={ja="シャツ",type="noun"},["pants"]={ja="ズボン",type="noun"},
["dress"]={ja="ドレス",type="noun"},["skirt"]={ja="スカート",type="noun"},["shoe"]={ja="靴",type="noun"},
["hat"]={ja="帽子",type="noun"},["coat"]={ja="コート",type="noun"},["bag"]={ja="鞄",type="noun"},
["key"]={ja="鍵",type="noun"},["box"]={ja="箱",type="noun"},["bottle"]={ja="ボトル",type="noun"},
["cup"]={ja="カップ",type="noun"},["plate"]={ja="皿",type="noun"},["knife"]={ja="ナイフ",type="noun"},
["fork"]={ja="フォーク",type="noun"},["spoon"]={ja="スプーン",type="noun"},["bowl"]={ja="ボウル",type="noun"},
["computer"]={ja="コンピューター",type="noun"},["phone"]={ja="電話",type="noun"},["television"]={ja="テレビ",type="noun"},
["camera"]={ja="カメラ",type="noun"},["radio"]={ja="ラジオ",type="noun"},["machine"]={ja="機械",type="noun"},
["tool"]={ja="道具",type="noun"},["weapon"]={ja="武器",type="noun"},["gun"]={ja="銃",type="noun"},
["sword"]={ja="剣",type="noun"},["stone"]={ja="石",type="noun"},["wood"]={ja="木",type="noun"},
["metal"]={ja="金属",type="noun"},["glass"]={ja="ガラス",type="noun"},["plastic"]={ja="プラスチック",type="noun"},
["metal"]={ja="金属",type="noun"},
["big"]={ja="大きい",type="i_adj"},["small"]={ja="小さい",type="i_adj"},["long"]={ja="長い",type="i_adj"},
["short"]={ja="短い",type="i_adj"},["tall"]={ja="高い",type="i_adj"},["hot"]={ja="暑い",type="i_adj"},
["warm"]={ja="暖かい",type="i_adj"},["cold"]={ja="寒い",type="i_adj"},["cool"]={ja="涼しい",type="i_adj"},
["new"]={ja="新しい",type="i_adj"},["old"]={ja="古い",type="i_adj"},["young"]={ja="若い",type="i_adj"},
["good"]={ja="良い",type="i_adj"},["bad"]={ja="悪い",type="i_adj"},["nice"]={ja="素敵",type="na_adj"},
["beautiful"]={ja="美しい",type="i_adj"},["pretty"]={ja="綺麗",type="na_adj"},["ugly"]={ja="醜い",type="i_adj"},
["happy"]={ja="幸せ",type="na_adj"},["sad"]={ja="悲しい",type="i_adj"},["angry"]={ja="怒っている",type="i_adj"},
["tired"]={ja="疲れた",type="i_adj"},["hungry"]={ja="お腹が空いた",type="i_adj"},["thirsty"]={ja="喉が渇いた",type="i_adj"},
["fast"]={ja="速い",type="i_adj"},["slow"]={ja="遅い",type="i_adj"},["easy"]={ja="簡単",type="na_adj"},
["hard"]={ja="難しい",type="i_adj"},["difficult"]={ja="難しい",type="i_adj"},["simple"]={ja="簡単",type="na_adj"},
["important"]={ja="大切",type="na_adj"},["interesting"]={ja="面白い",type="i_adj"},["boring"]={ja="つまらない",type="i_adj"},
["fun"]={ja="楽しい",type="i_adj"},["funny"]={ja="面白い",type="i_adj"},["serious"]={ja="真面目",type="na_adj"},
["strong"]={ja="強い",type="i_adj"},["weak"]={ja="弱い",type="i_adj"},["rich"]={ja="豊か",type="na_adj"},
["poor"]={ja="貧しい",type="i_adj"},["clean"]={ja="きれい",type="na_adj"},["dirty"]={ja="汚い",type="i_adj"},
["full"]={ja="いっぱい",type="na_adj"},["empty"]={ja="空っぽ",type="na_adj"},["open"]={ja="開いている",type="i_adj"},
["closed"]={ja="閉まっている",type="i_adj"},["true"]={ja="本当",type="na_adj"},["false"]={ja="偽り",type="noun"},
["free"]={ja="自由",type="na_adj"},["busy"]={ja="忙しい",type="i_adj"},["quiet"]={ja="静か",type="na_adj"},
["loud"]={ja="うるさい",type="i_adj"},["safe"]={ja="安全",type="na_adj"},["dangerous"]={ja="危険",type="na_adj"},
["famous"]={ja="有名",type="na_adj"},["popular"]={ja="人気",type="na_adj"},["possible"]={ja="可能",type="na_adj"},
["impossible"]={ja="不可能",type="na_adj"},["necessary"]={ja="必要",type="na_adj"},["ready"]={ja="準備ができた",type="i_adj"},
["red"]={ja="赤い",type="i_adj"},["blue"]={ja="青い",type="i_adj"},["green"]={ja="緑",type="i_adj"},
["yellow"]={ja="黄色い",type="i_adj"},["black"]={ja="黒い",type="i_adj"},["white"]={ja="白い",type="i_adj"},
["brown"]={ja="茶色い",type="i_adj"},["gray"]={ja="灰色",type="i_adj"},["purple"]={ja="紫",type="i_adj"},
["pink"]={ja="ピンク",type="na_adj"},["orange"]={ja="オレンジ",type="noun"},
["first"]={ja="最初",type="noun"},["second"]={ja="二番目",type="noun"},["third"]={ja="三番目",type="noun"},
["morning"]={ja="朝",type="noun"},["evening"]={ja="夕方",type="noun"},["night"]={ja="夜",type="noun"},
["sweet"]={ja="甘い",type="i_adj"},["sour"]={ja="酸っぱい",type="i_adj"},["bitter"]={ja="苦い",type="i_adj"},
["salty"]={ja="しょっぱい",type="i_adj"},["delicious"]={ja="美味しい",type="i_adj"},["tasty"]={ja="美味しい",type="i_adj"},
["spicy"]={ja="辛い",type="i_adj"},["deep"]={ja="深い",type="i_adj"},["shallow"]={ja="浅い",type="i_adj"},
["wide"]={ja="広い",type="i_adj"},["narrow"]={ja="狭い",type="i_adj"},["heavy"]={ja="重い",type="i_adj"},
["light"]={ja="軽い",type="i_adj"},["bright"]={ja="明るい",type="i_adj"},["dark"]={ja="暗い",type="i_adj"},
["right"]={ja="正しい",type="i_adj"},["wrong"]={ja="間違った",type="i_adj"},["early"]={ja="早い",type="i_adj"},
["late"]={ja="遅い",type="i_adj"},["near"]={ja="近い",type="i_adj"},["far"]={ja="遠い",type="i_adj"},
["cheap"]={ja="安い",type="i_adj"},["expensive"]={ja="高い",type="i_adj"},
["eat"]={ja="食べる",type="verb",vt="ichidan"},["drink"]={ja="飲む",type="verb",vt="godan"},
["have"]={ja="持つ",type="verb",vt="godan"},["go"]={ja="行く",type="verb",vt="godan",motion=true},
["come"]={ja="来る",type="verb",vt="kuru",motion=true},["see"]={ja="見る",type="verb",vt="ichidan"},
["look"]={ja="見る",type="verb",vt="ichidan"},["watch"]={ja="見る",type="verb",vt="ichidan"},
["read"]={ja="読む",type="verb",vt="godan"},["write"]={ja="書く",type="verb",vt="godan"},
["speak"]={ja="話す",type="verb",vt="godan"},["talk"]={ja="話す",type="verb",vt="godan"},
["say"]={ja="言う",type="verb",vt="godan"},["tell"]={ja="言う",type="verb",vt="godan"},
["listen"]={ja="聞く",type="verb",vt="godan"},["hear"]={ja="聞く",type="verb",vt="godan"},
["play"]={ja="遊ぶ",type="verb",vt="godan"},["run"]={ja="走る",type="verb",vt="godan"},
["walk"]={ja="歩く",type="verb",vt="godan"},["sleep"]={ja="寝る",type="verb",vt="ichidan"},
["wake"]={ja="起きる",type="verb",vt="ichidan"},["study"]={ja="勉強する",type="verb",vt="suru"},
["learn"]={ja="学ぶ",type="verb",vt="godan"},["teach"]={ja="教える",type="verb",vt="ichidan"},
["buy"]={ja="買う",type="verb",vt="godan"},["sell"]={ja="売る",type="verb",vt="godan"},
["make"]={ja="作る",type="verb",vt="godan"},["do"]={ja="する",type="verb",vt="suru"},
["give"]={ja="あげる",type="verb",vt="ichidan"},["take"]={ja="取る",type="verb",vt="godan"},
["get"]={ja="得る",type="verb",vt="ichidan"},["put"]={ja="置く",type="verb",vt="godan"},
["open"]={ja="開ける",type="verb",vt="ichidan"},["close"]={ja="閉める",type="verb",vt="ichidan"},
["start"]={ja="始める",type="verb",vt="ichidan"},["begin"]={ja="始まる",type="verb",vt="godan"},
["stop"]={ja="止める",type="verb",vt="ichidan"},["finish"]={ja="終わる",type="verb",vt="godan"},
["end"]={ja="終わる",type="verb",vt="godan"},["help"]={ja="助ける",type="verb",vt="ichidan"},
["find"]={ja="見つける",type="verb",vt="ichidan"},["lose"]={ja="負ける",type="verb",vt="ichidan"},
["know"]={ja="知る",type="verb",vt="godan"},["think"]={ja="思う",type="verb",vt="godan"},
["understand"]={ja="理解する",type="verb",vt="suru"},["remember"]={ja="覚える",type="verb",vt="ichidan"},
["forget"]={ja="忘れる",type="verb",vt="ichidan"},["feel"]={ja="感じる",type="verb",vt="ichidan"},
["live"]={ja="住む",type="verb",vt="godan"},["die"]={ja="死ぬ",type="verb",vt="godan"},
["smile"]={ja="笑う",type="verb",vt="godan"},["laugh"]={ja="笑う",type="verb",vt="godan"},
["cry"]={ja="泣く",type="verb",vt="godan"},["sing"]={ja="歌う",type="verb",vt="godan"},
["dance"]={ja="踊る",type="verb",vt="godan"},["draw"]={ja="描く",type="verb",vt="godan"},
["paint"]={ja="描く",type="verb",vt="godan"},["build"]={ja="建てる",type="verb",vt="ichidan"},
["break"]={ja="壊す",type="verb",vt="godan"},["fix"]={ja="直す",type="verb",vt="godan"},
["use"]={ja="使う",type="verb",vt="godan"},["try"]={ja="試す",type="verb",vt="godan"},
["ask"]={ja="聞く",type="verb",vt="godan"},["answer"]={ja="答える",type="verb",vt="ichidan"},
["call"]={ja="呼ぶ",type="verb",vt="godan"},["send"]={ja="送る",type="verb",vt="godan"},
["wait"]={ja="待つ",type="verb",vt="godan"},["stay"]={ja="泊まる",type="verb",vt="godan"},
["leave"]={ja="去る",type="verb",vt="godan"},["return"]={ja="戻る",type="verb",vt="godan"},
["change"]={ja="変える",type="verb",vt="ichidan"},["move"]={ja="動く",type="verb",vt="godan"},
["carry"]={ja="運ぶ",type="verb",vt="godan"},["hold"]={ja="持つ",type="verb",vt="godan"},
["push"]={ja="押す",type="verb",vt="godan"},["pull"]={ja="引く",type="verb",vt="godan"},
["throw"]={ja="投げる",type="verb",vt="ichidan"},["catch"]={ja="捕まえる",type="verb",vt="ichidan"},
["hit"]={ja="叩く",type="verb",vt="godan"},["kick"]={ja="蹴る",type="verb",vt="godan"},
["jump"]={ja="跳ぶ",type="verb",vt="godan"},["climb"]={ja="登る",type="verb",vt="godan"},
["fall"]={ja="落ちる",type="verb",vt="ichidan"},["stand"]={ja="立つ",type="verb",vt="godan"},
["sit"]={ja="座る",type="verb",vt="godan"},["swim"]={ja="泳ぐ",type="verb",vt="godan"},
["fly"]={ja="飛ぶ",type="verb",vt="godan"},["drive"]={ja="運転する",type="verb",vt="suru"},
["ride"]={ja="乗る",type="verb",vt="godan"},["cook"]={ja="料理する",type="verb",vt="suru"},
["wash"]={ja="洗う",type="verb",vt="godan"},["clean"]={ja="掃除する",type="verb",vt="suru"},
["win"]={ja="勝つ",type="verb",vt="godan"},["pay"]={ja="払う",type="verb",vt="godan"},
["meet"]={ja="会う",type="verb",vt="godan"},["visit"]={ja="訪ねる",type="verb",vt="ichidan"},
["travel"]={ja="旅行する",type="verb",vt="suru"},["save"]={ja="救う",type="verb",vt="godan"},
["kill"]={ja="殺す",type="verb",vt="godan"},["lend"]={ja="貸す",type="verb",vt="godan"},
["borrow"]={ja="借りる",type="verb",vt="ichidan"},["choose"]={ja="選ぶ",type="verb",vt="godan"},
["decide"]={ja="決める",type="verb",vt="ichidan"},["believe"]={ja="信じる",type="verb",vt="ichidan"},
["hope"]={ja="望む",type="verb",vt="godan"},["wish"]={ja="願う",type="verb",vt="godan"},
["pray"]={ja="祈る",type="verb",vt="godan"},["dream"]={ja="夢を見る",type="verb",vt="ichidan"},
["rest"]={ja="休む",type="verb",vt="godan"},["exercise"]={ja="運動する",type="verb",vt="suru"},
["fight"]={ja="戦う",type="verb",vt="godan"},["protect"]={ja="守る",type="verb",vt="godan"},
["grow"]={ja="育つ",type="verb",vt="godan"},["send"]={ja="送る",type="verb",vt="godan"},
["receive"]={ja="受け取る",type="verb",vt="godan"},["bring"]={ja="持ってくる",type="verb",vt="kuru"},
["become"]={ja="なる",type="verb",vt="godan"},["seem"]={ja="見える",type="verb",vt="ichidan"},
["show"]={ja="見せる",type="verb",vt="ichidan"},["hide"]={ja="隠す",type="verb",vt="godan"},
["tell"]={ja="言う",type="verb",vt="godan"},["explain"]={ja="説明する",type="verb",vt="suru"},
["count"]={ja="数える",type="verb",vt="ichidan"},["measure"]={ja="測る",type="verb",vt="godan"},
["add"]={ja="加える",type="verb",vt="ichidan"},["remove"]={ja="取り除く",type="verb",vt="godan"},
["cut"]={ja="切る",type="verb",vt="godan"},["cover"]={ja="覆う",type="verb",vt="godan"},
["fill"]={ja="満たす",type="verb",vt="godan"},["empty"]={ja="空にする",type="verb",vt="suru"},
["turn"]={ja="回す",type="verb",vt="godan"},["roll"]={ja="転がる",type="verb",vt="godan"},
["drive"]={ja="運転する",type="verb",vt="suru"},["fear"]={ja="恐れる",type="verb",vt="ichidan"},
["like"]={ja="好き",type="na_verb",particle="が"},["love"]={ja="大好き",type="na_verb",particle="が"},
["hate"]={ja="嫌い",type="na_verb",particle="が"},["want"]={ja="欲しい",type="na_verb",particle="が"},
["need"]={ja="必要",type="na_verb",particle="が"},["dislike"]={ja="嫌",type="na_verb",particle="が"},
["prefer"]={ja="好む",type="verb",vt="godan"},
["ate"]={ja="食べる",type="verb",vt="ichidan",past=true},["went"]={ja="行く",type="verb",vt="godan",past=true,motion=true},
["saw"]={ja="見る",type="verb",vt="ichidan",past=true},["came"]={ja="来る",type="verb",vt="kuru",past=true,motion=true},
["made"]={ja="作る",type="verb",vt="godan",past=true},["took"]={ja="取る",type="verb",vt="godan",past=true},
["got"]={ja="得る",type="verb",vt="ichidan",past=true},["said"]={ja="言う",type="verb",vt="godan",past=true},
["told"]={ja="言う",type="verb",vt="godan",past=true},["gave"]={ja="あげる",type="verb",vt="ichidan",past=true},
["found"]={ja="見つける",type="verb",vt="ichidan",past=true},["thought"]={ja="思う",type="verb",vt="godan",past=true},
["knew"]={ja="知る",type="verb",vt="godan",past=true},["felt"]={ja="感じる",type="verb",vt="ichidan",past=true},
["left"]={ja="去る",type="verb",vt="godan",past=true},["ran"]={ja="走る",type="verb",vt="godan",past=true},
["sat"]={ja="座る",type="verb",vt="godan",past=true},["stood"]={ja="立つ",type="verb",vt="godan",past=true},
["won"]={ja="勝つ",type="verb",vt="godan",past=true},["lost"]={ja="負ける",type="verb",vt="ichidan",past=true},
["drank"]={ja="飲む",type="verb",vt="godan",past=true},["swam"]={ja="泳ぐ",type="verb",vt="godan",past=true},
["flew"]={ja="飛ぶ",type="verb",vt="godan",past=true},["wrote"]={ja="書く",type="verb",vt="godan",past=true},
["spoke"]={ja="話す",type="verb",vt="godan",past=true},["slept"]={ja="寝る",type="verb",vt="ichidan",past=true},
["heard"]={ja="聞く",type="verb",vt="godan",past=true},["bought"]={ja="買う",type="verb",vt="godan",past=true},
["sold"]={ja="売る",type="verb",vt="godan",past=true},["began"]={ja="始まる",type="verb",vt="godan",past=true},
["fell"]={ja="落ちる",type="verb",vt="ichidan",past=true},["forgot"]={ja="忘れる",type="verb",vt="ichidan",past=true},
["held"]={ja="持つ",type="verb",vt="godan",past=true},["met"]={ja="会う",type="verb",vt="godan",past=true},
["paid"]={ja="払う",type="verb",vt="godan",past=true},["sent"]={ja="送る",type="verb",vt="godan",past=true},
["spent"]={ja="使う",type="verb",vt="godan",past=true},["taught"]={ja="教える",type="verb",vt="ichidan",past=true},
["understood"]={ja="理解する",type="verb",vt="suru",past=true},["broke"]={ja="壊す",type="verb",vt="godan",past=true},
["chose"]={ja="選ぶ",type="verb",vt="godan",past=true},["grew"]={ja="育つ",type="verb",vt="godan",past=true},
["kept"]={ja="保つ",type="verb",vt="godan",past=true},["led"]={ja="導く",type="verb",vt="godan",past=true},
["built"]={ja="建てる",type="verb",vt="ichidan",past=true},["brought"]={ja="持ってくる",type="verb",vt="kuru",past=true},
["caught"]={ja="捕まえる",type="verb",vt="ichidan",past=true},["threw"]={ja="投げる",type="verb",vt="ichidan",past=true},
["wore"]={ja="着る",type="verb",vt="ichidan",past=true},["fought"]={ja="戦う",type="verb",vt="godan",past=true},
["hid"]={ja="隠す",type="verb",vt="godan",past=true},["rose"]={ja="上がる",type="verb",vt="godan",past=true},
["bit"]={ja="噛む",type="verb",vt="godan",past=true},["blew"]={ja="吹く",type="verb",vt="godan",past=true},
["burnt"]={ja="燃える",type="verb",vt="ichidan",past=true},["dealt"]={ja="扱う",type="verb",vt="godan",past=true},
["drew"]={ja="描く",type="verb",vt="godan",past=true},["fed"]={ja="食べさせる",type="verb",vt="ichidan",past=true},
["froze"]={ja="凍る",type="verb",vt="godan",past=true},["hung"]={ja="掛ける",type="verb",vt="ichidan",past=true},
["laid"]={ja="置く",type="verb",vt="godan",past=true},["lit"]={ja="灯す",type="verb",vt="godan",past=true},
["rang"]={ja="鳴らす",type="verb",vt="godan",past=true},["rode"]={ja="乗る",type="verb",vt="godan",past=true},
["sang"]={ja="歌う",type="verb",vt="godan",past=true},["shook"]={ja="振る",type="verb",vt="godan",past=true},
["shot"]={ja="撃つ",type="verb",vt="godan",past=true},["shut"]={ja="閉める",type="verb",vt="ichidan",past=true},
["sought"]={ja="探す",type="verb",vt="godan",past=true},["sped"]={ja="急ぐ",type="verb",vt="godan",past=true},
["spread"]={ja="広げる",type="verb",vt="ichidan",past=true},["stole"]={ja="盗む",type="verb",vt="godan",past=true},
["struck"]={ja="打つ",type="verb",vt="godan",past=true},["swept"]={ja="掃く",type="verb",vt="godan",past=true},
["swung"]={ja="振る",type="verb",vt="godan",past=true},["tore"]={ja="破る",type="verb",vt="godan",past=true},
["woke"]={ja="起きる",type="verb",vt="ichidan",past=true},["wore"]={ja="着る",type="verb",vt="ichidan",past=true},
["held"]={ja="持つ",type="verb",vt="godan",past=true},
["to"]={ja="に",type="preposition"},["school"]={ja="学校",type="noun"},
})

local GODAN = {
["う"]={a="わ",i="い",e="え",te="って",ta="った"},
["く"]={a="か",i="き",e="け",te="いて",ta="いた"},
["ぐ"]={a="が",i="ぎ",e="げ",te="いで",ta="いだ"},
["す"]={a="さ",i="し",e="せ",te="して",ta="した"},
["つ"]={a="た",i="ち",e="て",te="って",ta="った"},
["ぬ"]={a="な",i="に",e="ね",te="んで",ta="んだ"},
["ぶ"]={a="ば",i="び",e="べ",te="んで",ta="んだ"},
["む"]={a="ま",i="み",e="め",te="んで",ta="んだ"},
["る"]={a="ら",i="り",e="れ",te="って",ta="った"},
}

local PUNCT_JA = {[","]="、",["."]="。",["?"]="？",["!"]="！",[";"]="；",[":"]="："}

local CONTRACTIONS = {
["don't"]="do not",["doesn't"]="does not",["didn't"]="did not",
["can't"]="can not",["cannot"]="can not",["won't"]="will not",["wouldn't"]="would not",
["shouldn't"]="should not",["couldn't"]="could not",["isn't"]="is not",["aren't"]="are not",
["wasn't"]="was not",["weren't"]="were not",["haven't"]="have not",["hasn't"]="has not",
["i'm"]="i am",["you're"]="you are",["he's"]="he is",["she's"]="she is",["it's"]="it is",
["we're"]="we are",["they're"]="they are",["i've"]="i have",["i'll"]="i will",
["i'd"]="i would",["let's"]="let us",["that's"]="that is",["there's"]="there is",
["what's"]="what is",["where's"]="where is",["who's"]="who is",["how's"]="how is",
}

local function lastChar(s)
  local i = #s
  while i > 0 do
    local b = s:byte(i)
    if b < 0x80 or b >= 0xC0 then return s:sub(i) end
    i = i - 1
  end
  return s
end

local function dropLastChar(s)
  local i = #s
  while i > 0 do
    local b = s:byte(i)
    if b < 0x80 or b >= 0xC0 then return s:sub(1, i-1) end
    i = i - 1
  end
  return ""
end

local function conjugate(v, vt, form)
  if vt == "suru" then
    if form == "dict" then return v end
    if form == "masu" then return "します" end
    if form == "neg" then return "しない" end
    if form == "neg_masu" then return "しません" end
    if form == "past" then return "した" end
    if form == "past_masu" then return "しました" end
    if form == "past_neg" then return "しなかった" end
    if form == "past_neg_masu" then return "しませんでした" end
    if form == "te" then return "して" end
    if form == "tai" then return "したい" end
    if form == "potential" then return "できる" end
    if form == "progressive" then return "している" end
    return v
  end
  if vt == "kuru" then
    if form == "dict" then return "来る" end
    if form == "masu" then return "来ます" end
    if form == "neg" then return "来ない" end
    if form == "neg_masu" then return "来ません" end
    if form == "past" then return "来た" end
    if form == "past_masu" then return "来ました" end
    if form == "past_neg" then return "来なかった" end
    if form == "past_neg_masu" then return "来ませんでした" end
    if form == "te" then return "来て" end
    if form == "tai" then return "来たい" end
    if form == "potential" then return "来られる" end
    if form == "progressive" then return "来ている" end
    return v
  end
  if vt == "ichidan" then
    local stem = dropLastChar(v)
    if form == "dict" then return v end
    if form == "masu" then return stem .. "ます" end
    if form == "neg" then return stem .. "ない" end
    if form == "neg_masu" then return stem .. "ません" end
    if form == "past" then return stem .. "た" end
    if form == "past_masu" then return stem .. "ました" end
    if form == "past_neg" then return stem .. "なかった" end
    if form == "past_neg_masu" then return stem .. "ませんでした" end
    if form == "te" then return stem .. "て" end
    if form == "tai" then return stem .. "たい" end
    if form == "potential" then return stem .. "られる" end
    if form == "progressive" then return stem .. "ている" end
    return v
  end
  if vt == "godan" then
    local last = lastChar(v)
    local stem = dropLastChar(v)
    local m = GODAN[last]
    if not m then return v end
    if form == "dict" then return v end
    if form == "masu" then
      if v == "行く" then return "行きます" end
      return stem .. m.i .. "ます"
    end
    if form == "neg" then
      if v == "行く" then return "行かない" end
      return stem .. m.a .. "ない"
    end
    if form == "neg_masu" then
      if v == "行く" then return "行きません" end
      return stem .. m.i .. "ません"
    end
    if form == "past" then
      if v == "行く" then return "行った" end
      return stem .. m.ta
    end
    if form == "past_masu" then
      if v == "行く" then return "行きました" end
      return stem .. m.i .. "ました"
    end
    if form == "past_neg" then
      if v == "行く" then return "行かなかった" end
      return stem .. m.a .. "なかった"
    end
    if form == "past_neg_masu" then
      if v == "行く" then return "行きませんでした" end
      return stem .. m.i .. "ませんでした"
    end
    if form == "te" then
      if v == "行く" then return "行って" end
      return stem .. m.te
    end
    if form == "tai" then
      return stem .. m.i .. "たい"
    end
    if form == "potential" then
      return stem .. m.e .. "る"
    end
    if form == "progressive" then
      if v == "行く" then return "行っている" end
      return stem .. m.te .. "いる"
    end
    return v
  end
  return v
end

local function adjForm(ja, at, form)
  if at == "i_adj" then
    if form == "pres" then return ja end
    if form == "neg" then return dropLastChar(ja) .. "くない" end
    if form == "past" then return dropLastChar(ja) .. "かった" end
    if form == "past_neg" then return dropLastChar(ja) .. "くなかった" end
    if form == "adv" then return dropLastChar(ja) .. "く" end
  end
  if at == "na_adj" then
    if form == "pres" then return ja end
    if form == "neg" then return ja .. "ではない" end
    if form == "past" then return ja .. "だった" end
    if form == "past_neg" then return ja .. "ではなかった" end
    if form == "attr" then return ja .. "な" end
  end
  return ja
end

local function preprocess(text)
  text = text:lower()
  for k, v in pairs(CONTRACTIONS) do
    text = text:gsub(k, v)
  end
  return text
end

local function lookup(w)
  if DICT[w] then return DICT[w] end
  if #w > 3 and w:sub(-2) == "ed" then
    local base = w:sub(1, -3)
    if DICT[base] then
      local e = {}
      for k, v in pairs(DICT[base]) do e[k] = v end
      e.past = true
      return e
    end
    if w:sub(-3) == "ied" then
      local b2 = w:sub(1, -4) .. "y"
      if DICT[b2] then
        local e = {}
        for k, v in pairs(DICT[b2]) do e[k] = v end
        e.past = true
        return e
      end
    end
  end
  if #w > 4 and w:sub(-3) == "ing" then
    local base = w:sub(1, -4)
    if DICT[base] then
      local e = {}
      for k, v in pairs(DICT[base]) do e[k] = v end
      e.progressive = true
      return e
    end
    if base:sub(-1) == base:sub(-2) and #base > 1 then
      local b3 = base:sub(1, -2)
      if DICT[b3] then
        local e = {}
        for k, v in pairs(DICT[b3]) do e[k] = v end
        e.progressive = true
        return e
      end
    end
  end
  if #w > 2 and w:sub(-1) == "s" then
    local base = w:sub(1, -2)
    if DICT[base] then return DICT[base] end
    if w:sub(-3) == "ies" then
      local b4 = w:sub(1, -4) .. "y"
      if DICT[b4] then return DICT[b4] end
    end
  end
  return nil
end

local function tokenize(text)
  local tokens = {}
  local i, n = 1, #text
  while i <= n do
    local c = text:sub(i,i)
    if c:match("%s") then
      i = i + 1
    elseif c:match("[%p]") then
      table.insert(tokens, {kind="punct", raw=c})
      i = i + 1
    else
      local word = ""
      while i <= n do
        local ch = text:sub(i,i)
        if ch:match("[%w']") then word = word .. ch; i = i + 1 else break end
      end
      table.insert(tokens, {kind="word", raw=word, lower=word:lower()})
    end
  end
  return tokens
end

local function isClauseBoundary(t)
  return t.kind == "punct" and (t.raw == "," or t.raw == "." or t.raw == "?" or t.raw == "!" or t.raw == ";" or t.raw == ":")
end

local function splitClauses(tokens)
  local clauses = {}
  local current = {}
  for _, t in ipairs(tokens) do
    if isClauseBoundary(t) then
      table.insert(clauses, {tokens=current, terminal=t.raw})
      current = {}
    else
      table.insert(current, t)
    end
  end
  if #current > 0 then
    table.insert(clauses, {tokens=current, terminal="."})
  end
  return clauses
end

local function findVerb(tokens, from)
  for i = from or 1, #tokens do
    local t = tokens[i]
    if t.kind == "word" then
      local e = lookup(t.lower)
      if e and (e.type == "verb" or e.type == "copula" or e.type == "na_verb") then
        return i, e
      end
    end
  end
  return nil, nil
end

local function detectAux(tokens, from, to)
  local info = {past=false,neg=false,future=false,potential=false,progressive=false,tai=false,perfect=false}
  for i = from, to do
    local t = tokens[i]
    if t.kind == "word" then
      local lower = t.lower
      if lower == "did" then info.past = true end
      if lower == "will" or lower == "shall" then info.future = true end
      if lower == "can" or lower == "could" then info.potential = true end
      if lower == "not" or lower == "no" then info.neg = true end
      if lower == "am" or lower == "is" or lower == "are" or lower == "was" or lower == "were" then
        local nxt = tokens[i+1]
        if nxt and nxt.kind == "word" then
          local ne = lookup(nxt.lower)
          if ne and ne.type == "verb" then
            info.progressive = true
          end
        end
      end
      if lower == "have" or lower == "has" or lower == "had" then
        info.perfect = true
      end
    end
  end
  return info
end

local function collectPhrase(tokens, from, to)
  local parts = {}
  local prep = nil
  for i = from, to do
    local t = tokens[i]
    if t.kind == "word" then
      local e = lookup(t.lower)
      if e then
        if e.type == "preposition" then
          prep = t.lower
        elseif e.type == "article" or e.type == "aux" or e.type == "aux_neg" or e.type == "modal" then
        elseif e.type == "conjunction" then
          table.insert(parts, {word="AND", entry=e})
        elseif e.type == "question" or e.type == "demonstrative" or e.type == "number" then
          table.insert(parts, {word=t.lower, entry=e})
        else
          table.insert(parts, {word=t.lower, entry=e})
        end
      end
    end
  end
  return parts, prep
end

local function phraseToJa(parts)
  local out = ""
  for _, p in ipairs(parts) do
    local e = p.entry
    if p.word == "AND" then
      out = out .. "と"
    elseif e.type == "possessive" then
      out = out .. e.ja
    elseif e.type == "i_adj" then
      out = out .. adjForm(e.ja, "i_adj", "pres")
    elseif e.type == "na_adj" then
      out = out .. adjForm(e.ja, "na_adj", "attr")
    elseif e.type == "demonstrative" then
      out = out .. e.ja
    elseif e.type == "number" then
      out = out .. e.ja
    elseif e.type == "question" then
      out = out .. e.ja
    elseif e.type == "noun" or e.type == "pronoun" then
      out = out .. e.ja
    end
  end
  return out
end

local function pickParticle(verbEntry, prep, motion)
  if prep then
    if prep == "to" then return motion and "に" or "に" end
    if prep == "at" or prep == "in" or prep == "on" then return "で" end
    if prep == "from" then return "から" end
    if prep == "with" then return "と" end
    if prep == "for" then return "のために" end
    if prep == "of" then return "の" end
    if prep == "by" then return "によって" end
    if prep == "about" then return "について" end
    if prep == "under" then return "の下で" end
    if prep == "over" then return "の上で" end
    if prep == "between" then return "の間で" end
    if prep == "near" then return "の近くで" end
    if prep == "behind" then return "の後ろで" end
    if prep == "before" then return "の前で" end
    if prep == "after" then return "の後で" end
    if prep == "during" then return "の間に" end
    if prep == "through" then return "を通って" end
  end
  if motion then return "に" end
  return "を"
end

local function buildVerbPhrase(verbEntry, aux)
  local v = verbEntry.ja
  local vt = verbEntry.vt
  if not vt then return v end
  local isPast = aux.past or verbEntry.past or false
  local isNeg = aux.neg or false
  local isProg = aux.progressive or verbEntry.progressive or false
  local isPot = aux.potential or false
  local isFut = aux.future or false
  local form
  if isPot then
    form = "potential"
  elseif isProg then
    form = "progressive"
  elseif isNeg and isPast then
    form = "past_neg_masu"
  elseif isNeg then
    form = "neg_masu"
  elseif isPast then
    form = "past_masu"
  elseif isFut then
    form = "masu"
  else
    form = "masu"
  end
  return conjugate(v, vt, form)
end

local function buildTaiPhrase(verbEntry, aux)
  local v = verbEntry.ja
  local vt = verbEntry.vt
  if not vt then return v end
  local stem = conjugate(v, vt, "tai")
  if aux and aux.neg then
    return dropLastChar(stem) .. "くないです"
  end
  if aux and aux.past then
    return dropLastChar(stem) .. "かったです"
  end
  return stem .. "です"
end

local function translateBody(tokens)
  local isQuestion = false
  for _, t in ipairs(tokens) do
    if t.kind == "word" then
      local e = lookup(t.lower)
      if e and e.type == "question" then isQuestion = true end
    end
  end
  
  local wantIdx = nil
  for i, t in ipairs(tokens) do
    if t.kind == "word" and t.lower == "want" then
      if tokens[i+1] and tokens[i+1].kind == "word" and tokens[i+1].lower == "to" then
        if tokens[i+2] and tokens[i+2].kind == "word" then
          local ne = lookup(tokens[i+2].lower)
          if ne and ne.type == "verb" then wantIdx = i end
        end
      end
    end
  end
  
  if wantIdx then
    local subjParts = collectPhrase(tokens, 1, wantIdx - 1)
    local objParts, objPrep = collectPhrase(tokens, wantIdx + 3, #tokens)
    local aux = detectAux(tokens, 1, wantIdx - 1)
    local ve = lookup(tokens[wantIdx+2].lower)
    local subj = phraseToJa(subjParts)
    local obj = phraseToJa(objParts)
    local particle = pickParticle(ve, objPrep, ve.motion)
    local out = ""
    if subj ~= "" then out = subj .. "は" end
    if obj ~= "" then out = out .. obj .. particle end
    out = out .. buildTaiPhrase(ve, aux)
    if isQuestion then out = out .. "か" end
    return out
  end
  
  local verbIdx, verbEntry = findVerb(tokens)
  
  if not verbIdx then
    local out = ""
    for _, t in ipairs(tokens) do
      if t.kind == "word" then
        local e = lookup(t.lower)
        if e then
          if e.type == "article" or e.type == "aux" or e.type == "aux_neg" or e.type == "modal" then
          elseif e.type == "i_adj" then
            out = out .. adjForm(e.ja, "i_adj", "pres")
          elseif e.type == "na_adj" then
            out = out .. e.ja
          elseif e.type ~= "greeting" then
            out = out .. e.ja
          end
        end
      end
    end
    if isQuestion then out = out .. "か" end
    return out
  end
  
  local aux = detectAux(tokens, 1, #tokens)
  local subjParts = collectPhrase(tokens, 1, verbIdx - 1)
  local subj = phraseToJa(subjParts)
  
  if verbEntry.type == "copula" then
    local predParts = collectPhrase(tokens, verbIdx + 1, #tokens)
    local pred = ""
    for _, p in ipairs(predParts) do
      local e = p.entry
      if e.type == "i_adj" then
        if aux.past and aux.neg then pred = pred .. adjForm(e.ja, "i_adj", "past_neg")
        elseif aux.past then pred = pred .. adjForm(e.ja, "i_adj", "past")
        elseif aux.neg then pred = pred .. adjForm(e.ja, "i_adj", "neg")
        else pred = pred .. adjForm(e.ja, "i_adj", "pres") end
      elseif e.type == "na_adj" then
        if aux.past and aux.neg then pred = pred .. e.ja .. "ではなかったです"
        elseif aux.past then pred = pred .. e.ja .. "でした"
        elseif aux.neg then pred = pred .. e.ja .. "ではありません"
        else pred = pred .. e.ja end
      elseif e.type == "noun" or e.type == "pronoun" or e.type == "possessive" or e.type == "number" or e.type == "demonstrative" then
        pred = pred .. e.ja
      end
    end
    local cop = "です"
    if aux.past and aux.neg then cop = "ではありませんでした"
    elseif aux.past then cop = "でした"
    elseif aux.neg then cop = "ではありません" end
    local out = ""
    if subj ~= "" then out = subj .. "は" end
    out = out .. pred .. cop
    if isQuestion then out = out .. "か" end
    return out
  end
  
  if verbEntry.type == "na_verb" then
    local objParts = collectPhrase(tokens, verbIdx + 1, #tokens)
    local obj = phraseToJa(objParts)
    local part = verbEntry.particle or "が"
    local out = ""
    if subj ~= "" then out = subj .. "は" end
    if obj ~= "" then out = out .. obj .. part end
    if aux.neg and aux.past then
      out = out .. verbEntry.ja .. "ではなかったです"
    elseif aux.past then
      out = out .. verbEntry.ja .. "でした"
    elseif aux.neg then
      out = out .. verbEntry.ja .. "ではありません"
    elseif aux.future then
      out = out .. verbEntry.ja .. "になります"
    else
      out = out .. verbEntry.ja .. "です"
    end
    if isQuestion then out = out .. "か" end
    return out
  end
  
  local objParts, objPrep = collectPhrase(tokens, verbIdx + 1, #tokens)
  local obj = phraseToJa(objParts)
  local particle = pickParticle(verbEntry, objPrep, verbEntry.motion)
  local verbPhrase = buildVerbPhrase(verbEntry, aux)
  local out = ""
  if subj ~= "" then out = subj .. "は" end
  if obj ~= "" then out = out .. obj .. particle end
  out = out .. verbPhrase
  if isQuestion then out = out .. "か" end
  return out
end

local function translateClause(tokens)
  local greeting = nil
  local start = 1
  if #tokens > 0 and tokens[1].kind == "word" then
    local e = lookup(tokens[1].lower)
    if e and e.type == "greeting" then
      greeting = e.ja
      start = 2
    end
  end
  local bodyTokens = {}
  for i = start, #tokens do table.insert(bodyTokens, tokens[i]) end
  local body = ""
  if #bodyTokens > 0 then body = translateBody(bodyTokens) end
  if greeting then
    if body ~= "" then return greeting .. "、" .. body end
    return greeting
  end
  return body
end

function LangLoader.new()
  return setmetatable({dict=DICT}, LangLoader)
end

function LangLoader:translate(text)
  local tokens = tokenize(preprocess(text))
  if #tokens == 0 then return "" end
  local clauses = splitClauses(tokens)
  local out = ""
  for i, c in ipairs(clauses) do
    local body = translateClause(c.tokens)
    if body and body ~= "" then
      local term = PUNCT_JA[c.terminal] or "。"
      if i == #clauses and (c.terminal == "." or c.terminal == ",") then term = "。" end
      out = out .. body .. term
    end
  end
  return out
end

function LangLoader:addWord(en, ja, t)
  self.dict[en:lower()] = {ja=ja, type=t or "noun"}
end

function LangLoader:addVerb(en, ja, vt)
  self.dict[en:lower()] = {ja=ja, type="verb", vt=vt or "godan"}
end

function LangLoader:load(url)
  local ok, body = pcall(function() return game:HttpGet(url) end)
  if not ok or type(body) ~= "string" then return 0 end
  local count = 0
  for line in body:gmatch("[^\r\n]+") do
    local en, ja, t = line:match("^([^|]+)|([^|]+)|(.+)$")
    if not en then en, ja = line:match("^([^|]+)|(.+)$"); t = "noun" end
    if en and ja then
      self.dict[en:lower()] = {ja=ja, type=t}
      count = count + 1
    end
  end
  return count
end

function LangLoader:getDict()
  return self.dict
end

return LangLoader
