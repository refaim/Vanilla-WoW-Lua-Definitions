-- TODO fields
-- TODO inheritance
-- TODO add doc
--- @class Button : Frame
Button = {}

--- Returns the width of the button's text label.
--- @return number Width of the button's text (in pixels).
function Button:GetTextWidth() end

--- Returns the height of the button's text label. Reflects the height of the rendered text (which increases if the text wraps onto two lines), not the point size of the text's font.
--- @return number Height of the button's text (in pixels).
function Button:GetTextHeight() end
