BOOKTYPE_SPELL = "spell"
BOOKTYPE_PET = "pet"

---
--- Returns information about a spell in spell book.
---@param spellIndex number
---@param bookType "spell" | "pet" @ use BOOKTYPE_SPELL and BOOKTYPE_PET global variables
---@return string|nil, string|nil @ name, rank
function GetSpellName(spellIndex, bookType) end
