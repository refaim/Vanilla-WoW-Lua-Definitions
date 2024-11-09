---
---@class FontString : LayeredRegion
FontString = {}

---
--- Set the displayed text.
---@param value string
function FontString:SetText(value) end

---
--- Get the displayed text.
---@return string|nil
function FontString:GetText() end

--TODO inherits FontInstance too
--TODO
--FontString:CanNonSpaceWrap() - Get whether long strings without spaces are wrapped or truncated - New in 1.11.
--FontString:GetStringWidth() - Returns the width in pixels of the current string in the current font (without line wrapping).
--FontString:SetAlphaGradient(start, length) - Create or remove an alpha gradient over the text.
--FontString:SetNonSpaceWrap(wrapFlag) - Set whether long strings without spaces are wrapped or truncated.
--FontString:SetTextHeight(pixelHeight) - Set the height of the text by scaling graphics (Note: Can distort text).

FontString.GetFontObject = FontInstance.GetFontObject
FontString.SetFontObject = FontInstance.SetFontObject
FontString.GetJustifyH = FontInstance.GetJustifyH
FontString.SetJustifyH = FontInstance.SetJustifyH
FontString.GetJustifyV = FontInstance.GetJustifyV
FontString.SetJustifyV = FontInstance.SetJustifyV
FontString.SetTextColor = FontInstance.SetTextColor
