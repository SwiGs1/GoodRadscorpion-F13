//Faction datums of sorts, use the dang hierarchies in the future
//It looks like var/faction controls what becomes visible on setup. Should likely be fixed or something, but I'm not doing it.
/datum/job/CaesarsLegion
	department_flag = LEGION
	selection_color = "#ffeeee"
	exp_type = EXP_TYPE_LEGION
	forbids = "The Legion forbids: Ghouls joining the Legion. Women in armed roles. Chems and drugs such as jet or alcohol. Reliance on technology. Lethally harming any servants of Caesar without proper reason."
	enforces = "The Legion expects: Obeying orders of superiors. A roman style name. Wearing the uniform, unless acting as a nonlethal infiltrator."

/datum/outfit/job/CaesarsLegion
	id = null
	ears = null
	box = null

/datum/outfit/job/CaesarsLegion/Legionnaire
	belt = /obj/item/storage/belt/military/assault/legion
	backpack = /obj/item/storage/backpack/satchel/explorer
	uniform = 		/obj/item/clothing/under/f13/legskirt
	shoes = 		/obj/item/clothing/shoes/f13/military/legionmetal
	gloves =		/obj/item/clothing/gloves/legion

/datum/outfit/job/CaesarsLegion/Legionnaire/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	if(H.gender == FEMALE)
		H.gender = MALE
		H.real_name = random_unique_name(MALE)
		H.name = H.real_name
		if(H.wear_id)
			var/obj/item/card/id/dogtag/L = H.wear_id
			L.registered_name = H.name
			L.update_label()
	if(H.real_name == ("Biggus Dickus" || "Bigus Dickus"))
		H.real_name = "Minimae Coles"
		H.name = "Minimae Coles"
		H.lust_tolerance = 0
		H.sexual_potency = 0
		H.lust = 0

/datum/outfit/job/CaesarsLegion/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.add_trait(TRAIT_TECHNOPHOBE, TRAIT_GENERIC)

/*
Legate
Needs whitelist
*/
/datum/job/CaesarsLegion/Legionnaire/f13legate
	title = "Legate"
//	faction = "Legion"
	flag = F13LEGATE
	head_announce = list("Security")
	supervisors = "Caesar"
	selection_color = "#ffdddd"
	req_admin_notify = 1
	exp_requirements = 960
	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13legate

	access = list()
	minimal_access = list()


/datum/job/CaesarsLegion/Legionnaire/f13legate/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")


/datum/outfit/job/CaesarsLegion/Legionnaire/f13legate
	name = "Legate"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13legate
	shoes = 		/obj/item/clothing/shoes/f13/military/legionlegate
	suit = 			/obj/item/clothing/suit/armor/f13/legion/legate
	head = 			/obj/item/clothing/head/helmet/f13/legion/legate
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	suit_store = 	/obj/item/gun/ballistic/automatic/marksman
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=2, \
		/obj/item/throwing_star/spear, \
		/obj/item/melee/powerfist=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/ammo_box/magazine/m556/rifle=2, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/storage/bag/money/small/legion)

/*
Centurion
*/
/datum/job/CaesarsLegion/Legionnaire/f13centurion
	title = "Legion Centurion"
	flag = F13CENTURION
	faction = "Legion"
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	description = "You are the commander of the Centuria and are the direct superior to the Decanii, working with them and your soldiers to establish a strong foothold within the region for Caesar's glory. You oversee all Legion operations in the area, and lead the charge against Caesar's foes."
	supervisors = "the Legate"
	selection_color = "#ffdddd"
	req_admin_notify = 1
	exp_requirements = 750
	exp_type = EXP_TYPE_DECANUS

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13centurion

	loadout_options = list(
	/datum/outfit/loadout/centheavy, //10mm SMG and powerfist
	/datum/outfit/loadout/centassault, //marksmen and thermic lance
	/datum/outfit/loadout/centbreacher //breacher shotgun and fire axe
	)

/datum/job/CaesarsLegion/Legionnaire/f13centurion/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Iron Fist")
	H.add_quirk("Big Leagues")


/datum/outfit/job/CaesarsLegion/Legionnaire/f13centurion
	name = "Legion Centurion"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13centurion
	id =			/obj/item/card/id/dogtag/legcenturion
	mask =			/obj/item/clothing/mask/bandana/legcenturion
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	ears = 			/obj/item/radio/headset
	r_pocket =      /obj/item/restraints/handcuffs
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/flashlight/lantern=1, \
		/obj/item/key/scollar=1, \
		/obj/item/key/bcollar=1, \
		/obj/item/assembly/signaler/electropack/shockcollar=1, \
		/obj/item/assembly/signaler/electropack/boomcollar=2, \
		/obj/item/storage/bag/money/small/legofficers=1, \
		/obj/item/restraints/legcuffs/bola/tactical=1, \
		)

/datum/outfit/loadout/centheavy
	name = "Paladin-Slayer Centurion"
	suit = 			/obj/item/clothing/suit/armor/f13/legion/palacent
	head = 			/obj/item/clothing/head/helmet/f13/legion/palacent
	suit_store = /obj/item/gun/ballistic/automatic/smg10mm
	backpack_contents = list(
		/obj/item/melee/powerfist/goliath=1,
		/obj/item/ammo_box/magazine/m10mm_auto=2)

/datum/outfit/loadout/centassault
	name = "Ranger-Hunter Centurion"
	suit = 			/obj/item/clothing/suit/armor/f13/legion/rangercent
	head = 			/obj/item/clothing/head/helmet/f13/legion/rangercent
	suit_store = /obj/item/gun/ballistic/automatic/marksman
	backpack_contents = list(
		/obj/item/twohanded/required/thermic_lance=1,
		/obj/item/ammo_box/magazine/m556/rifle=2)

/datum/outfit/loadout/centbreacher
	name = "Standard Centurion"
	suit = 			/obj/item/clothing/suit/armor/f13/legion/centurion
	head = 			/obj/item/clothing/head/helmet/f13/legion/centurion
	suit_store = /obj/item/gun/ballistic/automatic/shotgun/riot
	backpack_contents = list(
		/obj/item/twohanded/fireaxe=1,
		/obj/item/ammo_box/magazine/d12g=2)


/*
Orator - lol no just kidding it's a not-so-useless role. :)
*/

/datum/job/CaesarsLegion/Legionnaire/f13libritor // Libritors don't exist in fallout why do they exist lol go away
	title = "Legion Libritor"
	flag = F13LIBRITOR
	faction = "Legion"
	total_positions = 0
	spawn_positions = 0
	description = "You are, effectively, the counter to the Bear's 'heavy troopers', as you carry some pretty heavy equipment yourself. A much larger gun, in fact. Don't let down your fellows."
	supervisors = "the Centurion and Decani"

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13libritor

/datum/outfit/job/CaesarsLegion/Legionnaire/f13libritor
	name = "Legion Libritor"
	suit = /obj/item/clothing/suit/armor/f13/legion/libritor
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13libritor
	id = /obj/item/card/id/dogtag/leglibritor
	head = /obj/item/clothing/head/helmet/f13/legion/libritor
	suit_store = /obj/item/gun/ballistic/automatic/l6_saw/m38
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=3, \
		/obj/item/flashlight/lantern=1,
		/obj/item/ammo_box/magazine/mm762=2
		)

/*
Priestess of Mars
*/


/datum/job/CaesarsLegion/f13priestess
	title = "Priestess of Mars"
	flag = F13PRIESTESS
	faction = "Legion"
	total_positions = 0
	spawn_positions = 0
	description = "You are a spiritual and logistics advisor for the Legion forces in the area. Being raised in and from the homeland, you have fully adapted to the Legion's ideals and fully committed yourself to the role as mother and caretaker of the Legion's future. You are an icon to be respected, even by fellow Legion; and although a woman, your status does not allow you to be belittled."
	supervisors = "the Centurion, Mars"
	exp_requirements = 800
	exp_type = EXP_TYPE_DECANUS

	outfit = /datum/outfit/job/CaesarsLegion/f13priestess

/datum/outfit/job/CaesarsLegion/f13priestess
	name = "Priestess of Mars"
	uniform = /obj/item/clothing/under/f13/priestess
	glasses = /obj/item/clothing/glasses/sunglasses/fakeblindfold
	jobtype = /datum/job/CaesarsLegion/f13priestess
	id = /obj/item/card/id/dogtag/legpriest
	shoes = /obj/item/clothing/shoes/roman
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=3, \
		/obj/item/flashlight/lantern=1,
		)

/datum/outfit/job/CaesarsLegion/f13priestess/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	if(H.gender == MALE)
		H.gender = FEMALE
		H.real_name = random_unique_name(MALE)
		H.name = H.real_name
		if(H.wear_id)
			var/obj/item/card/id/dogtag/L = H.wear_id
			L.registered_name = H.name
			L.update_label()

/datum/job/CaesarsLegion/f13priestess/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Poor Aim")
	H.add_quirk("Spiritual")

/*
Veteran Decan
*/
/datum/job/CaesarsLegion/Legionnaire/f13vetdecan
	title = "Legion Veteran Decanus"
	flag = F13VETDECAN
	faction = "Legion"
	total_positions = 1
	spawn_positions = 1
	description = "You answer directly to the Centurion, working with them to organize the Veteran Legionaries and organize the other Decanii as needed. You help run the camp and lead the Veterans on patrols, raids and scouting missions on behalf of your Centurion."
	supervisors = "The Centurion and up."
	exp_requirements = 600
	exp_type = EXP_TYPE_DECANUS

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13vetdecan

/datum/job/CaesarsLegion/Legionnaire/f13vetdecan/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Big Leagues")


/datum/outfit/job/CaesarsLegion/Legionnaire/f13vetdecan
	name = "Legion Veteran Decanus"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13vetdecan
	id = 			/obj/item/card/id/dogtag/legveteran
	suit = 			/obj/item/clothing/suit/armor/f13/legion/vet
	head = 			/obj/item/clothing/head/helmet/f13/legion/vet/decan
	mask =			/obj/item/clothing/mask/bandana/legdecan
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	suit_store = 	/obj/item/gun/ballistic/automatic/greasegun
	r_hand = 		/obj/item/twohanded/fireaxe/bmprsword
	r_pocket =      /obj/item/restraints/handcuffs
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/throwing_star/spear, \
		/obj/item/claymore/machete/gladius=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/ammo_box/magazine/greasegun=2, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/key/scollar=1, \
		/obj/item/assembly/signaler/electropack/shockcollar=2, \
		/obj/item/storage/bag/money/small/legofficers)


/*
Prime Decan
*/
/datum/job/CaesarsLegion/Legionnaire/f13primedecan
	title = "Legion Prime Decanus"
	flag = F13PRIMEDECAN
	faction = "Legion"
	total_positions = 1
	spawn_positions = 1
	description = "You answer directly to the Centurion, but are still expected to obey orders from the Veteran Decanus as needed. You work with them to help run the camp and organize your Prime Legionaries, leading them on raids and scouting missions on behalf of the Centurion."
	supervisors = "Veteran Decanus and up."
	exp_requirements = 480

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13primedecan


/datum/outfit/job/CaesarsLegion/Legionnaire/f13primedecan
	name = "Legion Prime Decanus"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13primedecan
	id = 			/obj/item/card/id/dogtag/legprime
	shoes = 		/obj/item/clothing/shoes/f13/military/legionleather
	suit = 			/obj/item/clothing/suit/armor/f13/legion/prime
	head = 			/obj/item/clothing/head/helmet/f13/legion/prime/decan
	mask =			/obj/item/clothing/mask/bandana/legdecan
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	suit_store = 	/obj/item/gun/ballistic/automatic/mini_uzi
	r_pocket =      /obj/item/restraints/handcuffs
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/throwing_star/spear, \
		/obj/item/claymore/machete/gladius=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/ammo_box/magazine/uzim9mm=2, \
		/obj/item/key/scollar=1, \
		/obj/item/assembly/signaler/electropack/shockcollar=2, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/storage/bag/money/small/legofficers)
/*
Recruit Decan
*/
/datum/job/CaesarsLegion/Legionnaire/f13decan
	title = "Legion Recruit Decanus"
	flag = F13DECAN
	faction = "Legion"
	total_positions = 1
	spawn_positions = 1
	description = "You answer directly to the Centurion, but are still expected to obey orders from the Prime and Veteran Decanii. You work with them to help run the camp and train recruits, leading them on raids and scouting missions on behalf of the Centurion."
	supervisors = "Prime Decanus and up."
	exp_requirements = 360

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13decan

/datum/outfit/job/CaesarsLegion/Legionnaire/f13decan
	name = "Legion Recruit Decanus"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13decan
	id = 			/obj/item/card/id/dogtag/legrecruit
	shoes = 		/obj/item/clothing/shoes/f13/military/legionleather
	suit = 			/obj/item/clothing/suit/armor/f13/legion/recruit
	head = 			/obj/item/clothing/head/helmet/f13/legion/recruit/decan
	mask =			/obj/item/clothing/mask/bandana/legdecan
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	suit_store = 	/obj/item/gun/ballistic/automatic/pistol/n99
	r_pocket =      /obj/item/restraints/handcuffs
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/throwing_star/spear, \
		/obj/item/claymore/machete/gladius=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/ammo_box/magazine/m10mm_adv=2, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/storage/bag/money/small/legofficers)

/*
Vexillarius
*/

/datum/job/CaesarsLegion/Legionnaire/f13vexillarius
	title = "Legion Vexillarius"
	flag = F13VEXILLARIUS
	faction = "Legion"
	total_positions = 2
	spawn_positions = 2
	description = "You answer directly to the Decani and the Centurion, acting as a standard bearer for your squad. You raise troop morale, relay orders from the Decanii and the Centurion, and rally men when ordered, however, you hold no actual authority over the troops and should instead only relay orders from your superiors."
	supervisors = "the Decani and Centurion"
	exp_requirements = 240

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius

	loadout_options = list(
		/datum/outfit/loadout/vexassault, //ripper, m29scoped
		/datum/outfit/loadout/vexsupport //trail carbine, smoke bombs
		)

/datum/job/CaesarsLegion/Legionnaire/f13vexillarius/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Big Leagues")
	H.add_quirk("Iron Fist")

/datum/outfit/job/CaesarsLegion/Legionnaire/f13vexillarius
	name = "Legion Vexillarius"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13vexillarius
	id = 			/obj/item/card/id/dogtag/legveteran
	mask =			/obj/item/clothing/mask/bandana/legvet
	suit = 			/obj/item/clothing/suit/armor/f13/legion/vet/vexil
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	ears = 			/obj/item/radio/headset
	backpack_contents = list(
		/obj/item/throwing_star/spear, \
		/obj/item/claymore/machete/gladius=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/flashlight/lantern=1, \
		/obj/item/megaphone/cornu=1, \
		/obj/item/restraints/legcuffs/bola/tactical=1, \
		/obj/item/storage/bag/money/small/legenlisted)
	r_pocket = /obj/item/restraints/handcuffs

/datum/outfit/loadout/vexassault
	name = "Assault Vexillarius"
	head = 			/obj/item/clothing/head/helmet/f13/legion/vet/vexil
	suit_store = /obj/item/gun/ballistic/automatic/greasegun
	backpack_contents = list(
		/obj/item/nullrod/claymore/chainsaw_sword=1,
		/obj/item/ammo_box/magazine/greasegun=2)


/datum/outfit/loadout/vexsupport
	name = "Support Vexillarius"
	head = 			/obj/item/clothing/head/helmet/f13/legion/vet/vexil
	suit_store = 	/obj/item/gun/ballistic/shotgun/automatic/hunting/trail
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44=1,
		/obj/item/grenade/smokebomb=2,
		/obj/item/grenade/plastic/c4=1
		)
/*
Slavemaster
*/
datum/job/CaesarsLegion/Legionnaire/f13slavemaster
	title = "Legion Slavemaster"
	flag = F13SLAVEMASTER
	faction = "Legion"
	total_positions = 0
	spawn_positions = 0
	description = "You are the feared and respected disciplinary corps of the Legion. Acting as both master of the Slaves and de-facto executioner of the Centurion's will within his ranks, you are a faceless and undoubtedly cruel torturer... but be careful to not let your hubris and malice lead to a strikeback from those you thought broken."
	supervisors = "the Decani and Centurion"

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13slavemaster

/datum/outfit/job/CaesarsLegion/Legionnaire/f13slavemaster
	name = "Legion Slavemaster"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13legionary
	id =			/obj/item/card/id/dogtag/legslavemaster
	suit = 			/obj/item/clothing/suit/armor/f13/legion/vet/orator
	belt = 			/obj/item/melee/curator_whip
	head = 			/obj/item/clothing/head/helmet/f13/legion/venator
	glasses = 		/obj/item/clothing/glasses/sunglasses
	r_hand = 		/obj/item/melee/classic_baton/telescopic
	backpack_contents = list(
		/obj/item/claymore/machete/reinforced=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/flashlight/lantern=1, \
		/obj/item/storage/bag/money/small/legenlisted, \
		/obj/item/key/bcollar,\
		/obj/item/assembly/signaler/electropack/boomcollar=2, \
		/obj/item/radio)
	r_pocket = /obj/item/restraints/handcuffs

/datum/job/CaesarsLegion/Legionnaire/f13slavemaster/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Big Leagues")


/*
Veteran Legionary
*/

/datum/job/CaesarsLegion/Legionnaire/f13vetlegionary
	title = "Veteran Legionary"
	flag = F13VETLEGIONARY
	faction = "Legion"
	total_positions = 5
	spawn_positions = 5
	description = "You answer to the Decani and the Centurion. Acting as a loyal soldier of the Centuria, you have the great honour of serving under Caesar in his quest to unite the scattered tribes of The Mojave. You are a hardened warrior, and have been waging war with the Legion for many years."
	supervisors = "the Decani and Centurion"
	exp_requirements = 180

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13vetlegionary

	loadout_options = list(
	/datum/outfit/loadout/vetlegassault, //scoped .44 revolver
	/datum/outfit/loadout/vetlegbreach, //lever-action shotgun
	/datum/outfit/loadout/vetlegclose, //shotgun
	/datum/outfit/loadout/vetleglong //.308 DKS sniper rifle
	)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13vetlegionary
	name = "Veteran Legionary"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13vetlegionary
	id = 			/obj/item/card/id/dogtag/legveteran
	mask =			/obj/item/clothing/mask/bandana/legvet
	head = 			/obj/item/clothing/head/helmet/f13/legion/vet
	suit = 			/obj/item/clothing/suit/armor/f13/legion/vet
	glasses = 		/obj/item/clothing/glasses/sunglasses
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/throwing_star/spear, \
		/obj/item/claymore/machete/reinforced=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/flashlight/lantern=1, \
		/obj/item/storage/bag/money/small/legenlisted,
		/obj/item/radio)
	r_pocket = /obj/item/restraints/handcuffs

/datum/outfit/loadout/vetlegassault
	name = "Assault Veteran"
	suit_store = /obj/item/gun/ballistic/revolver/thatgun
	backpack_contents = list(
		/obj/item/twohanded/fireaxe=1,
		)

/datum/outfit/loadout/vetlegbreach
	name = "Foot Veteran"
	suit_store = /obj/item/gun/ballistic/shotgun/automatic/hunting/trail
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44=1,
		/obj/item/grenade/plastic=1,
		)

/datum/outfit/loadout/vetlegclose
	name = "Protector Veteran"
	suit_store = /obj/item/gun/ballistic/shotgun/trench
	backpack_contents = list(
		/obj/item/storage/box/slugshot=1,
		/obj/item/shield/riot/roman=1
		)

/datum/outfit/loadout/vetleglong
	name = "Ranger Veteran"
	suit_store = /obj/item/gun/ballistic/automatic/marksman/sniper
	backpack_contents = list(
		/obj/item/ammo_box/magazine/w308=3,
		)

/datum/job/CaesarsLegion/Legionnaire/f13vetlegionary/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Big Leagues")

/*
Prime Legionairy
*/

/datum/job/CaesarsLegion/Legionnaire/f13primelegion
	title = "Prime Legionary"
	flag = F13LEGIONARY
	faction = "Legion"
	total_positions = 10
	spawn_positions = 10
	description = "You answer to the Decani and the Centurion. Acting as a loyal soldier of the Legion, you're not expected to do anything but follow orders."
	supervisors = "the Decani and Centurion"

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13primelegion

	loadout_options = list(
	/datum/outfit/loadout/primelegfoot, //.357 revolver
	/datum/outfit/loadout/primelegassault, //hunting shotgun
	/datum/outfit/loadout/legtribal //
	)

/datum/outfit/job/CaesarsLegion/Legionnaire/f13primelegion
	name = "Prime Legionary"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13primelegion
	id = 			/obj/item/card/id/dogtag/legprime
	shoes =         /obj/item/clothing/shoes/f13/military/legionleather
	mask =			/obj/item/clothing/mask/bandana/legprime
	head = 			/obj/item/clothing/head/helmet/f13/legion/prime
	suit = 			/obj/item/clothing/suit/armor/f13/legion/prime
	glasses = 		/obj/item/clothing/glasses/sunglasses
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/throwing_star/spear, \
		/obj/item/claymore/machete=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/radio)
	r_pocket = /obj/item/restraints/handcuffs

/datum/outfit/loadout/primelegfoot
	name = "Foot Legionary"
	suit = 			/obj/item/clothing/suit/armor/f13/legion/prime
	head = 			/obj/item/clothing/head/helmet/f13/legion/prime
	mask =			/obj/item/clothing/mask/bandana/legprime
	suit_store = /obj/item/gun/ballistic/revolver/colt357
	backpack_contents = list(
		/obj/item/ammo_box/a357 =2)

/datum/outfit/loadout/primelegassault
	name = "Assault Legionary"
	suit = 			/obj/item/clothing/suit/armor/f13/legion/prime
	head = 			/obj/item/clothing/head/helmet/f13/legion/prime
	mask =			/obj/item/clothing/mask/bandana/legprime
	suit_store = /obj/item/gun/ballistic/shotgun/hunting
	backpack_contents = list(
		/obj/item/storage/box/lethalshot=1, \
		/obj/item/twohanded/binocs=1)

/datum/outfit/loadout/legtribal
	name = "Tribal Legionary"
	suit = 			/obj/item/clothing/suit/armor/f13/legion/prime
	head = 			/obj/item/clothing/head/helmet/f13/legion/prime
	mask =			/obj/item/clothing/mask/bandana/legprime
	r_hand = /obj/item/storage/backpack/spearquiver

/datum/job/CaesarsLegion/Legionnaire/f13legionary/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Big Leagues")
	H.add_quirk("Poor Aim")
/*
Recruit Legionary
*/
/datum/job/CaesarsLegion/Legionnaire/f13recleg
	title = "Recruit Legionary"
	flag = F13RECRUITLEG
	faction = "Legion"
	total_positions = 12
	spawn_positions = 12
	description = "You have recently come of age or been inducted into Caesar's Legion. You have absolutely no training, and are expected to follow every whim of the Decanii and your Centurion."
	supervisors = "the Decani and Centurion"

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13recleg

/datum/outfit/job/CaesarsLegion/Legionnaire/f13recleg
	name = "Recruit Legionary"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13recleg
	id = 			/obj/item/card/id/dogtag/legrecruit
	shoes = 		/obj/item/clothing/shoes/f13/military/legionleather
	suit = 			/obj/item/clothing/suit/armor/f13/legion/recruit
	head = 			/obj/item/clothing/head/helmet/f13/legion/recruit
	mask =			/obj/item/clothing/mask/bandana/legrecruit
	glasses = 		/obj/item/clothing/glasses/legiongoggles
	r_pocket =      /obj/item/restraints/handcuffs
	suit_store =	/obj/item/gun/ballistic/automatic/marksman/servicerifle/varmint
	backpack_contents = list(
		/obj/item/claymore/machete, \
		/obj/item/flashlight/flare/torch=1,
		/obj/item/radio)

/datum/job/CaesarsLegion/Legionnaire/f13recruitleg/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Poor Aim")

/*
Explorer
*/

/datum/job/CaesarsLegion/Legionnaire/f13explorer
	title = "Legion Explorer"
	flag = F13EXPLORER
	faction = "Legion"
	total_positions = 0
	spawn_positions = 0
	description = "Acting as the eyes and ears of the Legion, you are in the region to scout it out for potential conquest. Make note of your surroundings and above all, survive to report back."
	supervisors = "the Decani and Centurion"

	outfit = /datum/outfit/job/CaesarsLegion/Legionnaire/f13explorer


	loadout_options = list(
	/datum/outfit/loadout/explinfil, //C4, engineering supplies
	/datum/outfit/loadout/explscout, //.44 trail carbine
	//datum/outfit/loadout/explassassin //.308 DKS sniper rifle
	)

/datum/job/CaesarsLegion/Legionnaire/f13explorer/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Big Leagues")


/datum/outfit/job/CaesarsLegion/Legionnaire/f13explorer
	name = "Legion Explorer"
	jobtype = /datum/job/CaesarsLegion/Legionnaire/f13explorer
	id = 		/obj/item/card/id/dogtag/legprime
	suit = 		/obj/item/clothing/suit/armor/f13/legion/vet/explorer
	head = 		/obj/item/clothing/head/helmet/f13/legion/vet/explorer
	glasses = null
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/claymore/machete/reinforced=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/storage/bag/money/small/legenlisted,
		/obj/item/radio)
	r_pocket = /obj/item/twohanded/binocs

/datum/outfit/loadout/explinfil
	name = "Infiltrator Explorer"
	suit_store = /obj/item/gun/ballistic/revolver/m29
	backpack_contents = list(
		/obj/item/ammo_box/m44=2,
		/obj/item/grenade/plastic=1,
		/obj/item/storage/belt/utility/full/engi=1,
		/obj/item/clothing/glasses/welding=1)

/datum/outfit/loadout/explscout
	name = "Scout Explorer"
	suit_store = /obj/item/gun/ballistic/shotgun/automatic/hunting/trail/scoped
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44=2)

/*
Auxilia
*/
/datum/job/CaesarsLegion/f13auxilia
	title = "Auxilia"
	flag = F13AUXILIA
	faction = "Legion"
	total_positions = 0
	spawn_positions = 0
	description = "You are a respected and valued noncombatant for the Legion, commanding the slaves and Camp Followers and providing important surgical or engineering expertise. Though you hold more authority than the Legionaries in camp, you are not a warrior, and should not act as such unless absolutely necessary."
	supervisors = "the Decani and Centurion"
	exp_requirements = 360

	outfit = /datum/outfit/job/CaesarsLegion/f13auxilia

	loadout_options = list(
	/datum/outfit/loadout/auxmedic, //Healing poultices and surgical tools
	/datum/outfit/loadout/auxengi //Toolbelt, wood, metal, leather
	)

/datum/outfit/job/CaesarsLegion/f13auxilia
	name = "Auxilia"
	jobtype = /datum/job/CaesarsLegion/f13auxilia
	id =			/obj/item/card/id/dogtag/legauxilia
	shoes = 		/obj/item/clothing/shoes/roman
	uniform = 		/obj/item/clothing/under/f13/legskirt
	gloves =		null
	belt =			null
	backpack = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder=1, \
		/obj/item/flashlight/flare/torch=1, \
		/obj/item/storage/bag/money/small/legenlisted,
		/obj/item/radio)

/datum/outfit/loadout/auxmedic
	name = "Medicus Auxilia"
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healpoultice=3,
		/obj/item/reagent_containers/pill/patch/healingpowder=3,
		/obj/item/scalpel=1,
		/obj/item/hemostat=1,
		/obj/item/retractor=1,
		/obj/item/circular_saw=1,
		/obj/item/cautery=1,
		/obj/item/surgical_drapes=1)

/datum/outfit/loadout/auxengi
	name = "Architecti Auxilia"
	glasses = /obj/item/clothing/glasses/welding
	belt = /obj/item/storage/belt/utility/full/engi
	backpack_contents = list(
		/obj/item/stack/sheet/metal/twenty=1,
		/obj/item/stack/sheet/plasteel/five=1,
		/obj/item/stack/sheet/leather/twenty=1,
		/obj/item/stack/sheet/mineral/wood/fifty=1)


/datum/job/CaesarsLegion/f13auxilia/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Poor Aim")


/datum/job/CaesarsLegion/f13campfollower
	title = "Camp Follower"
	flag = F13CAMPFOLLOWER
	faction = "Legion"
	total_positions = 6
	spawn_positions = 6
	description = "You answer to any member of the Legion. Working as a Camp Follower for the Centuria, you bear the great honor of supporting Caesar's Army in its conquest of the Mojave in whatever capacity required from those whom you serve. You perform any tasks required of you, for you know how to serve the Legion well."
	supervisors = "the entire legion"


	outfit = /datum/outfit/job/CaesarsLegion/f13campfollower

/datum/outfit/job/CaesarsLegion/f13campfollower
	name = "Camp Follower"
	jobtype = /datum/outfit/job/CaesarsLegion/f13campfollower
	shoes = /obj/item/clothing/shoes/sandal
	r_hand = /obj/item/flashlight/flare/torch
	uniform = 		/obj/item/clothing/under/f13/legskirt
	id =			/obj/item/card/id/dogtag/legfollower

/datum/outfit/job/CaesarsLegion/f13campfollower/pre_equip(mob/living/carbon/human/H)
	..()
	var/follower_job = "nothing"
	if (H.gender == MALE)
		uniform = pick(
			/obj/item/clothing/under/f13/caravan, \
			/obj/item/clothing/under/f13/brahminm)
		follower_job = pick("miner", "farmer", "smith", "healer")
	else
		uniform = pick(
			/obj/item/clothing/under/f13/caravan, \
			/obj/item/clothing/under/f13/brahminf)
		follower_job = pick("cook", "farmer", "healer", "caretaker")

	if (follower_job == "cook")
		belt = /obj/item/kitchen/knife
		if (prob(50))
			suit = /obj/item/clothing/suit/apron/chef
	else if (follower_job == "miner")
		belt = /obj/item/storage/bag/ore
		backpack = /obj/item/pickaxe
		l_hand = /obj/item/radio
		if (prob(50))
			suit = /obj/item/clothing/suit/fluff/vest
	else if (follower_job == "farmer")
		belt = /obj/item/storage/bag/plants
		l_hand = /obj/item/radio
		if (prob(50))
			suit = /obj/item/clothing/suit/fluff/vest
	else if (follower_job == "smith")
		backpack = /obj/item/storage/backpack/satchel/explorer
		backpack_contents = list(/obj/item/radio, /obj/item/screwdriver, /obj/item/wrench, /obj/item/crowbar, /obj/item/wirecutters)
		if (prob(50))
			suit = /obj/item/clothing/suit/fluff/vest
	else if (follower_job == "healer")
		backpack = /obj/item/storage/backpack/satchel/explorer
		backpack_contents = list(/obj/item/radio, /obj/item/reagent_containers/pill/patch/healingpowder=4, /obj/item/stack/medical/gauze/improvised = 2)
		if (prob(50))
			suit = /obj/item/clothing/suit/apron/surgical
	else if (follower_job == "caretaker")
		backpack = /obj/item/storage/backpack/satchel/explorer
		backpack_contents = list(/obj/item/radio, /obj/item/soap/homemade, /obj/item/melee/flyswatter, /obj/item/reagent_containers/glass/rag, /obj/item/reagent_containers/glass/bucket, /obj/item/stack/medical/gauze/improvised)
