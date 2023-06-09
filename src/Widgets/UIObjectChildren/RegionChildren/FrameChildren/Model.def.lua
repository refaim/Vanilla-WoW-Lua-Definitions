---
---@class Model : Frame
Model = {}

--TODO doc
--TODO
--Model:AdvanceTime()
--Model:ClearFog() - Removes all fogging effects currently active in rendering.
--Model:ClearModel() - Removes all geometry from the Model (i.e. makes it empty)
--Model:GetFacing() - Returns the direction the model is facing.
--Model:GetFogColor() - Gets the fog color (r, g, b, a) - New in 1.11.
--Model:GetFogFar() - Gets the fog far distance - New in 1.11.
--Model:GetFogNear() - Gets the fog near distance - New in 1.11.
--Model:GetLight() - Gets the light specification for the model, returns a list of results compatible with the SetLight method - New in 1.11.
--Model:GetModel() - Gets the model file for this Model - New in 1.11.
--Model:GetModelScale() - Returns the current mesh scaling factor.
--Model:GetPosition() - Returns the current position of the mesh as x, y, z
--Model:ReplaceIconTexture("texture")
--Model:SetCamera(index) - Select a pre-defined camera.
--Model:SetFacing(facing) - Set the direction that the model is facing.
--Model:SetFogColor(r, g, b[, a]) - Set the fog color and enable fogging.
--Model:SetFogFar(value) - Set the far-clipping plane distance for fogging.
--Model:SetFogNear(value) - Set the near-clipping plane distance for fogging.
--Model:SetLight(enabled[, omni, dirX, dirY, dirZ, ambIntensity[, ambR, ambG, ambB[, dirIntensity[, dirR, dirG, dirB]]]]) - Place the light source used for rendering
--Model:SetModel("file") - Set the mesh that is displayed in the frame.
--Model:SetModelScale(scale) - Sets the scale factor for the mesh before rendering.
--Model:SetPosition(x, y, z) - Set the position of the mesh inside the frame's coordinate system.
--Model:SetSequence(sequence) - Set the animation to be played.
--Model:SetSequenceTime(sequence, time)
