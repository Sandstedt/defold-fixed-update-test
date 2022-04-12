-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local screen_width = 300;
local screen_height = 600;

function get_screen_size()
	return { w = screen_width, h = screen_height }
end

function set_screen_size(w, h)
	screen_width = w
	screen_height = h
	--msg.post("/player#touchController", "screen_size_changed", {w = w, h = h })
end