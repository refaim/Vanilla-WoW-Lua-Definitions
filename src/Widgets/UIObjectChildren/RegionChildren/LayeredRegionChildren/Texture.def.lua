---
---@class Texture : LayeredRegion
Texture = {}

---
--- Sets the texture to be displayed from a file or to a solid color
---@overload fun(r: number, g: number, b:number, alpha?: number)
---@param texturePath string path to a file with texture
function Texture:SetTexture(texturePath) end

---
--- Set the corner coordinates for texture display
---@overload fun(ULx: number, ULy: number, LLx: number, LLy: number, URx: number, URy: number, LRx: number, LRy: number)
---@param minX number
---@param maxX number
---@param minY number
---@param maxY number
function Texture:SetTexCoord(minX, maxX, minY, maxY) end

--- BLEND - normal blending
--- ADD - additive blend
--- ALPHAKEY - 1-bit alpha
--- DISABLE - opaque texture
--- MOD - modulating blend
---@alias BlendMode "BLEND" | "ADD" | "ALPHAKEY" | "DISABLE" | "MOD"

---
--- Set the alphaMode of the texture.
---@param mode BlendMode
function Texture:SetBlendMode(mode) end

--TODO doc
--TODO
--Texture:GetBlendMode() - Return the blend mode set by SetBlendMode()
--Texture:GetTexCoord() - Gets the 8 texture coordinates that map to the Texture's corners - New in 1.11.
--Texture:GetTexCoordModifiesRect() - Get the SetTexCoordModifiesRect setting - New in 1.11
--Texture:GetTexture() - Gets this texture's current texture path.
--Texture:GetVertexColor() - Gets the vertex color for the Texture.
--Texture:IsDesaturated() - Gets the desaturation state of this Texture. - New in 1.11
--Texture:SetDesaturated(flag) - Set whether this texture should be displayed with no saturation (Note: This has a return value)
--Texture:SetGradient("orientation", minR, minG, minB, maxR, maxG, maxB)
--Texture:SetGradientAlpha("orientation", minR, minG, minB, minA, maxR, maxG, maxB, maxA)
--Texture:SetTexCoordModifiesRect(enableFlag) - Set whether future SetTexCoord operations should modify the display rectangle rather than stretch the texture. - New in 1.11
