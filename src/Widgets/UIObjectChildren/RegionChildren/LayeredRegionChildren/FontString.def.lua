---
---@class FontString : LayeredRegion
FontString = {}

---
--- Set the displayed text.
---@param value string
function FontString:SetText(value) end

--TODO inherits FontInstance too
--TODO doc
--TODO
--FontString:CanNonSpaceWrap() - Get whether long strings without spaces are wrapped or truncated - New in 1.11.
--FontString:GetStringWidth() - Returns the width in pixels of the current string in the current font (without line wrapping).
--FontString:GetText() - Get the displayed text.
--FontString:SetAlphaGradient(start, length) - Create or remove an alpha gradient over the text.
--FontString:SetNonSpaceWrap(wrapFlag) - Set whether long strings without spaces are wrapped or truncated.
--FontString:SetTextHeight(pixelHeight) - Set the height of the text by scaling graphics (Note: Can distort text).
