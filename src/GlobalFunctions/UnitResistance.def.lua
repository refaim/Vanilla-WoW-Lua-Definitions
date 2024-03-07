---
--- Returns unit resistance information.
--- effective = base + positiveBuff + negativeBuff
---@param unitId UnitId
---@param resistanceIndex 0|1|2|3|4|5|6 @ physical, holy, fire, nature, frost, shadow, arcane
---@return number, number, number, number @ base, effective, positiveBuff, negativeBuff
function UnitResistance(unitId, resistanceIndex) end
