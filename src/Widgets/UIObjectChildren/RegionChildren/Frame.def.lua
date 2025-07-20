--TODO fields
--TODO add doc
---
---@class Frame : Region
Frame = {}

---
--- Enables or disables mouse interactivity for the frame. Mouse interactivity must be enabled in order for a frame's mouse-related script handlers to be run.
---@param enable boolean True to enable mouse interactivity; false to disable.
function Frame:EnableMouse(enable) end

---
--- Set whether this frame will get mouse wheel notifications.
---@param enable boolean
function Frame:EnableMouseWheel(enable) end

---
--- Registers the frame for an event. The frame's OnEvent script handler will be run whenever the event fires.
---@param event string
function Frame:RegisterEvent(event) end

--TODO describe
---
function Frame:SetBackdrop(...) end

---
--- Sets whether the frame's boundaries should be limited to those of the screen.
---
--- Applies to user moving/resizing of the frame (via :StartMoving(), :StartSizing(), or title region); attempting to move or resize the frame beyond the edges of the screen will move/resize it no further than the edge of the screen closest to the mouse position.
---
--- Does not apply to programmatically setting the frame's position or size.
---@param enable boolean True to limit the frame's boundaries to those of the screen; false to allow the frame to be moved/resized without such limits.
function Frame:SetClampedToScreen(enable) end

---
--- Sets whether the frame can be moved by the user.
---
--- Enabling this property does not automatically implement behaviors allowing the frame to be dragged by the user — such behavior must be implemented in the frame's mouse script handlers. If this property is not enabled, Frame:StartMoving() causes a Lua error.
---
--- For simple automatic frame dragging behavior, see Frame:CreateTitleRegion().
---@param enable boolean True to allow the frame to be moved by the user; false to disable.
function Frame:SetMovable(enable) end

--TODO override for each widget class and specify only relevant ScriptTypes
---
--- Get widget script handler.
---@param scriptType ScriptType Script type (OnShow, OnClick, OnEvent etc).
---@return function|nil
function Frame:GetScript(scriptType) end

--TODO override for each widget class and specify only relevant ScriptTypes
---
--- Set or unset widget script handler.
---@param scriptType ScriptType Script type (OnShow, OnClick, OnEvent etc).
---@param script function|nil Function to call. Pass nil to remove any existing script.
function Frame:SetScript(scriptType, script) end

---
--- Check if the frame can be given a handler of the specified type
---@param scriptType ScriptType
---@return wowboolean
function Frame:HasScript(scriptType) end

---
--- Create and return a new Texture as a child of this Frame.
---@param name? string|nil
---@param layer? string|nil
---@param inheritsFrom? string|nil
---@return Texture
function Frame:CreateTexture(name, layer, inheritsFrom) end

---
--- Get the number of "children" (frames and things derived from frames) this frame has.
---@return number
function Frame:GetNumChildren() end

---
--- Set the frame's backdrop color.
---@overload fun(r: number, g: number, b: number): void
---@param r number
---@param g number
---@param b number
---@param a? number
function Frame:SetBackdropColor(r, g, b, a) end

---
--- Set the frame's backdrop's border's color.
---@overload fun(r: number, g: number, b: number): void
---@param r number
---@param g number
---@param b number
---@param a? number
function Frame:SetBackdropBorderColor(r, g, b, a) end

---
--- Indicate that this frame should no longer be notified when any events occur.
function Frame:UnregisterAllEvents() end

---
--- Get the type of this frame.
---@return string
function Frame:GetFrameType() end

---
--- Get the list of children frames of this frame.
---@return Frame...
function Frame:GetChildren() end

---
--- Get the strata of this frame.
---@return FrameStrata
function Frame:GetFrameStrata() end

---
--- Set the strata of this frame.
---@param strata FrameStrata
function Frame:SetFrameStrata(strata) end

---
--- Set whether the frame should raise itself when clicked.
---@param enable boolean
function Frame:SetToplevel(enable) end

---
--- Start moving the frame.
function Frame:StartMoving() end

---
--- Stop moving and/or sizing this frame.
function Frame:StopMovingOrSizing() end

---
--- Create and return a new FontString as a child of this Frame
---@param name? string|nil
---@param layer? string|nil
---@param inheritsFrom? string|nil
---@return FontString
function Frame:CreateFontString(name, layer, inheritsFrom) end

--TODO
--Frame:CreateTitleRegion() - Create a title region for the frame if it does not have one. - New in 1.11
--Frame:DisableDrawLayer("layer") - Disable rendering of "regions" (fontstrings, textures) in the specified draw layer.
--Frame:EnableDrawLayer("layer") - Enable rendering of "regions" (fontstrings, textures) in the specified draw layer.
--Frame:EnableKeyboard(enableFlag) - Set whether this frame will get keyboard input.
--Frame:GetBackdrop() - Creates and returns a backdrop table suitable for use in SetBackdrop - New in 1.11.
--Frame:GetBackdropBorderColor() - Gets the frame's backdrop border color (r, g, b, a)- New in 1.11.
--Frame:GetBackdropColor() - Gets the frame's backdrop color (r, g, b, a)- New in 1.11.
--Frame:GetEffectiveScale() - Get the scale factor of this object relative to the root window.
--Frame:GetFrameLevel() - Get the level of this frame.
--Frame:GetHitRectInsets() - Gets the frame's hit rectangle inset distances (l, r, t, b) - new in 1.11.
--Frame:GetID() - Get the ID of this frame.
--Frame:GetMaxResize() - Gets the frame's maximum allowed resize bounds (w, h) - new in 1.11.
--Frame:GetMinResize() - Gets the frame's minimum allowed resize bounds (w, h) - new in 1.11.
--Frame:GetNumRegions() - Return the number of "regions" (fontstrings, textures) belonging to this frame.
--Frame:GetRegions() - Return the "regions" (fontstrings, textures) of the frame (multiple return values) belonging to this frame.
--Frame:GetScale() - Get the scale factor of this object relative to its parent.
--Frame:GetTitleRegion() - Return the frame's title region - New in 1.11.
--Frame:IsClampedToScreen() - Gets whether the frame is prohibited from being dragged off screen - New in 1.11.
--Frame:IsFrameType("type") - Determine if this frame is of the specified type, or a subclass of that type.
--Frame:IsKeyboardEnabled() - Get whether this frame will get keyboard input. - New in 1.11.
--Frame:IsMouseEnabled() - Get whether this frame will get mouse input. - New in 1.11.
--Frame:IsMouseWheelEnabled() - Get whether this frame will get mouse wheel notifications. New in 1.11.
--Frame:IsMovable() - Determine if the frame can be moved.
--Frame:IsResizable() - Determine if the frame can be resized.
--Frame:IsToplevel() - Get whether the frame is set as toplevel - New in 1.10.2.
--Frame:IsUserPlaced() - Determine if this frame has been relocated by the user.
--Frame:Lower() - Lower this frame behind other frames.
--Frame:Raise() - Raise this frame above other frames.
--Frame:RegisterAllEvents() - Register this frame to receive all events (For debugging purposes only!) - New in 1.11.
--Frame:RegisterEvent("event") - Indicate that this frame should be notified when event occurs.
--Frame:RegisterForDrag("buttonType"[,"buttonType"...]) - Inidicate that this frame should be notified of drag events for the specified buttons.
--Frame:SetBackdrop([backdropTable]) - Set the backdrop of the frame according to the specification provided.
--Frame:SetClampedToScreen(clamped) - Set whether the frame is prohibited from being dragged off screen - New in 1.11.
--Frame:SetFrameLevel(level) - Set the level of this frame (determines which of overlapping frames shows on top).
--Frame:SetHitRectInsets(left, right, top, bottom) - Set the inset distances for the frame's hit rectangle - New in 1.11.
--Frame:SetID(id) - Set the ID of this frame.
--Frame:SetMaxResize(maxWidth, maxHeight) - Set the maximum dimensions this frame can be resized to.
--Frame:SetMinResize(minWidth, minHeight) - Set the minimum dimensions this frame can be resized to.
--Frame:SetMovable(isMovable) - Set whether the frame can be moved.
--Frame:SetResizable(isResizable) - Set whether the frame can be resized.
--Frame:SetScale(scale) - Set the scale factor of this frame relative to its parent.
--Frame:SetUserPlaced(isUserPlaced) - Set whether the frame has been relocated by the user (and will thus be saved in the layout cache).
--Frame:StartSizing("point") - Start sizing this frame using the specified anchor point.
--Frame:UnregisterEvent("event") - Indicate that this frame should no longer be notified when event occurs.
