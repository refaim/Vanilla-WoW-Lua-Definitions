-- TODO fields
-- TODO add doc
--- @class Region
Region = {}

--- Returns the width of the region.
--- @return number Width of the region (in pixels).
function Region:GetWidth() end

--- Returns the height of the region.
--- @return number Height of the region (in pixels).
function Region:GetHeight() end

--- Sets the region's width.
--- @param width number New width for the region (in pixels); if 0, causes the region's width to be determined automatically according to its anchor points.
--- @return nil
function Region:SetWidth(width) end

--- Sets the region's height.
--- @param height number New height for the region (in pixels); if 0, causes the region's height to be determined automatically according to its anchor points.
--- @return nil
function Region:SetHeight(height) end

--- @alias WidgetAnchorPoint "TOP" | "BOTTOM" | "LEFT" | "RIGHT" | "TOPLEFT" | "TOPRIGHT" | "BOTTOMLEFT" | "BOTTOMRIGHT" | "CENTER"

--- Sets an anchor point for the region.
--- @overload fun(anchorPoint: WidgetAnchorPoint): nil
--- @overload fun(anchorPoint: WidgetAnchorPoint, relativeTo: Region): nil
--- @overload fun(anchorPoint: WidgetAnchorPoint, relativeTo: Region, relativePoint: WidgetAnchorPoint): nil
--- @overload fun(anchorPoint: WidgetAnchorPoint, x: number, y: number): nil
--- @param anchorPoint (WidgetAnchorPoint) Point on this region at which it is to be anchored to another.
--- @param relativeTo Region|nil Reference to the other region to which this region is to be anchored; if nil or omitted, anchors the region relative to its parent (or to the screen dimensions if the region has no parent).
--- @param relativeAnchorPoint WidgetAnchorPoint|nil Point on the other region to which this region is to be anchored; if nil or omitted, defaults to the same value as point.
--- @param x number|nil Horizontal distance between point and relativePoint (in pixels; positive values put point to the right of relativePoint); if nil or omitted, defaults to 0.
--- @param y number|nil Vertical distance between point and relativePoint (in pixels; positive values put point below relativePoint); if nil or omitted, defaults to 0.
--- @return nil
function Region:SetPoint(anchorPoint, relativeTo, relativeAnchorPoint, x, y) end

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

-- TODO make template as enum
-- TODO generate overloads for frameTypes to return correct type (e.g. @overload fun(frameType: "Button"): Button
-- TODO maybe change frameType from abstract string to concrete strings like "Frame", "Button" etc
--- Creates a new Frame object.
--- @overload fun(frameType: string): Frame
--- @overload fun(frameType: string, name: string): Frame
--- @overload fun(frameType: string, name: string, parent: Frame|nil): Frame
--- @param frameType string Type of frame to create; see the widget documentation for details.
--- @param name string Name to assign to the newly created object; used both as the name of the object (retrievable via the GetName method) and as a global variable referencing the object, unless another global by that name already exists.
--- @param parent Frame|nil Reference to another frame to be the new frame's parent.
--- @param template string|nil Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
--- @return Frame
function CreateFrame(frameType, name, parent, template) end

-- TODO use overload?
--- Returns whether an addon is currently loaded.
--- @param nameOrIndex string Name of an addon (name of the addon's folder and TOC file, not the Title found in the TOC.
--- @param nameOrIndex number Index of an addon in the addon list (between 1 and GetNumAddOns()).
--- @return boolean
function IsAddOnLoaded(nameOrIndex) end

-- TODO fields
-- TODO inheritance
-- TODO add doc
--- @class EditBox
EditBox = {}

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

-- TODO fields
-- TODO add doc
--- @class ChatFrame : Frame
--- @field public editBox EditBox
ChatFrame = {}

-- TODO add doc, fields, check type
UIParent = Frame()

DEFAULT_CHAT_FRAME = ChatFrame()
