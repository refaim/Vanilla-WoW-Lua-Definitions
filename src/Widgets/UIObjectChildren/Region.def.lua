---
--- This is an abstract object type which cannot actually be created. It gathers together a number of common methods which have identical behaviours across all widget types.
---
--- Note that it is not related to Frame:GetRegions().
---@class Region : UIObject
Region = {}

---
--- Removes all anchor points from the region.
function Region:ClearAllPoints() end

---
--- Set all anchors to match edges of specified frame.
---@param frame Region|string
function Region:SetAllPoints(frame) end

---
--- Returns the height of the region.
---@return number Height of the region (in pixels).
function Region:GetHeight() end

---
--- Returns the width of the region.
---@return number Width of the region (in pixels).
function Region:GetWidth() end

---
--- Determine if this object is shown (would be visible if its parent was visible).
---@return boolean
function Region:IsShown() end

---
--- Get whether the object is visible on screen (logically (IsShown() and GetParent():IsVisible())).
---@return boolean
function Region:IsVisible() end

---
--- Sets the region's height.
---@param height number New height for the region (in pixels); if 0, causes the region's height to be determined automatically according to its anchor points.
function Region:SetHeight(height) end

---
--- Sets the region's width.
---@param width number New width for the region (in pixels); if 0, causes the region's width to be determined automatically according to its anchor points.
function Region:SetWidth(width) end

---
--- Set this object to shown (it will appear if its parent is visible).
function Region:Show() end

---
--- Set this object to hidden (it and all of its children will disappear).
function Region:Hide() end


--TODO
--Region:GetBottom() - Get the y location of the bottom edge of this frame - Moved in 1.10. !!! may return nil (probably relevant to all such functions)
--Region:GetCenter() - Get the coordinates of the center of this frame - Moved in 1.10.
--Region:GetLeft() - Get the x location of the left edge of this frame - Moved in 1.10.
--Region:GetNumPoints() - Get the number of anchor points for this frame - New in 1.10.
--Region:GetParent() - Get the parent of this frame (The object, not just the name) - Moved in 1.10.
--Region:GetPoint(pointNum) - Get details for an anchor point for this frame (point, relativeTo, relativePoint, xofs, yofs) - New in 1.10.
--Region:GetRight() - Get the x location of the right edge of this frame - Moved in 1.10.
--Region:GetTop() - Get the y location of the top edge of this frame - Moved in 1.10.
--Region:SetParent(parent or "parentName") - Set the parent for this frame - Moevd in 1.10.

--TODO probably should rename to FramePoint (see UI.xsd)
---
---@alias WidgetAnchorPoint "TOP" | "BOTTOM" | "LEFT" | "RIGHT" | "TOPLEFT" | "TOPRIGHT" | "BOTTOMLEFT" | "BOTTOMRIGHT" | "CENTER"

--TODO x and y should both be specified or not specified, need to fix annotation
---
--- Sets an anchor point for the region.
---@overload fun(anchorPoint: WidgetAnchorPoint, x: number, y: number)
---@param anchorPoint WidgetAnchorPoint Point on this region at which it is to be anchored to another.
---@param relativeTo? Region|nil Reference to the other region to which this region is to be anchored; if nil or omitted, anchors the region relative to its parent (or to the screen dimensions if the region has no parent).
---@param relativeAnchorPoint? WidgetAnchorPoint|nil Point on the other region to which this region is to be anchored; if nil or omitted, defaults to the same value as point.
---@param x? number|nil Horizontal distance between point and relativePoint (in pixels; positive values put point to the right of relativePoint); if nil or omitted, defaults to 0.
---@param y? number|nil Vertical distance between point and relativePoint (in pixels; positive values put point below relativePoint); if nil or omitted, defaults to 0.
function Region:SetPoint(anchorPoint, relativeTo, relativeAnchorPoint, x, y) end
