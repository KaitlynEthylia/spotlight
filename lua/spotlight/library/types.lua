---@meta _

---@class spotlight.mode
---@field name string
---@field description? string
---@field prompt? string
---@field empty? string
---@field sources spotlight.source[]
---@field filter spotlight.filter
---@field sorter spotlight.sorter
---@field settings? spotlight.mode.settings
---@field data? any

---@class spotlight.mode.settings
---@field auto-select? boolean
---@field nil-focus? boolean
---@field single-thread? boolean
---@field searchable? boolean
---@field multi-select? boolean


---@class spotlight.source
---@field settings spotlight.source.settings
local source = {}

---@class spotlight.source.settings
---@field request-updates boolean

---@class spotlight.source.builtins
---@field desktop spotlight.source

---@return spotlight.entry[]
function source:init(data) end

---@return spotlight.entry[]
function source:update(query, data) end

function source:cleanup() end

---@param entry spotlight.entry
---@param data any
---@return spotlight.continuation continuation
---@return any data
function source:select(entry, data) end

---@enum (key) spotlight.continuation
local continuation = {
	close = 0,
	mode = 1,
	prompt = 2,
	reset = 3,
}

---@alias spotlight.filter fun(entry: spotlight.entry, data: any): boolean

---@class spotlight.filter.builtins
---@field default spotlight.filter
---@field fzf spotlight.filter
---@field fuzzy spotlight.filter

---@alias spotlight.sorter fun(entries: spotlight.entry[], data: any): spotlight.entry[]

---@class spotlight.sorter.builtins
---@field default spotlight.sorter

---@class spotlight.entry
---@field text string
---@field format? "plaintext" | "markdown" | "html"
---@field icon? string
---@field data any

---@class spotlight
---@field source spotlight.source.builtins
---@field sorter spotlight.sorter.builtins
---@field filter spotlight.filter.builtins
---@field settings table<string, any>
---@field args string[]
local spotlight = {}

return spotlight
