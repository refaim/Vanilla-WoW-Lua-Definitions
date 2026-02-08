---
--- Returns information about a friend.
--- Returns name, level, class, area, connected flag and status (AFK or DND).
--- Value of level will be equal to 0 if unknown.
--- Value of class and area will equal to global var UNKNOWN if unknown
---@return string|nil, number, string, string, wowboolean, string|nil
function GetFriendInfo(index) end
