---
---@class Texture : LayeredRegion
Texture = {}

--TODO doc
--TODO
--Texture:GetBlendMode() - Return the blend mode set by SetBlendMode()
--Texture:GetTexCoord() - Gets the 8 texture coordinates that map to the Texture's corners - New in 1.11.
--Texture:GetTexCoordModifiesRect() - Get the SetTexCoordModifiesRect setting - New in 1.11
--Texture:GetTexture() - Gets this texture's current texture path.
--Texture:GetVertexColor() - Gets the vertex color for the Texture.
--Texture:IsDesaturated() - Gets the desaturation state of this Texture. - New in 1.11
--Texture:SetBlendMode("mode") - Set the alphaMode of the texture.
--Texture:SetDesaturated(flag) - Set whether this texture should be displayed with no saturation (Note: This has a return value)
--Texture:SetGradient("orientation", minR, minG, minB, maxR, maxG, maxB)
--Texture:SetGradientAlpha("orientation", minR, minG, minB, minA, maxR, maxG, maxB, maxA)
--Texture:SetTexCoord(minX, maxX, minY, maxY or ULx, ULy, LLx, LLy, URx, URy, LRx, LRy) - Set the corner coordinates for texture display.
--Texture:SetTexCoordModifiesRect(enableFlag) - Set whether future SetTexCoord operations should modify the display rectangle rather than stretch the texture. - New in 1.11
--Texture:SetTexture("texturePath" or r, g, b[, a]) - Sets the texture to be displayed from a file or to a solid color.
