
----------------------------------------------
------------MOD CODE -------------------------


SMODS.Atlas{
    key = 'catjokers', --atlas key
    path = 'catjokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'catboosters', --atlas key
    path = 'catboosters.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.ObjectType{
    key = "catjokers",
    cards = {
        ['j_funnycats_canny_cat'] = true,
        ['j_funnycats_uncanny_cat'] = true,
        ['j_funnycats_dapper_cat'] = true,
        ['j_funnycats_glungus'] = true,
        ['j_funnycats_silly_cat'] = true,
        ['j_funnycats_ah_so_sorry'] = true,
        ['j_funnycats_tole_tole'] = true,
        ['j_funnycats_singing_cat'] = true,
        ['j_funnycats_long_cat'] = true,
        ['j_funnycats_larry'] = true,
        ['j_funnycats_floppa'] = true,
    }
}

local mod_path = "" .. SMODS.current_mod.path
local files = NFS.getDirectoryItems(mod_path .. "scripts")
for _, file in ipairs(files) do
	print("[FUNNYCATS] Loading file " .. file)
	local f, err = SMODS.load_file("scripts/" .. file)
	if err then
		error(err)
	end
	f()
end -- file loader from cryptid :3

-- OH ALSO BTW BTW this code might suck complete doo doo!! im a stinky baby when it comes to coding balatro mods
----------------------------------------------
------------MOD CODE END----------------------
