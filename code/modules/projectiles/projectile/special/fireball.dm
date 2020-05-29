/obj/item/projectile/beam/fire
	name = "fireball"

/obj/item/projectile/beam/fire/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		M.adjust_fire_stacks(5)
		M.IgniteMob() //flew into a star, so you're on fire