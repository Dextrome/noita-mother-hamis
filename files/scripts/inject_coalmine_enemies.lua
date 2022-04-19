dofile_once("mods/dextrome_mother_hamis/files/scripts/hornedkey/empty_enemy_helper_start.lua")

function insert_enemy(into_what, prob, min_count, max_count, entity, key)
	if not HasFlagPersistent("ned_"..key) then
		table.insert(into_what, {
			prob = prob,
			min_count	= min_count,
			max_count = max_count,
			entity = entity,
		})
	end
end



insert_enemy(g_big_enemies, 0.6, 1, 1, "mods/dextrome_mother_hamis/files/animals/mother_longleg_wild.xml", "mother_longleg")



dofile_once("mods/dextrome_mother_hamis/files/scripts/hornedkey/empty_enemy_helper_end.lua")
