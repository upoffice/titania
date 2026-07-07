local id = game.GameId
local url = "https://raw.githubusercontent.com/upoffice/titania/main/games/" .. id .. ".lua"
local ok, script = pcall(game.HttpGet, game, url)
if ok and script then
  local fn, err = loadstring(script)
  if fn then
    fn()
  end
end
