local SendNUIMessage = SendNUIMessage
local exports = exports
local AddEventHandler = AddEventHandler

--- Show Text UI
---@param title string
---@param press string
---@param key string
local function showTextUI(title, press, key)
    print("Showing text ui")
    SendNUIMessage({
        type = "showTextUI",
        titleText = title,
        pressText = press,
        keyText = key,
    })
end
exports("showTextUI", showTextUI)

--- Hide Text UI
local function hideTextUI()
    SendNUIMessage({type = "hideTextUI"})
end
exports("hideTextUI", hideTextUI)

--- Hide Text UI when the resource stops
AddEventHandler("onResourceStop", hideTextUI)