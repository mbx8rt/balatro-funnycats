--- STEAMODDED HEADER
--- MOD_NAME: Funny Cats (WIP)
--- MOD_ID: funnycats
--- MOD_AUTHOR: [mbx8_rt]
--- MOD_DESCRIPTION: MEOW! MRRP MRRP MEOW! FUNNY CATS! (credits to elial1 for the custom joker template, credits to astro for doing some art for the mod)

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.DecColors()

    local dec_mod = SMODS.findModByID("funnycats")
end

local mod_path = "" .. SMODS.current_mod.path
local files = NFS.getDirectoryItems(mod_path .. "scripts")
for _, file in ipairs(files) do
	print("[FUNNYCATS] Loading file " .. file)
	local f, err = SMODS.load_file("scripts/" .. file)
	if err then
		error(err) --Steamodded actually does a really good job of displaying this info! So we don't need to do anything else.
	end
	f()
end -- thank you crypitd devs for the epic code :3 (listen man it says it in the license file that i can use it ok bro DONT SUE ME IM DIRT POOR)

-- OH ALSO BTW BTW this code might suck complete doo doo!! im a stinky baby when it comes to coding balatro mods
----------------------------------------------
------------MOD CODE END----------------------
