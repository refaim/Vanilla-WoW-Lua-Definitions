---@alias ItemQuality 0 | 1 | 2 | 3 | 4 | 5 | 6

---
--- Return information about a specific item.
--- Returns fields in following order:
--- [1] itemName @ The name of the item
--- [2] itemLink @ The item id in string format, e.g. "item:12345:0:0:0".
--- [3] itemQuality @ The quality of the item. The value is 0 to 6, which represents Poor to Artifact.
--- [4] itemMinLevel @ The minimum level required to use the item, 0 being no level requirement.
--- [5] itemType @ The type of the item. Armor, Weapon, Quest, Key, etc.
--- [6] itemSubType @ The sub type of the item. Enchanting, Cloth, Sword, etc.
--- [7] itemStackCount @ How many of the item per stack. ie. 20 for Runecloth, 1 for weapon, 100 for Alterac Ram Hide, etc.
--- [8] itemEquipLoc @ Where the item may be equipped, if it can. The string returned is also the name of a global string variable, i.e. for "INVTYPE_HEAD" there is a INVTYPE_HEAD variable containing a localized, displayable name of the location.
--- [9] itemTexture @ The name and path for the inventory icon texture for the item.
---@overload fun(itemLink: string): string, string, ItemQuality, number, string, string, number, string, string
---@param itemId number
---@return string, string, ItemQuality, number, string, string, number, string, string
function GetItemInfo(itemId) end
