---
--- Returns the absolute value of `x`. (integer/float)
---@param x number
---@return number
function abs(x) return 0 end

---
--- Returns the smallest integer larger than or equal to `x`.
---@param x number
---@return number
function ceil(x) return 0 end

---
--- Returns a formatted version of its variable number of arguments following
--- the description given in its first argument (which must be a string). The
--- format string follows the same rules as the ISO C function `sprintf`. The
--- only differences are that the options/modifiers `*`, `h`, `L`, `l`, `n`, and
--- `p` are not supported and that there is an extra option, `q`.
---
--- The `q` option formats booleans, nil, numbers, and strings in a way that the
--- result is a valid constant in Lua source code. Booleans and nil are written
--- in the obvious way (`true`, `false`, `nil`). Floats are written in
--- hexadecimal, to preserve full precision. A string is written between double
--- quotes, using escape sequences when necessary to ensure that it can safely
--- be read back by the Lua interpreter. For instance, the call
---
--- format('%q', 'a string with "quotes" and \n new line') may produce
--- the string:
---
--- > "a string with \"quotes\" and \
--- > new line"
---
--- The options `A`, `a`, `E`, `e`, `f`, `g`, `G` and `g` all expect a number as
--- argument. Options `c`, `d`, `i`, `o`, `u`, `X`, and `x` expect an integer.
--- When Lua is compiled with a C89 compiler, options `A` and `a` (hexadecimal
--- floats) do not support any modifier (flags, width, length).
---
--- Option `s` expects a string; if its argument is not a string, it is
--- converted to one following the same rules of `tostring`. If the option
--- has any modifier (flags, width, length), the string argument should not
--- contain embedded zeros.
---@param formatstring string
---@return string
function format(formatstring, ...) end

---
--- Returns the size of a table, when seen as a list. If the table has an n field
--- with a numeric value, this value is the size of the table. Otherwise, if there
--- was a previous call to table.setn over this table, the respective value is
--- returned. Otherwise, the size is one less the first integer index with a nil value.
---@param table table
---@return number
function getn(table) end

---
--- Sorts list elements in a given order, *in-place*, from `list[1]` to
--- `list[getn(list)]`. If `comp` is given, then it must be a function that receives
--- two list elements and returns true when the first element must come before
--- the second in the final order (so that, after the sort, `i < j` implies not
--- `comp(list[j],list[i]))`. If `comp` is not given, then the standard Lua
--- operator `<` is used instead.
---
--- Note that the `comp` function must define a strict partial order over the
--- elements in the list; that is, it must be asymmetric and transitive.
--- Otherwise, no valid sort may be possible.
---
--- The sort algorithm is not stable: elements considered equal by the given
--- order may have their relative positions changed by the sort.
---@overload fun<V>(list:V[]):number
---@generic V
---@param list V[]
---@param comp fun(a:V, b:V):boolean
---@return number
function sort(list, comp) end

---
--- Receives a string and returns a copy of this string with all uppercase
--- letters changed to lowercase. All other characters are left unchanged. The
--- definition of what an uppercase letter is depends on the current locale.
---@param s string
---@return string
function strlower(s) end

---
--- Receives a string and returns a copy of this string with all lowercase
--- letters changed to uppercase. All other characters are left unchanged. The
--- definition of what a lowercase letter is depends on the current locale.
---@param s string
---@return string
function strupper(s) end

---
--- Inserts element `value` at position `pos` in `list`, shifting up the
--- elements to `list[pos]`, `list[pos+1]`, `···`, `list[getn(list)]`. The default
--- value for `pos` is `getn(list)+1`, so that a call `tinsert(t,x)`` inserts
--- `x` at the end of list `t`.
---@overload fun<T>(list:T[], value:T):void
---@generic T
---@param list T[]
---@param pos number
---@param value T
function tinsert(list, pos, value) end

---
--- Removes from `list` the element at position `pos`, returning the value of
--- the removed element. When `pos` is an integer between 1 and `getn(list)`, it
--- shifts down the elements `list[pos+1]`, `list[pos+2]`, `···`,
--- `list[getn(list)]` and erases element `list[getn(list)]`; The index pos can also be 0
--- when `getn(list)` is 0, or `getn(list)` + 1; in those cases, the function erases
--- the element `list[pos]`.
---
--- The default value for `pos` is `getn(list)`, so that a call `table.remove(l)`
--- removes the last element of list `l`.
---@overload fun<V>(list:V[]):V
---@generic V
---@param list V[]
---@param pos number
---@return V
function tremove(list, pos) end
