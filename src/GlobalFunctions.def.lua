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