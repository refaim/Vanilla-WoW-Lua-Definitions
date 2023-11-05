---
--- UIObject is an abstract UI object type that is used to group together methods that are common to all user interface types. All of the various user interface elements in World of Warcraft are derived from UIObject.
---@class UIObject
UIObject = {}

---
--- Get the type of this object.
---@return string
function UIObject:GetObjectType() end

---
--- Determine if this object is of the specified type, or a subclass of that type.
---@param type string
---@return boolean
function UIObject:IsObjectType(type) end

---
--- Return the name of the object.
---@return string
function UIObject:GetName() end

--TODO
--function UIObject:GetAlpha() end - Return this object's alpha (transparency) value.
--function UIObject:SetAlpha(alpha) - Set the object's alpha (transparency) value.
