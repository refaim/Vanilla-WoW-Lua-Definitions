---
---@class StatusBar : Frame
StatusBar = {}

---
--- Set the bounds of the bar.
---@param min number
---@param max number
function StatusBar:SetMinMaxValues(min, max) end

---
--- Set the value of the bar.
---@param value number
function StatusBar:SetValue(value) end

-- TODO layer?
---
--- Sets the texture of the bar.
---@param fileOrTexture string|Texture
---@param layer? any
function StatusBar:SetStatusBarTexture(fileOrTexture, layer) end

---
--- Set the color of the bar.
---@param r number
---@param g number
---@param b number
---@param alpha? number
function StatusBar:SetStatusBarColor(r, g, b, alpha) end

--TODO doc
--TODO
--StatusBar:GetMinMaxValues() - Get the current bounds of the bar.
--StatusBar:GetOrientation
--StatusBar:GetStatusBarColor
--StatusBar:GetStatusBarTexture() - Returns the texture object for the bar - Before 1.11 it returned the filename.
--StatusBar:GetValue() - Get the current value of the bar.
--StatusBar:SetOrientation
