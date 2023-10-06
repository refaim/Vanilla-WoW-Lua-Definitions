---
--- Returns whether an addon is currently loaded.
---@overload fun(addon: number): wowboolean
---@param addon string Name of an addon (name of the addon's folder and TOC file, not the Title found in the TOC.
---@param addon number Index of an addon in the addon list (between 1 and GetNumAddOns()).
---@return wowboolean
function IsAddOnLoaded(addon) end
