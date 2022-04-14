dofile_once("data/scripts/empty_enemy_helper_start.lua")

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



insert_enemy(g_big_enemies, 0.15, 1, 1, "files/animals/mother_longleg.xml", "mother_longleg")



dofile_once("data/scripts/empty_enemy_helper_end.lua")