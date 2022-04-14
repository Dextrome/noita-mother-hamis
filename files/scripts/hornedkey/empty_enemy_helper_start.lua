function calc_total_prob( value )
	local total_prob = 0
	for i,v in ipairs(value) do
		if( v.prob ~= nil and ( v.spawn_check == nil or v.spawn_check() ) ) then
			total_prob = total_prob + v.prob
		end
	end
	return total_prob
end

if g_small_enemies then
	small_enemies_total_prob_with_vanilla_enemies = calc_total_prob( g_small_enemies )
end

if g_big_enemies then
	big_enemies_total_prob_with_vanilla_enemies = calc_total_prob( g_big_enemies )
end

if g_large_enemies then
	large_enemies_total_prob_with_vanilla_enemies = calc_total_prob( g_large_enemies )
end

if g_robots then
	robots_total_prob_with_vanilla_enemies = calc_total_prob( g_robots )
end

if g_unique_enemy then
	unique_enemy_total_prob_with_vanilla_enemies = calc_total_prob( g_unique_enemy )
end

if g_small_enemies_sky then
	small_enemies_sky_total_prob_with_vanilla_enemies = calc_total_prob( g_small_enemies_sky )
end

if g_big_enemies_sky then
	big_enemies_sky_total_prob_with_vanilla_enemies = calc_total_prob( g_big_enemies_sky )
end