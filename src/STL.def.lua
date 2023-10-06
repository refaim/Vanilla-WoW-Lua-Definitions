---
--- Returns the absolute value of `x`. (integer/float)
---@param x number
---@return number
function abs(x) end

---
--- Returns the arc cosine of `x` (in degrees).
---@param x number
---@return number
function acos(x) end

---
--- Returns the arc sine of `x` (in degrees).
---@param x number
---@return number
function asin(x) end

---
--- Returns the arc tangent of `x` (in degrees).
---@param x number
---@return number
function atan(x) end

---
--- Returns the arc tangent of `y/x` (in degrees), but uses the signs of both
--- parameters to find the quadrant of the result. (It also handles correctly
--- the case of `x` being zero.)
---
--- The default value for `x` is 1, so that the call `atan(y)`` returns the
--- arc tangent of `y`.
---@param y number
---@param x number
---@return number
function atan2(y, x) end

---
--- Returns the cosine of `x` (assumed to be in degrees).
---@param x number
---@return number
function cos(x) end

---
--- Returns the smallest integer larger than or equal to `x`.
---@param x number
---@return number
function ceil(x) end

---
--- Converts the angle `x` from radians to degrees.
---@param x number
---@return number
function deg(x) end

---
--- Returns the value *e^x* (where e is the base of natural logarithms).
---@param x number
---@return number
function exp(x) end

---
--- Returns the largest integer smaller than or equal to `x`.
---@param x number
---@return number
function floor(x) end

---
--- Executes the given f over all elements of `table`. For each element, `f` is
--- called with the index and respective value as arguments. If `f` returns a
--- non-nil value, then the loop is broken, and this value is returned as the
--- final value of `foreach`.
--- See the `next` function for extra information about table traversals.
---
---@param table table
---@param f fun(key:any, value:any):any
function foreach (table, f) end

---
--- Executes the given `f` over the numerical indices of `table`. For each index,
--- `f` is called with the index and respective value as arguments. Indices are
--- visited in sequential order, from 1 to `n`, where `n` is the size of the `table`
--- (see 5.4). If `f` returns a non-nil value, then the loop is broken and this
--- value is returned as the result of `foreachi`.
---
---@param table table
---@param f fun(index:number, value:any):any
function foreachi(table, f) end

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
--- Returns `m` and `e` such that *x = m2^e*, `e` is an integer and the
--- absolute value of `m` is in the range *[0.5, 1)* (or zero when `x` is zero).
---@param x number
---@return number
function frexp(x) end

---
--- Returns the size of a table, when seen as a list. If the table has an n field
--- with a numeric value, this value is the size of the table. Otherwise, if there
--- was a previous call to table.setn over this table, the respective value is
--- returned. Otherwise, the size is one less the first integer index with a nil value.
---@param table table
---@return number
function getn(table) end

---
--- Returns a copy of `s` in which all occurrences of the pattern `pat` have
--- been replaced by a replacement string specified by `repl`. `gsub` also
--- returns, as a second value, the total number of substitutions made.
---
--- If `repl` is a string, then its value is used for replacement. Any sequence
--- in `repl` of the form `%n`, with `n` between 1 and 9, stands for the value
--- of the `n`-th captured substring (see below).
---
--- If `repl` is a function, then this function is called every time a match
--- occurs, with all captured substrings passed as arguments, in order; if the
--- pattern specifies no captures, then the whole match is passed as a sole
--- argument. If the value returned by this function is a string, then it is
--- used as the replacement string; otherwise, the replacement string is the
--- empty string.
---
--- The optional last parameter `n` limits the maximum number of substitutions
--- to occur. For instance, when `n` is 1 only the first occurrence of `pat` is
--- replaced.
---
--- Here are some examples:
--- `x = string.gsub("hello world", "(%w+)", "%1 %1")`
--- `--> x="hello hello world world"`
--- `x = string.gsub("hello world", "%w+", "%0 %0", 1)`
--- `--> x="hello hello world"`
--- `x = string.gsub("hello world from Lua", "(%w+)%s*(%w+)", "%2 %1")`
--- `--> x="world hello Lua from"`
--- `x = string.gsub("home = $HOME, user = $USER", "%$(%w+)", os.getenv)`
--- `--> x="home = /home/roberto, user = roberto"`
--- `x = string.gsub("4+5 = $return 4+5$", "%$(.-)%$", function (s)`
---  >> return loadstring(s)()
---  > end)
--- `--> x="4+5 = 9"`
--- `local t = {name="lua", version="5.0"}
--- `x = string.gsub("$name_$version.tar.gz", "%$(%w+)", function (v)`
--- `--> x="lua_5.0.tar.gz"`
---
--- Refer to the Lua manual's [section on patterns](https://www.lua.org/manual/5.0/manual.html#pm)
--- for more details. Take particular note of `()` empty captures which capture
--- a number rather than a string.
---@overload fun(s: string, pattern: string, repl: string | fun: string): string, number
---@param s string
---@param pattern string
---@param repl string | fun: string
---@param n number
---@return string, number
function gsub(s, pattern, repl, n) end

---
--- Returns the natural logarithm of x
---@param x number
---@param base number
---@return number
function log(x, base) end

--- Returns the base-10 logarithm of `x`.
---@param x number
---@return number
function log10(x) end

---
--- Returns the argument with the maximum value, according to the Lua operator
--- `<`. (integer/float)
---@param x number
---@return number
function max(x, ...) end

---
--- Returns the argument with the minimum value, according to the Lua operator
--- `<`. (integer/float)
---@param x number
---@return number
function min(x, ...) end

---
--- Returns the integral part of `x` and the fractional part of `x`. Its second
--- result is always a float.
---@param x number
---@return number
function mod(x) end

---
--- Converts the angle `x` from degrees to radians.
---@param x number
---@return number
function rad(x) end

---
--- When called without arguments, returns a pseudo-random float with uniform
--- distribution in the range *[0,1)*. When called with two integers `m` and
--- `n`, `math.random` returns a pseudo-random integer with uniform distribution
--- in the range *[m, n]*. The call `random(n)` is equivalent to `random(1,n)`.
---@overload fun():number
---@overload fun(n: number):number
---@param m number
---@param n number
---@return number
function random(m, n) end

---
--- Sets `x` as the "seed" for the pseudo-random generator: equal seeds
--- produce equal sequences of numbers.
---@param x number
function randomseed(x) end

---
--- Returns the sine of `x` (assumed to be in degrees).
---@param x number
---@return number
function sin(x) end

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
--- Returns the square root of `x`. (You can also use the expression `x^0.5` to
--- compute this value.)
---@param x number
---@return number
function sqrt(x) end

---
--- Returns the internal numerical code of the `i`-th character of `s`, or **nil**
--- if the index is out of range. If i is absent, then it is assumed to be 1.
--- i may be negative.
---
--- Note that numerical codes are not necessarily portable across platforms.
---@overload fun(s:string):number
---@param s string
---@param i number
---@return number
function strbyte(s, i) end

---
--- Receives zero or more integers. Returns a string with length equal to
--- the number of arguments, in which each character has the internal numerical
--- code equal to its corresponding argument.
---
--- Note that numerical codes are not necessarily portable across platforms.
---@return string
function strchar(...) end

---
--- Looks for the first match of `pattern` in the string `s`. If it finds a
--- match, then `find` returns the indices of `s` where this occurrence starts
--- and ends; otherwise, it returns **nil**. A third, optional numerical
--- argument `init` specifies where to start the search; its default value is 1
--- and can be negative. A value of **true** as a fourth, optional argument
--- `plain` turns off the pattern matching facilities, so the function does a
--- plain "find substring" operation, with no characters in `pattern` being
--- considered "magic". Note that if `plain` is given, then `init` must be given
--- as well.
---
--- If the pattern has captures, then in a successful match the captured values
--- are also returned, after the two indices.
---
--- Refer to the Lua manual's [section on patterns](https://www.lua.org/manual/5.0/manual.html#pm)
--- for more details. Take particular note of `()` empty captures which capture
--- a number rather than a string.
---@overload fun(s: string, pattern: string, init: number): nil | (number, number, (number | string)...)
---@overload fun(s: string, pattern: string): nil | (number, number, (number | string)...)
---@param s string
---@param pattern string
---@param init number
---@param plain boolean
---@return nil | (number, number, (number | string)...)
function strfind(s, pattern, init, plain) end

---
--- Receives a string and returns its length. The empty string `""` has
--- length 0. Embedded zeros are counted, so `"a\000bc\000"` has length 5.
---@param s string
---@return number
function strlen(s) end

---
--- Receives a string and returns a copy of this string with all uppercase
--- letters changed to lowercase. All other characters are left unchanged. The
--- definition of what an uppercase letter is depends on the current locale.
---@param s string
---@return string
function strlower(s) end

---
--- Returns a string that is the concatenation of `n` copies of the string
--- `s` separated by the string `sep`. The default value for `sep` is the empty
--- string (that is, no separator). Returns the empty string if n is not
--- positive.
---
--- Note that it is very easy to exhaust the memory of your machine with a
--- single call to this function.
---@overload fun(s: string, n: number):string
---@param s string
---@param n number
---@param sep string
---@return string
function strrep(s, n, sep) end

---
--- Returns the substring of `s` that starts at `i` and continues until
--- `j`; `i` and `j` can be negative. If `j` is absent, then it is assumed to
--- be equal to -1 (which is the same as the string length). In particular,
--- the call `string.sub(s,1,j)` returns a prefix of `s` with length `j`, and
--- `string.sub(s, -i)` (for a positive i) returns a suffix of `s` with length
--- `i`.
---
--- If, after the translation of negative indices, `i` is less than 1, it is
--- corrected to 1. If `j` is greater than the string length, it is corrected to
--- that length. If, after these corrections, `i` is greater than `j`, the
--- function returns the empty string.
---@overload fun(s: string, i: number):string
---@param s string
---@param i number
---@param j number
---@return string
function strsub(s, i, j) end

---
--- Receives a string and returns a copy of this string with all lowercase
--- letters changed to uppercase. All other characters are left unchanged. The
--- definition of what a lowercase letter is depends on the current locale.
---@param s string
---@return string
function strupper(s) end

---
--- Returns the tangent of `x` (assumed to be in degrees).
---@param x number
---@return number
function tan(x) end

---
--- Inserts element `value` at position `pos` in `list`, shifting up the
--- elements to `list[pos]`, `list[pos+1]`, `···`, `list[getn(list)]`. The default
--- value for `pos` is `getn(list)+1`, so that a call `tinsert(t,x)`` inserts
--- `x` at the end of list `t`.
---@overload fun<T>(list: T[], value: T):void
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
--- The default value for `pos` is `getn(list)`, so that a call `tremove(l)`
--- removes the last element of list `l`.
---@overload fun<V>(list: V[]):V
---@generic V
---@param list V[]
---@param pos number
---@return V
function tremove(list, pos) end

---
--- Get global variable by name.
---@param name string
function getglobal(name) end

---
--- Set global variable by name.
---@param name string
---@param value any
function setglobal(name, value) end

--- TODO add overload from https://wowpedia.fandom.com/wiki/API_time?oldid=145246
---
--- Returns current local time.
---@return number
function time() end

--TODO
--__pow
--date
--debuginfo
--debugprofilestart
--debugprofilestop
--debugstack
--geterrorhandler
--ldexp
--seterrorhandler
