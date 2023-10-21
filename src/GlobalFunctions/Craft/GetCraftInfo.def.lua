---
--- Returns information about single skill line in currently opened craft window.
--- Returns fields in following order:
--- [1] craftName @ Name of the item you can craft
--- [2] craftSubSpellName
--- [3] craftType @ "header" or how hard it is to create the item; trivial, easy, medium or optimal
--- [4] numAvailable @ number of items you can create with the reagents you have in your inventory
--- [5] isExpanded @ Only applies to headers. Indicates whether they are expanded or contracted. Nil if not applicable.
---@param index number @ from 1 to GetNumCrafts()
---@return string|nil, string|nil, string|nil, number|nil, boolean|nil
function GetCraftInfo(index) end
