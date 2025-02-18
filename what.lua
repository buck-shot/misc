-- maybe
local List = {
    [6925857548] = "https://raw.githubusercontent.com/buck-shot/misc/refs/heads/main/test1.lua",
    [6608498361] = "https://raw.githubusercontent.com/buck-shot/misc/refs/heads/main/test1.lua",
    [6608498361] = "https://raw.githubusercontent.com/buck-shot/misc/refs/heads/main/test1.lua",
}

if List[game.GameId] then
    return loadstring(game:HttpGet(List[game.GameId]))()
else
    return game.Players.LocalPlayer:Kick("Game Not Supported.")
end
