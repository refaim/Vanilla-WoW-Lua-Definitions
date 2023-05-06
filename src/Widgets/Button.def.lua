--TODO fields
--TODO inheritance
--TODO add doc
---
---@class Button : Frame
Button = {}

---
--- Returns the width of the button's text label.
---@return number Width of the button's text (in pixels).
function Button:GetTextWidth() end

---
--- Returns the height of the button's text label. Reflects the height of the rendered text (which increases if the text wraps onto two lines), not the point size of the text's font.
---@return number Height of the button's text (in pixels).
function Button:GetTextHeight() end

--TODO
--Button:Click() - Execute the click action of the button.
--Button:Disable() - Disable the Button so that it cannot be clicked.
--Button:Enable() - Enable to the Button so that it may be clicked.
--Button:GetButtonState() - Return the current state ("PUSHED","NORMAL") of the Button.
--Button:GetDisabledFontObject() - Return the font object for the Button when disabled - New in 1.10.
--Button:GetDisabledTextColor() - Get the color of this button's text when disabled (r, g, b, a) - New in 1.11.
--Button:GetDisabledTexture() - Get the texture for this button when disabled - New in 1.11.
--Button:GetFont() - Returns the font, size, and flags currently used for display on the Button.
--Button:GetFontString() - Get this button's label FontString - New in 1.11.
--Button:GetHighlightFontObject() - Return the font object for the Button when highlighted - New in 1.10.
--Button:GetHighlightTextColor() - Get the color of this button's text when highlighted (r, g, b, a) - New in 1.11.
--Button:GetHighlightTexture() - Get the texture for this button when highlighted - New in 1.11.
--Button:GetNormalTexture() - Get the normal texture for this button - New in 1.11.
--Button:GetPushedTextOffset() - Get the text offset when this button is pushed (x, y) - New in 1.11.
--Button:GetPushedTexture() - Get the texture for this button when pushed - New in 1.11.
--Button:GetText() - Get the text label for the Button.
--Button:GetTextColor() - Get the normal color of this button's text (r, g, b, a) - New in 1.11.
--Button:GetTextFontObject() - Return the font object for the Button's normal text - New in 1.10.
--Button:IsEnabled() - Determine whether the Button is enabled.
--Button:LockHighlight() - Set the Button to always be drawn highlighted.
--Button:RegisterForClicks("clickType"[,"clickType"...]) - Specify which mouse button up/down actions cause this button to receive an OnClick notification.
--Button:SetButtonState("state"[, lock]) - Set the state of the Button ("PUSHED", "NORMAL") and whether it is locked.
--Button:SetDisabledFontObject([font]) - Set the font object for settings when disabled - New in 1.10.
--Button:SetDisabledTextColor(r, g, b[, a]) - Set the disabled text color for the Button.
--Button:SetDisabledTexture(texture or "texturePath") - Set the disabled texture for the Button - Updated in 1.10.
--Button:SetFont("font", size[,"flags"]) - Set the font to use for display.
--Button:SetFontString(fontString) - Set the button's label FontString - New in 1.11.
--Button:SetHighlightFontObject([font]) - Set the font object for settings when highlighted - New in 1.10.
--Button:SetHighlightTextColor(r, g, b[, a]) - Set the highlight text color for the Button.
--Button:SetHighlightTexture(texture or "texturePath") - Set the highlight texture for the Button - Updated in 1.10.
--Button:SetNormalTexture(texture or "texturePath") - Set the normal texture for the Button - Updated in 1.10.
--Button:SetPushedTextOffset(x, y) - Set the text offset for this button when pushed - New in 1.11.
--Button:SetPushedTexture(texture or "texturePath") - Set the pushed texture for the Button - Updated in 1.10.
--Button:SetText("text") - Set the text label for the Button.
--Button:SetTextColor(r, g, b) - Set the text color for the Button.
--Button:SetTextFontObject([font]) - Set the font object from which to get settings for this Button's normal state - New in 1.10.
--Button:UnlockHighlight() - Set the Button to not always be drawn highlighted.
