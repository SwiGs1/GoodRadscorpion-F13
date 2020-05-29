/obj/item/gun/energy/laser/fire
	name ="fire projection device"
	can_charge = 0
	desc = "An energy-based laser gun that draws power from the cyborg's internal energy cell directly. So this is what freedom looks like?"
	use_cyborg_cell = 1
	ammo_type = list(/obj/item/ammo_casing/energy/fireball)

/obj/item/gun/energy/laser/fire/cyborg/emp_act()
	return

/obj/item/ammo_casing/energy/fireball
	projectile_type = /obj/item/projectile/beam/fire
	select_name = "OH GOD OH FUCK"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'