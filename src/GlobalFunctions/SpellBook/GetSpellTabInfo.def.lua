---
--- Returns information about spellbook tab.
--- Offset is the number of spells before this tab (will be one less than the index of the first spell in this tab).
---@param index number @ from 1 to MAX_SKILLLINE_TABS
---@return string|nil, string|nil, number|nil, number|nil @ name, texture, offset, numSpells
function GetSpellTabInfo(index) end
