--small enemies
if g_small_enemies then
	local vanilla_small_empty_prob = 0
	for i, v in ipairs(g_small_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_small_empty_prob = v.prob
			break
		 end
	end
	
	vanilla_small_enemies_empty_percentage = vanilla_small_empty_prob / small_enemies_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local small_enemies_total_prob_with_added_enemies = calc_total_prob( g_small_enemies )
	local small_enemies_empty_probability = ( small_enemies_total_prob_with_added_enemies * vanilla_small_empty_prob ) / small_enemies_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_small_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= small_enemies_empty_probability
		 end
	end
end

--big enemies
if g_big_enemies then
	local vanilla_big_empty_prob = 0
	for i, v in ipairs(g_big_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_big_empty_prob = v.prob
			break
		 end
	end
	
	vanilla_big_enemies_empty_percentage = vanilla_big_empty_prob / big_enemies_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local big_enemies_total_prob_with_added_enemies = calc_total_prob( g_big_enemies )
	local big_enemies_empty_probability = ( big_enemies_total_prob_with_added_enemies * vanilla_big_empty_prob ) / big_enemies_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_big_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= big_enemies_empty_probability
		 end
	end
end

--large enemies
if g_large_enemies then
	local vanilla_large_empty_prob = 0
	for i, v in ipairs(g_large_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_large_empty_prob = v.prob
			break
		 end
	end

	vanilla_large_enemies_empty_percentage = vanilla_large_empty_prob / large_enemies_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local large_enemies_total_prob_with_added_enemies = calc_total_prob( g_large_enemies )
	local large_enemies_empty_probability = ( large_enemies_total_prob_with_added_enemies * vanilla_large_empty_prob ) / large_enemies_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_large_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= large_enemies_empty_probability
		 end
	end
end

--robots
if g_robots then
	local vanilla_robots_empty_prob = 0
	for i, v in ipairs(g_robots) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_robots_empty_prob = v.prob
			break
		 end
	end

	vanilla_robots_empty_percentage = vanilla_robots_empty_prob / robots_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local robots_total_prob_with_added_enemies = calc_total_prob( g_robots )
	local robots_empty_probability = ( robots_total_prob_with_added_enemies * vanilla_robots_empty_prob ) / robots_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_robots) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= robots_empty_probability
		 end
	end
end

--unique enemies
if g_unique_enemy then
	local vanilla_unique_enemy_empty_prob = 0
	for i, v in ipairs(g_unique_enemy) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_unique_enemy_empty_prob = v.prob
			break
		 end
	end

	vanilla_unique_enemy_empty_percentage = vanilla_unique_enemy_empty_prob / unique_enemy_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local unique_enemy_total_prob_with_added_enemies = calc_total_prob( g_unique_enemy )
	local unique_enemy_empty_probability = ( unique_enemy_total_prob_with_added_enemies * vanilla_unique_enemy_empty_prob ) / unique_enemy_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_unique_enemy) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= unique_enemy_empty_probability
		 end
	end
end

--small enemies sky
if g_small_enemies_sky then
	local vanilla_small_empty_prob = 0
	for i, v in ipairs(g_small_enemies_sky) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_small_empty_prob = v.prob
			break
		 end
	end
	
	vanilla_small_enemies_sky_empty_percentage = vanilla_small_empty_prob / small_enemies_sky_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local small_enemies_sky_total_prob_with_added_enemies = calc_total_prob( g_small_enemies_sky )
	local small_enemies_sky_empty_probability = ( small_enemies_sky_total_prob_with_added_enemies * vanilla_small_empty_prob ) / small_enemies_sky_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_small_enemies_sky) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= small_enemies_sky_empty_probability
		 end
	end
end

--big enemies sky
if g_big_enemies_sky then
	local vanilla_big_empty_prob = 0
	for i, v in ipairs(g_big_enemies_sky) do 
		 if type(v) == "table" and v.entity == "" then
			vanilla_big_empty_prob = v.prob
			break
		 end
	end
	
	vanilla_big_enemies_sky_empty_percentage = vanilla_big_empty_prob / big_enemies_sky_total_prob_with_vanilla_enemies --Used when deleting an enemy from the table
	local big_enemies_sky_total_prob_with_added_enemies = calc_total_prob( g_big_enemies_sky )
	local big_enemies_sky_empty_probability = ( big_enemies_sky_total_prob_with_added_enemies * vanilla_big_empty_prob ) / big_enemies_sky_total_prob_with_vanilla_enemies

	for i, v in ipairs(g_big_enemies) do 
		 if type(v) == "table" and v.entity == "" then
			v.prob 	= big_enemies_sky_empty_probability
		 end
	end
end