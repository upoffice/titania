local id = game.PlaceId
local url = "https://raw.githubusercontent.com/upoffice/titania/main/games/" .. id .. ".lua"
local script = game:HttpGet(url)
local fn = loadstring(script)
if not fn then
  error("no game " .. id)
end
fn()
