/turf/open/water
	gender = PLURAL
	name = "water"
	desc = "Shallow water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/indestructible/ground/outside/desert
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE
	slowdown = 25
	bullet_sizzle = TRUE
	bullet_bounce_sound = null //needs a splashing sound one day.
	light_range = 3
	light_power = 0.75
/*
/turf/open/water/Initialize()
	. = ..()
	MakeSlippery(TURF_WET_WATER, INFINITY, 0, INFINITY, TRUE)
*/

//radioactive
/turf/open/water/radioactive
	gender = PLURAL
	name = "radioactive water"
	desc = "Shallow, glowing water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/indestructible/ground/outside/desert
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE
	slowdown = 15
	light_color = LIGHT_COLOR_GREEN
	light_power = 0.5
	light_range = 0.2

/turf/open/water/radioactive/New()
	..()
	AddComponent(/datum/component/radioactive, 200, src, 0, TRUE, TRUE) //half-life of 0 because we keep on going.
