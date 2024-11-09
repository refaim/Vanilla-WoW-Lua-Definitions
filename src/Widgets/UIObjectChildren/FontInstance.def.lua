---
---@class FontInstance: UIObject
FontInstance = {}

---
--- Return the parent Font object, or nil if none.
---@return Font|nil
function FontInstance:GetFontObject() end

---
--- Sets the parent Font object from which this object inherits properties.
---@param font Font
function FontInstance:SetFontObject(font) end

---
--- Returns the horizontal text justification.
---@return "LEFT" | "RIGHT" | "CENTER"
function FontInstance:GetJustifyH() end

---
--- Sets the horizontal text justification.
---@param value "LEFT" | "RIGHT" | "CENTER"
function FontInstance:SetJustifyH(value) end

---
--- Returns the vertical text justification.
---@return "TOP" | "BOTTOM" | "MIDDLE"
function FontInstance:GetJustifyV() end

---
--- Sets the vertical text justification.
---@param value "TOP" | "BOTTOM" | "MIDDLE"
function FontInstance:SetJustifyV(value) end

---
--- Sets the default text color.
---@param r number
---@param g number
---@param b number
---@param a? number|nil
function FontInstance:SetTextColor(r, g, b, a) end

--TODO doc
--TODO
--FontInstance:GetFont() - Return the font file, height, and flags.
--FontInstance:GetShadowColor() - Returns the color of text shadow (r, g, b, a).
--FontInstance:GetShadowOffset() - Returns the text shadow offset (x, y).
--FontInstance:GetSpacing() - Returns the text spacing.
--FontInstance:GetTextColor() - Returns the default text color.
--FontInstance:SetFont("path", height[,"flags"]) - Sets the font to use for text, returns 1 if the path was valid, nil otherwise (no change occurs).
--FontInstance:SetShadowColor(r, g, b[, a]) - Sets the text shadow color.
--FontInstance:SetShadowOffset(x, y) - Sets the text shadow offset.
--FontInstance:SetSpacing(spacing) - Sets the spacing between lines of text in the object.
