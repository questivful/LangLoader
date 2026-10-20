local BASE = "https://raw.githubusercontent.com/questivful/LangLoader/main"

local LangLoader = loadstring(game:HttpGet(BASE .. "/LangLoader.luau"))()
local loader = LangLoader.new({baseUrl = BASE})

loader:loadAll("en")
loader:loadAll("jp")

print(loader:translate("I love cats and dogs.", "en", "jp", "kanji"))
print(loader:translate("私は猫が好きです", "jp", "en"))
print(loader:romanize("ありがとうございます", "macron"))

for _, t in ipairs(loader:tokenize("jp", "昨日ご飯を食べました")) do
    print(t.kind, t.text, t.base or "", t.best and t.best.hiragana or "")
end
