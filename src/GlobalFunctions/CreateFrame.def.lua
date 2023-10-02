--TODO make template enum
--TODO generate overloads for frameTypes to return correct type (e.g. @overload fun(frameType: "Button"): Button
--TODO maybe change frameType from abstract string to concrete strings like "Frame", "Button" etc
--TODO forbid name == ""

---
--- Creates a new Frame object.
---@param frameType string Type of frame to create; see the widget documentation for details.
---@param name? string|nil Name to assign to the newly created object; used both as the name of the object (retrievable via the GetName method) and as a global variable referencing the object, unless another global by that name already exists.
---@param parent? Frame|nil Reference to another frame to be the new frame's parent.
---@param template? string|nil Name of a template to be used in creating the frame; if creating a frame from multiple templates, a comma-separated list of names.
---@return Frame
function CreateFrame(frameType, name, parent, template) end
