---
--- Initializes the dropdown menu frame.
---@param frame Frame|nil @ uses current frame if not specified
---@param initFunction fun(level:number):void @ function to populate the dropdown list
---@param displayMode ?string|nil @ pass "MENU" to setup dropdown as context menu
---@param level ?number|nil @ menu level, will be passed to initFunction
function UIDropDownMenu_Initialize(frame, initFunction, displayMode, level) end
