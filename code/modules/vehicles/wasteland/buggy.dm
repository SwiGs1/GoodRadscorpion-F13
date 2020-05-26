//Fallout 13 dune buggy directory

/obj/vehicle/ridden/buggy
	name = "dune buggy"
	desc = "<i>Ain't no place for fancy cars on the wasteland.<br>No place for classy brands, but nicknames.<br>Only the rusty and trusty death machines.<br>Only fuel and blood.</i>"
	icon = 'icons/fallout/vehicles/medium_vehicles.dmi'
	icon_state = "buggy_dune"
	pixel_x = -17
	pixel_y = -2
	obj_integrity = 600
	max_integrity = 600
	var/list/names = list("Badger", "Bandit", "Desert Punk", "Dune Buddy", "Duster", "Rebel", "Rooster")

/obj/vehicle/ridden/buggy/New()
	..()
	name = pick(names)

/obj/vehicle/ridden/buggy/Initialize()
	. = ..()
	var/datum/component/riding/D = LoadComponent(/datum/component/riding)
	D.vehicle_move_delay = 0.5
	D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(-1, 9), TEXT_SOUTH = list(0, 12), TEXT_EAST = list(-5, 6), TEXT_WEST = list( 3, 6)))

/obj/vehicle/ridden/buggy/olive
	icon_state = "buggy_olive"
	names = list("Bang-Bang", "Bolo", "Dittybopper", "Geardo", "Joe", "Pollywog", "Zoomie")

/obj/vehicle/ridden/buggy/red
	icon_state = "buggy_red"
	names = list("Crusher", "Grim Reaper", "Meat Grinder", "Mincer", "Reaver", "Ripper", "Ripsaw")

/obj/vehicle/ridden/buggy/hot
	icon_state = "buggy_hot"
	names = list("Dragon", "Fire And Flames", "Flash", "Igniter", "Heat", "Hot Wheels", "Trailblazer")
