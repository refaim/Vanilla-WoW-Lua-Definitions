---
---@class GameTooltip : Frame
GameTooltip = {}

---
--- Appends a line of text to the game tooltip widget.
---@param text string
---@param r number @ red color value
---@param g number @ green color value
---@param b number @ blue color value
---@param wrap wowboolean @ wrap text?
---@overload fun(text: string): void
---@overload fun(text: string, r: number, g: number, b: number): void
---@overload fun(text: string, r: nil, g: nil, b: nil, wrap: wowboolean): void
function GameTooltip:AddLine(text, r, g, b, wrap) end

---
--- Appends a two-part line of text to the game tooltip widget.
---@param textL string @ left part
---@param textR string @ right part
---@param rL number @ red color value of a left part
---@param gL number @ green color value of a left part
---@param bL number @ blue color value of a left par
---@param rR number @ red color value of a right part
---@param gR number @ green color value of a right part
---@param bR number @ blue color value of a right part
---@overload fun(textL: string, textR: string): void
---@overload fun(textL: string, textR: string, rL: number, gL: number, bL: number): void
function GameTooltip:AddDoubleLine(textL, textR, rL, gL, bL, rR, gR, bR) end

---
--- Sets tooltip item for the merchant frame.
---@param itemIndex number The index of the item in the merchant's inventory.
function GameTooltip:SetMerchantItem(itemIndex) end

---
--- Get the number of lines in the tooltip
---@return number
function GameTooltip:NumLines() end

---
--- Checks if the tooltip is currently owned by the specified frame.
---@param frame Frame
---@return wowboolean
function GameTooltip:IsOwned(frame) end

---@alias TooltipAnchor "ANCHOR_TOPRIGHT" | "ANCHOR_RIGHT" | "ANCHOR_BOTTOMRIGHT" | "ANCHOR_TOPLEFT" | "ANCHOR_LEFT" | "ANCHOR_BOTTOMLEFT" | "ANCHOR_CURSOR" | "ANCHOR_PRESERVE" | "ANCHOR_NONE"

---
--- Sets the owner of the tooltip to the specified frame.
---@param frame Frame
---@param anchor TooltipAnchor
---@param x ?number|nil
---@param y ?number|nil
function GameTooltip:SetOwner(frame, anchor, x, y) end

---
--- Shows the tooltip for the specified hyperlink (usually item link).
---@param link string
function GameTooltip:SetHyperlink(link) end

--TODO
--GameTooltip:AddFontStrings(leftstring, rightstring) - Dynamically expands the size of a tooltip - New in 1.11.
--GameTooltip:AppendText("text") - Append text to the end of the first line of the tooltip.
--GameTooltip:ClearLines
--GameTooltip:FadeOut
--GameTooltip:GetAnchorType() - Returns the current anchoring type.
--GameTooltip:SetAction(slot) - Shows the tooltip for the specified action button.
--GameTooltip:SetAuctionCompareItem("type", index[, offset])
--GameTooltip:SetAuctionItem("type", index) - Shows the tooltip for the specified auction item.
--GameTooltip:SetAuctionSellItem
--GameTooltip:SetBagItem(bag, slot)
--GameTooltip:SetBuybackItem
--GameTooltip:SetCraftItem
--GameTooltip:SetCraftSpell
--GameTooltip:SetInboxItem(index) - Shows the tooltip for the specified mail inbox item.
--GameTooltip:SetInventoryItem(unit, slot[, nameOnly])
--GameTooltip:SetLootItem
--GameTooltip:SetLootRollItem(id) - Shows the tooltip for the specified loot roll item.
--GameTooltip:SetMerchantCompareItem("slot"[, offset])
--GameTooltip:SetMinimumWidth(width) - (Formerly SetMoneyWidth)
--GameTooltip:SetPadding
--GameTooltip:SetPetAction(slot) - Shows the tooltip for the specified pet action.
--GameTooltip:SetPlayerBuff(buffIndex) - Direct the tooltip to show information about a player's buff.
--GameTooltip:SetQuestItem
--GameTooltip:SetQuestLogItem
--GameTooltip:SetQuestLogRewardSpell
--GameTooltip:SetQuestRewardSpell
--GameTooltip:SetSendMailItem
--GameTooltip:SetShapeshift(slot) - Shows the tooltip for the specified shapeshift form.
--GameTooltip:SetSpell(spellId, spellbookTabNum) - Shows the tooltip for the specified spell.
--GameTooltip:SetTalent(tabIndex, talentIndex) - Shows the tooltip for the specified talent.
--GameTooltip:SetText("text", r, g, b[, alphaValue[, textWrap]]) - Set the text of the tooltip.
--GameTooltip:SetTrackingSpell
--GameTooltip:SetTradePlayerItem
--GameTooltip:SetTradeSkillItem
--GameTooltip:SetTradeTargetItem
--GameTooltip:SetTrainerService
--GameTooltip:SetUnit
--GameTooltip:SetUnitBuff("unitId", buffIndex[, raidFilter]) - Shows the tooltip for a unit's buff.
--GameTooltip:SetUnitDebuff("unitId", buffIndex[, raidFilter]) - Shows the tooltip for a unit's debuff.
