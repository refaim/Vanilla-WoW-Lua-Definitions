---
---@class SimpleHTML : Frame
SimpleHTML = {}

--TODO doc

--TODO
--SimpleHTML appears to have all the methods of FontInstance, and they can indeed be used in the same way to set the default font, but they all have an optional first parameter for which element's font to set ("h1", "h2", "p", etc). The Font instance methods are not reflected in the SimpleHTML frame until you SetText on the frame. It also appears that you can only supply the block elements and not the inline elements (ie Hyperlinks cannot be colored a different color). Other than that, see FontInstance for documentation of these methods.

--TODO
--SimpleHTML:GetFont(["element"])
--SimpleHTML:GetFontObject(["element"])
--SimpleHTML:GetHyperlinkFormat() - Set the string.format format to use for displaying hyperlinks - New in 1.11.
--SimpleHTML:GetJustifyH(["element"])
--SimpleHTML:GetJustifyV(["element"])
--SimpleHTML:GetShadowColor(["element"])
--SimpleHTML:GetShadowOffset(["element"])
--SimpleHTML:GetSpacing(["element"])
--SimpleHTML:GetTextColor(["element"])
--SimpleHTML:SetFont(["element",] "path", height[,"flags"])
--SimpleHTML:SetFontObject(["element",] fontObject)
--SimpleHTML:SetHyperlinkFormat("format") - Set the string.format format to use for displaying hyperlinks.
--SimpleHTML:SetJustifyH(["element",] "justifyH")
--SimpleHTML:SetJustifyV(["element",] "justifyV")
--SimpleHTML:SetShadowColor(["element",] r, g, b[, a])
--SimpleHTML:SetShadowOffset(["element",] x, y)
--SimpleHTML:SetSpacing(["element",] lineSpacing)
--SimpleHTML:SetText("text") - Set the HTML markup to be displayed (note: if there is any markup error, it will be displayed as plain text)
--SimpleHTML:SetTextColor(["element",] r, g, b[, a])
