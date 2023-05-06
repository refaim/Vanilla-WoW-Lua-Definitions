-- TODO fields
-- TODO add doc
---@class Frame : Region
Frame = {}

-- TODO describe
function Frame:SetBackdrop(...) end

--- Enables or disables mouse interactivity for the frame. Mouse interactivity must be enabled in order for a frame's mouse-related script handlers to be run.
--- @param enable boolean True to enable mouse interactivity; false to disable.
--- @return nil
function Frame:EnableMouse(enable) end

--- Sets whether the frame can be moved by the user. Enabling this property does not automatically implement behaviors allowing the frame to be dragged by the user — such behavior must be implemented in the frame's mouse script handlers. If this property is not enabled, Frame:StartMoving() causes a Lua error. For simple automatic frame dragging behavior, see Frame:CreateTitleRegion().
--- @param enable boolean True to allow the frame to be moved by the user; false to disable.
--- @return nil
function Frame:SetMovable(enable) end

--- Sets whether the frame's boundaries should be limited to those of the screen. Applies to user moving/resizing of the frame (via :StartMoving(), :StartSizing(), or title region); attempting to move or resize the frame beyond the edges of the screen will move/resize it no further than the edge of the screen closest to the mouse position. Does not apply to programmatically setting the frame's position or size.
--- @param enable boolean True to limit the frame's boundaries to those of the screen; false to allow the frame to be moved/resized without such limits.
--- @return nil
function Frame:SetClampedToScreen(enable) end