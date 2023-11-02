---
---@class LayeredRegion : Region
LayeredRegion = {}

---
--- Sets the vertex shading color of the region.
---@overload fun(r: number, g: number, b: number): void
---@param r number
---@param g number
---@param b number
---@param alpha? number
function LayeredRegion:SetVertexColor(r, g, b, alpha) end

--TODO
--LayeredRegion:GetDrawLayer() - Returns the draw layer for the Region - New in 1.10.
--LayeredRegion:SetDrawLayer("layer") - Sets the draw layer for the Region - New in 1.10.

--TODO abstract class
--TODO doc
