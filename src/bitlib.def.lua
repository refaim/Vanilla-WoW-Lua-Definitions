---@class bit
bit = {}

---
--- returns the one's complement of a
---@param a number
---@return number
function bit.bnot(a) end

---
--- returns the bitwise and of the w's
---@param w1 number
---@vararg number
---@return number
function bit.band(w1, ...) end

---
--- returns the bitwise or of the w's
---@param w1 number
---@vararg number
---@return number
function bit.bor(w1, ...) end

---
--- returns the bitwise exclusive or of the w's
---@param w1 number
---@vararg number
---@return number
function bit.bxor(w1, ...) end

---
--- returns a shifted left b places
---@param a number
---@param b number
---@return number
function bit.lshift(a, b) end

---
--- returns a shifted logically right b places
---@param a number
---@param b number
---@return number
function bit.rshift(a, b) end

---
--- returns a shifted arithmetically right b places
---@param a number
---@param b number
---@return number
function bit.arshift(a, b) end

---
--- returns the integer remainder of a divided by b
---@param a number
---@param b number
---@return number
function bit.mod(a, b) end
