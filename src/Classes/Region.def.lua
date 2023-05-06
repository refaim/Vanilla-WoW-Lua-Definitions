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