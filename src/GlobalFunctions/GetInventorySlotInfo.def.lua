---
--- Returns info for an equipment slot.
--- Returns fields in following order:
--- [1] slotId @ The ID to use to refer to that slot in the other GetInventory functions.
--- [2] slotTexture @ The texture to use for the empty slot on the paper doll display.
--- [3] checkRelic @ ???
---@param slotName string @ slot name to query ("HeadSlot", "NeckSlot" etc)
---@return number, string, wowboolean
function GetInventorySlotInfo(slotName) end
