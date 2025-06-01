---
---@class CheckButton : Button
CheckButton = {}

---
--- Set the status of the checkbox.
---@param checked boolean
function CheckButton:SetChecked(checked) end

---
--- Set the texture to use for a checked box.
---@param texture Texture|string texture or path
function CheckButton:SetCheckedTexture(texture) end

--TODO
--CheckButton:GetChecked() - Get the status of the checkbox.
--CheckButton:GetCheckedTexture() - Get the texture used for a checked box - New in 1.11.
--CheckButton:GetDisabledCheckedTexture() - Get the texture used for a disabled checked box - New in 1.11.
--CheckButton:SetDisabledCheckedTexture(texture) - Set the texture to use for a disabled but checked box.
