---
--- Works only if trade skill window is opened.
--- Set the inventory slot type filter.
---@param slotIndex number @ index of the specific slot
---@param enable wowboolean @ enable or disable filter
---@param exclusive wowboolean @ sets if the slot is the only slot to be selected
---@overload fun(slotIndex: number, enable: wowboolean): void
function SetTradeSkillInvSlotFilter(slotIndex, enable, exclusive) end
