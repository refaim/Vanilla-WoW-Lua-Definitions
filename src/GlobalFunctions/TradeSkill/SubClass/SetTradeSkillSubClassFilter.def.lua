---
--- Works only if trade skill window is opened.
--- Set the subclass filter.
---@param subclassIndex number @ index of the specific subclass
---@param enable wowboolean @ enable or disable filter
---@param exclusive wowboolean @ sets if the subclass is the only subclass to be selected
---@overload fun(subclassIndex: number, enable: wowboolean): void
function SetTradeSkillSubClassFilter(subclassIndex, enable, exclusive) end
