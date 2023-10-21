---
--- Retrieves information about a specific trade skill. Trade Skill window must be open for this to work.
--- Returns fields in following order:
--- [1] skillName @ The name of the skill, e.g. "Copper Breastplate" or "Daggers", if the skillIndex references to a heading.
--- [2] skillType @ Either "header", if the index references to a heading, or a string indicating the difficulty to craft the item ("trivial", "easy", "medium", "optimal", "difficult").
--- [3] numAvailable @ The number of items the player can craft with his available trade goods.
--- [4] isExpanded @ Returns if the header of the index is expanded in the crafting window or not
---@param index number @ from 1 to GetNumCrafts()
---@return string|nil, string|nil, number|nil, boolean|nil
function GetTradeSkillInfo(index) end
