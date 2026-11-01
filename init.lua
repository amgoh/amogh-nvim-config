require("amogh")

vim.deprecate = function() end

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('amogh.macos')
end
if is_win then
  require('amogh.windows')
end
