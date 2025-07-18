---
--- Load an addon if the LoadOnDemand was specified in addon TOC file
--- Returns fields in following order:
--- [1] loaded @ If the addon is successfully loaded or was already loaded
--- [2] failureReason @ Reason why the addon could not be loaded e.g. "DISABLED", otherwise nil if the addon was loaded
---@overload fun(index: number): wowboolean, string
---@param name string
---@return wowboolean, string
function LoadAddOn(name) end
