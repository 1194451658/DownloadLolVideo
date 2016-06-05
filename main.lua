
-----------------------
--	set lua path
---------------------

print(string.format("Default path: %s", package.path))
-- print(string.format("Default cpath: %s", package.cpath))

-- cur working directory
-- os.execute("dir")

local path = {
	".\\?.lua",
	".\\?.luac",
	".\\lua\\?.lua",
	".\\lua\\?.luac",
	".\\lua\\?\\init.lua",
	".\\dlv\\?.lua"
}

local cpath = {
	".\\?.dll",
	".\\?51.dll",
	".\\clibs\\?.dll",
	".\\clibs\\?51.dll",
}

package.path = table.concat(path, ";")
package.cpath = table.concat(cpath, ";")

require "lua-ext"
print("Download Lol Video From Official Website")

-------------------------------------------------------------------------------
-- 			check luasocket 
-------------------------------------------------------------------
socket = require "socket"
print("luasocket version:", socket._VERSION)







