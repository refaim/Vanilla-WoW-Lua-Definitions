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

--TODO
--GameTooltip:AddFontStrings(leftstring, rightstring) - Dynamically expands the size of a tooltip - New in 1.11.
--GameTooltip:AppendText("text") - Append text to the end of the first line of the tooltip.
--GameTooltip:ClearLines
--GameTooltip:FadeOut
--GameTooltip:GetAnchorType() - Returns the current anchoring type.
--GameTooltip:IsOwned(frame) - Returns true if the tooltip is currently owned by the specified frame - Since 1.8.
--GameTooltip:NumLines() - Get the number of lines in the tooltip.
--GameTooltip:SetAction(slot) - Shows the tooltip for the specified action button.
--GameTooltip:SetAuctionCompareItem("type", index[, offset])
--GameTooltip:SetAuctionItem("type", index) - Shows the tooltip for the specified auction item.
--GameTooltip:SetAuctionSellItem
--GameTooltip:SetBagItem(bag, slot)
--GameTooltip:SetBuybackItem
--GameTooltip:SetCraftItem
--GameTooltip:SetCraftSpell
--GameTooltip:SetHyperlink(link) - Shows the tooltip for the specified hyperlink (usually item link).
--GameTooltip:SetInboxItem(index) - Shows the tooltip for the specified mail inbox item.
--GameTooltip:SetInventoryItem(unit, slot[, nameOnly])
--GameTooltip:SetLootItem
--GameTooltip:SetLootRollItem(id) - Shows the tooltip for the specified loot roll item.
--GameTooltip:SetMerchantCompareItem("slot"[, offset])
--GameTooltip:SetMinimumWidth(width) - (Formerly SetMoneyWidth)
--GameTooltip:SetOwner
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
