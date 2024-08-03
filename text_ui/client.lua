local SendNUIMessage = SendNUIMessage
local exports = exports
local AddEventHandler = AddEventHandler
local textUIActive = false

--- Show Text UI
---@param title string
---@param press string
---@param key string
local function showTextUI(title, press, key)
    if textUIActive then return end
    print("Showing text ui")
    SendNUIMessage({
        type = "showTextUI",
        titleText = title,
        pressText = press,
        keyText = key,
    })
    textUIActive = true
end
exports("showTextUI", showTextUI)

--- Hide Text UI
local function hideTextUI()
    if not textUIActive then return end
    SendNUIMessage({type = "hideTextUI"})
    textUIActive = false
end
exports("hideTextUI", hideTextUI)

--- Hide Text UI when the resource stops
AddEventHandler("onResourceStop", hideTextUI)
