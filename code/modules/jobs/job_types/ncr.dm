/datum/job/ncr //do NOT use this for anything, it's just to store faction datums
	department_flag = NCR
	selection_color = "#ffeeaa"
	exp_type = EXP_TYPE_NCR
	access = list(ACCESS_NCR)
	minimal_access = list(ACCESS_NCR)
	forbids = "The NCR forbids: Chem and drug use such as jet or alcohol while on duty. Execution of unarmed or otherwise subdued targets without authorisation."
	enforces = "The NCR expects: Obeying the lawful orders of superiors. Proper treatment of prisoners.  Good conduct within the Republic's laws. Wearing the uniform."

/datum/outfit/job/ncr/
	name = "NCRdatums"
	jobtype = /datum/job/ncr/
	backpack = /obj/item/storage/backpack/trekker
	satchel = /obj/item/storage/backpack/satchel/trekker
	ears = 			/obj/item/radio/headset/headset_ncr
	shoes = 		/obj/item/clothing/shoes/f13/military/ncr
	gloves =        /obj/item/clothing/gloves/f13/ncr

/*
Colonel
*/
/datum/job/ncr/f13colonel
	title = "NCR Colonel"
	flag = F13COLONEL
//	faction = "Station"
	head_announce = list("Security")
	supervisors = "the general"
	req_admin_notify = 1
	exp_requirements = 2700
	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/ncr/f13colonel

/datum/outfit/job/ncr/f13colonel
	name 		= "NCR Colonel"
	jobtype 	= /datum/job/ncr/f13colonel
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory 	= /obj/item/clothing/accessory/ncr
	suit 		= /obj/item/clothing/suit/armor/f13/power_armor/t51b/sierra
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	suit_store  = /obj/item/gun/ballistic/automatic/marksman
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m45=3, \
		/obj/item/ammo_box/magazine/m556/rifle=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/m1911=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/storage/bag/money/small/ncr)

/*
Captain
*/
/datum/job/ncr/f13captain
	title = "NCR Captain"
	flag = F13CAPTAIN
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You are the commanding officer of your company and direct superior to the Veteran Ranger and Lieutenant. Coordinating with your staff, you must ensure that the objectives of High Command are completed to the letter. Working closely with your subordinates on logistics, mission planning and special operations with the Rangers, you are here to establish a strong foothold for the NCR within the region."
	supervisors = "Colonel"
	req_admin_notify = 1
	exp_requirements = 720
	exp_type = EXP_TYPE_NCRCOMMAND

	outfit = /datum/outfit/job/ncr/f13captain

/datum/outfit/job/ncr/f13captain
	name = "NCR Captain"
	jobtype 	= /datum/job/ncr/f13captain
	id 			= /obj/item/card/id/dogtag/ncrcaptain
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory 	= /obj/item/clothing/accessory/ncr/cpt
	suit 		= /obj/item/clothing/suit/armor/f13/ncrarmor/captain
	suit_store 	= /obj/item/gun/ballistic/automatic/pistol/deagle/gold
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/a50=2, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/ncr, \
		/obj/item/clothing/mask/ncr_facewrap)



/*
Ambassador
*/
/datum/job/ncr/f13ambassador
	title = "NCR Ambassador"
	flag = F13AMBASSADOR
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You are the political and diplomatic attaché to the NCR forces in the area. Though you are not part of the military, and should avoid conflict, you wield great bureaucratic power."
	supervisors = "Colonel"
	req_admin_notify = 1
	exp_requirements = 360
	exp_type = EXP_TYPE_NCRCOMMAND

	outfit = /datum/outfit/job/ncr/f13ambassador

/datum/outfit/job/ncr/f13ambassador
	name = "NCR Ambassador"
	jobtype 	= /datum/job/ncr/f13ambassador
	id 			= /obj/item/card/id/dogtag/ncrambassador
	uniform		= /obj/item/clothing/under/f13/gentlesuit
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes 		= /obj/item/clothing/shoes/laceup
	suit		= /obj/item/clothing/suit/toggle/lawyer/black
	l_hand = /obj/item/storage/briefcase
	gloves      = null
	backpack_contents = list(
		/obj/item/ammo_box/a357=1, \
		/obj/item/gun/ballistic/revolver/police=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/storage/bag/money/small/ncr=1,
		/obj/item/megaphone=1)



/*
Lieutenant
*/
/datum/job/ncr/f13lieutenant
	title = "NCR Lieutenant"
	flag = F13LIEUTENANT
	total_positions = 1
	spawn_positions = 1
	faction = "NCR"
	description = "You are the direct superior to the Sergeant and Enlisted, working with the Captain and under special circumstances, Rangers. You plan patrols, training and missions, working in some cases with Rangers in accomplishing objectives otherwise beyond the capabilities of ordinary enlisted personnel."
	supervisors = "Captain and above"
	selection_color = "#fff5cc"
	exp_requirements = 260

	outfit = /datum/outfit/job/ncr/f13lieutenant

	loadout_options = list(
	/datum/outfit/loadout/ltcombat, //Mantle vest, 5.56 assault carbine
	/datum/outfit/loadout/ltscout //Scout armor, .308 DKS sniper rifle
	)

/datum/outfit/job/ncr/f13lieutenant
	name		= "NCR Lieutenant"
	jobtype		= /datum/job/ncr/f13lieutenant
	id			= /obj/item/card/id/dogtag/ncrlieutenant
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory	= /obj/item/clothing/accessory/ncr/lt
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/ncrofficers, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/ltcombat
	name = "Combat Lieutenant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle/reinforced
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3,
		/obj/item/book/granter/trait/trekking=1)

/datum/outfit/loadout/ltscout
	name = "Scout Lieutenant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/scout/officer
	suit_store = /obj/item/gun/ballistic/automatic/marksman/sniper
	backpack_contents = list(
		/obj/item/ammo_box/magazine/w308=3,
		/obj/item/book/granter/trait/trekking=1)


/*
Sergeant
*/
/datum/job/ncr/f13sergeant
	title = "NCR Sergeant"
	flag = F13SERGEANT
	total_positions = 2
	spawn_positions = 2
	faction = "NCR"
	description = "You are the direct superior and NCO to the enlisted troops, working with the chain of command you echo the orders of your superiors and ensure that the enlisted follow them to the letter. Additionally, you are responsible for the wellbeing of the troops and their ongoing training with the NCR."
	supervisors = "Lieutenants and above"
	selection_color = "#fff5cc"
	exp_requirements = 190

	outfit = /datum/outfit/job/ncr/f13sergeant

	loadout_options = list(
	/datum/outfit/loadout/sgtcombat, //Mantle vest, 5.56 heavy service rifle
	/datum/outfit/loadout/sgtscout //Scout armor, 5.56 marksman carbine
	)

/datum/outfit/job/ncr/f13sergeant
	name = "NCR Sergeant"
	jobtype = /datum/job/ncr/f13sergeant
	id = 			/obj/item/card/id/dogtag/ncrsergeant
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/sgt
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	belt =          /obj/item/storage/belt/military/assault/ncr
	head =          /obj/item/clothing/head/f13/ncr
	shoes = 		/obj/item/clothing/shoes/f13/military/ncr
	gloves =        /obj/item/clothing/gloves/f13/ncr
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/storage/bag/money/small/ncrofficers, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/sgtcombat
	name = "Combat Sergeant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	suit_store = /obj/item/gun/ballistic/automatic/marksman/servicerifle/r82
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/datum/outfit/loadout/sgtscout
	name = "Scout Sergeant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/scout/veteran
	suit_store = /obj/item/gun/ballistic/automatic/marksman
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/*
Corporal
*/
/datum/job/ncr/f13corporal
	title = "NCR Corporal"
	flag = F13CORPORAL
	faction = "NCR"
	total_positions = 4
	spawn_positions = 4
	description = "You are a Corporal, an experienced enlisted soldier with a high degree of skill in a particular area. You work closely with your squad, taking orders from your Sergeant directly to achieve the NCR's goals and follow the chain of command, to your commanding officer, the Captain."
	supervisors = "Sergeants and above"
	selection_color = "#fff5cc"
	exp_requirements = 130

	outfit = /datum/outfit/job/ncr/f13corporal

	loadout_options = list(
	/datum/outfit/loadout/fieldmedic, //Field Medic Corporal - Medkit, medHUD, patches
	/datum/outfit/loadout/cplscout //Scout Corporal - Scoped hunting rifle, binoculars
	)

/datum/outfit/job/ncr/f13corporal
	name = "NCR Corporal"
	jobtype = /datum/job/ncr/f13corporal
	uniform =  		/obj/item/clothing/under/f13/ncr
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	accessory =     /obj/item/clothing/accessory/ncr/cpl
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	glasses = 		null
	suit_store = 	/obj/item/gun/ballistic/automatic/pistol/ninemil
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/money/small/ncrenlisted, \
		/obj/item/clothing/mask/ncr_facewrap)


/datum/outfit/loadout/fieldmedic
	name = "Field Medic"
	glasses = /obj/item/clothing/glasses/hud/health
	head = 	/obj/item/clothing/head/f13/ncr/medic
	backpack_contents = list(
		/obj/item/clothing/accessory/armband/medblue=1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=3,
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/storage/pill_bottle/mining=1,
		/obj/item/storage/firstaid/regular=1,
		)


/datum/outfit/loadout/cplscout
	name = "Scout"
	suit_store = /obj/item/gun/ballistic/shotgun/remington/scoped
	head = /obj/item/clothing/head/beret/ncr_scout
	backpack_contents = list(
		/obj/item/ammo_box/a762=3,
		/obj/item/twohanded/binocs=1
		)
/*
NCR Heavy Trooper
*/

/datum/job/ncr/f13ncrht
	title = "NCR Heavy Trooper"
	flag = F13NCRHT
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	description = "You are a Sergeant who has been selected for the special duty of Heavy Trooper. You are exceptionally physically fit, being conditioned to wear the many, many pounds of salvaged power armor; and trained with your R84 LMG. You are the poster-child of the NCR Embassy, and should act accordingly."
	supervisors = "the officers"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13ncrht

	loadout_options = list(
	/datum/outfit/loadout/heavygren,
	/datum/outfit/loadout/heavyaslt,
	)


/datum/outfit/job/ncr/f13ncrht
	name = "NCR Heavy Trooper"
	jobtype = /datum/job/ncr/f13ncrht
	id = 			/obj/item/card/id/dogtag/ncrht
	uniform =  		/obj/item/clothing/under/f13/ncr
	suit = 			/obj/item/clothing/suit/armor/f13/brokenpa/ncr
	head = 			/obj/item/clothing/head/helmet/power_armor/t45b
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrenlisted=1, \
		/obj/item/book/granter/trait/trekking=1, \
		/obj/item/clothing/accessory/ncr/sgt=1
		)

/datum/outfit/loadout/heavygren
	name = "Heavy Grenadier"
	suit_store = /obj/item/gun/ballistic/shotgun/riot/lethal
	belt =		/obj/item/storage/belt/grenade/ncr
	backpack_contents = list(
		/obj/item/storage/box/magnumshot=2,
		)

/datum/outfit/loadout/heavyaslt
	name = "Heavy Assault"
	suit_store = 	/obj/item/gun/ballistic/automatic/lmg
	backpack_contents = list(
		/obj/item/ammo_box/magazine/lmg=3,
		)



/*
NCR Military Police
*/
/datum/job/ncr/f13ncrmp
	title = "NCR Military Police"
	flag = F13NCRMP
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You are the primary enforcers of NCR law within the ranks of the local embassy. You are technically exempt from the standard chain of command, answering only to High-Command, and specifically, the NCR Office of Special Investigations (NCROSI). You are NOT to engage in direct combat with the enemy unless truly nessecary, but instead enforce laws and regulations within the NCR's control."
	supervisors = "NCROSI"
	selection_color = "#fff5cc"
	exp_requirements = 180

	outfit = /datum/outfit/job/ncr/f13ncrmp

/datum/outfit/job/ncr/f13ncrmp
	name = "NCR Military Police"
	jobtype = /datum/job/ncr/f13ncrmp
	id = 			/obj/item/card/id/dogtag/ncrmp
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/ssgt
	head = 			/obj/item/clothing/head/f13/ncr/goggles
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	r_hand = 		/obj/item/melee/classic_baton/telescopic
	l_hand = 		/obj/item/shield/riot/tele
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	r_pocket =		/obj/item/restraints/handcuffs
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrenlisted, \
		/obj/item/clothing/accessory/armband/mp=1,
		)

/*
Trooper
*/
/datum/job/ncr/f13trooper
	title = "NCR Trooper"
	flag = F13TROOPER
	faction = "NCR"
	total_positions = 16
	spawn_positions = 16
	description = "You answer to everyone above you in the chain of command, taking orders from the Corporals or the Sergeants directly and obeying all commands given by officers such as the Lieutenant and Captain."
	supervisors = "Corporals and above"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13trooper

	loadout_options = list(
	/datum/outfit/loadout/trooperfrontline, //Service rifle
	/datum/outfit/loadout/trooperranged //Hunting rifle
	)

/datum/outfit/job/ncr/f13trooper
	name = "NCR Trooper"
	jobtype = /datum/job/ncr/f13trooper
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/tpr
	head = 			/obj/item/clothing/head/f13/ncr/goggles
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/money/small/ncrenlisted, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/trooperfrontline
	name = "Grenadier"
	suit_store = 	/obj/item/gun/ballistic/automatic/pistol/ninemil
	belt = /obj/item/storage/belt/grenade/ncr
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=2)

/datum/outfit/loadout/trooperranged
	name = "Ranged Trooper"
	suit_store = 	/obj/item/gun/ballistic/automatic/marksman/servicerifle
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/*
Recruit
*/
/datum/job/ncr/f13recruit
	title = "NCR Recruit"
	flag = F13RECRUIT
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You answer to the Sergeants or Corporals, following the chain of command, to your commanding officer, the Captain."
	supervisors = "Corporals and above"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13recruit

/datum/outfit/job/ncr/f13recruit
	name = "NCR Recruit"
	jobtype = /datum/job/ncr/f13recruit
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/rec
	ears = null
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	gloves = null
	head = 			/obj/item/clothing/head/f13/ncr
	glasses = 		null
	suit_store = 	/obj/item/gun/ballistic/automatic/marksman/servicerifle/varmint
	belt =          /obj/item/storage/belt/military/assault/ncr
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/small=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/money/small/ncrenlisted)

/*
Support Personnel
*/
/datum/job/ncr/f13support
	title = "NCR Support Personnel"
	flag = F13SUPPORT
	faction = "NCR"
	total_positions = 4
	spawn_positions = 4
	description = "You are base support personnel of the NCR Army assigned the vital duty of helping them with cooking, farming, mining, engineering and serving as an on-base doctor and other non-combative tasks. While you have been to basic training, it was rushed and hardly prepared you for the horrors of war. Your sidearm is to be used in your own defense, only."
	supervisors = "everyone in the NCR"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13support

	loadout_options = list(
	/datum/outfit/loadout/nspdoctor, //Support Personnel Doctor
	/datum/outfit/loadout/nspengineer, // Support Personnel Engineer
	/datum/outfit/loadout/nspassistant // Support Personnel Assistant
	)

/datum/outfit/job/ncr/f13support
	name = "NCR Support Personnel"
	jobtype = /datum/job/ncr/f13support
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/armband/engine/ncr/ncb
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	suit_store = 	/obj/item/gun/ballistic/automatic/pistol/ninemil
	ears = 			/obj/item/radio/headset //no NCR comms
	belt =			/obj/item/pickaxe
	gloves = null
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/ore = 1,
		/obj/item/storage/bag/money/small/ncrenlisted)

/datum/outfit/loadout/nspdoctor
	name = "Support Personnel Doctor"
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor/labcoat
	head = 			/obj/item/clothing/head/f13/ncr/medic
	glasses = 		/obj/item/clothing/glasses/hud/health
	suit_store =    /obj/item/healthanalyzer
	belt =          /obj/item/storage/belt/medical
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/storage/pill_bottle/mining=1, \
		/obj/item/storage/firstaid/regular=1,  \
		/obj/item/book/granter/trait/chemistry=1)

/datum/outfit/loadout/nspengineer
	name = "Support Personnel Engineer"
	suit =          /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = 			/obj/item/clothing/head/hardhat/ncr
	glasses = 		/obj/item/clothing/glasses/welding
	gloves =		/obj/item/clothing/gloves/color/yellow
	belt =          /obj/item/storage/belt/utility/full/engi
	shoes = 		/obj/item/clothing/shoes/f13/military/ncr
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/stack/sheet/mineral/wood/twenty,  \
		/obj/item/grenade/plastic=1, \
		/obj/item/stack/sheet/metal/fifty=2, \
		/obj/item/stack/sheet/glass/fifty=1, \
		/obj/item/storage/box/emptysandbags=2,  \
		/obj/item/clothing/head/f13/ncr/goggles
		)

/datum/outfit/loadout/nspassistant
	name = "Support Personnel Assistant"
	backpack_contents = list(
		/obj/item/storage/bag/plants, \
		/obj/item/clothing/suit/apron/chef, \
		/obj/item/kitchen/knife, \
		/obj/item/storage/bag/ore, \
		/obj/item/pickaxe)

/*
Veteran Ranger
*/
/datum/job/ncr/f13vetranger
	title = "NCR Veteran Ranger"
	flag = F13VETRANGER
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You answer directly to the Captain, working either independently or in a team to complete your mission objectives however required, operating either alone, in a squad or with the NCR Army. As a Veteran Ranger you work closely with the Captain in planning special operations with your team while also carrying out those orders in the field by any means necessary."
	supervisors = "Captain and above"
	selection_color = "#ffeeaa"
	exp_requirements = 840
	exp_type = EXP_TYPE_RANGER

	outfit = /datum/outfit/job/ncr/f13vetranger

	loadout_options = list(
	/datum/outfit/loadout/vrelite, //AMR, elite armor and slower slowdown.
	/datum/outfit/loadout/vrrecon, //Recon duster, scoped brush gun, no slowdown.
	/datum/outfit/loadout/vrstandard //Standard Vet Gear, minor slowdown, non-scoped brush gun.
	)

/datum/job/ncr/f13vetranger/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Iron Fist")


/datum/outfit/job/ncr/f13vetranger
	name = "NCR Veteran Ranger"
	jobtype = /datum/job/ncr/f13vetranger
	id = 			/obj/item/card/id/dogtag/ncrranger
	uniform =  		/obj/item/clothing/under/f13/vetranger
	belt =			/obj/item/storage/belt/military/assault/ncr
	gloves =		/obj/item/clothing/gloves/rifleman
	shoes =			/obj/item/clothing/shoes/laced
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/sequoia=1, \
		/obj/item/ammo_box/c4570=3, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrofficers)

/datum/outfit/loadout/vrelite
	name = "Elite Veteran Ranger"
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/eliteriot
	head = /obj/item/clothing/head/helmet/f13/ncr/rangercombat/eliteriot
	suit_store = /obj/item/gun/ballistic/shotgun/antimateriel
	backpack_contents = list(
		/obj/item/ammo_box/a50MG=2,
		/obj/item/ammo_box/a50MG/AP=1)

/datum/outfit/loadout/vrrecon
	name = "Recon Veteran Ranger"
	suit = /obj/item/clothing/suit/toggle/armor/f13/rangerrecon
	suit_store = /obj/item/gun/ballistic/shotgun/automatic/hunting/brush/scoped
	backpack_contents = list(
		/obj/item/ammo_box/tube/c4570=4)

/datum/outfit/loadout/vrstandard
	name = "Standard Veteran Ranger"
	suit = 			/obj/item/clothing/suit/armor/f13/rangercombat
	head = 			/obj/item/clothing/head/helmet/f13/ncr/rangercombat
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/*
Ranger
*/
/datum/job/ncr/f13ranger
	title = "NCR Patrol Ranger"
	flag = F13RANGER
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	description = "As a Ranger, you perform reconnaissance, seize or destroy assets, and capture or recover designated targets in service to the Republic. Your reason for being sent here is to find and exploit local assets within the Region in order to prepare the area for the Republic's eventual arrival."
	supervisors = "Ranger Command, and the Veteran Ranger"
	selection_color = "#fff5cc"
	exp_requirements = 360
	exp_type = EXP_TYPE_RANGER

	outfit = /datum/outfit/job/ncr/f13ranger


/datum/job/ncr/f13ranger/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")


/datum/outfit/job/ncr/f13ranger
	name = "NCR Patrol Ranger"
	jobtype = /datum/job/ncr/f13ranger
	id = 			/obj/item/card/id/dogtag/ncrranger
	uniform =  		/obj/item/clothing/under/f13/ranger
	suit = 			/obj/item/clothing/suit/armor/f13/combat/ncr
	belt =			/obj/item/storage/belt/military/assault/ncr
	head = 			/obj/item/clothing/head/f13/ranger
	gloves =		/obj/item/clothing/gloves/patrol
	shoes =			/obj/item/clothing/shoes/laced
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	suit_store = 	/obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/m29/alt,
		/obj/item/ammo_box/m44=2, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/ammo_box/magazine/m556/rifle=3, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrofficers)
	r_pocket = /obj/item/twohanded/binocs

/*
Recon Ranger
*/
/datum/job/ncr/f13recranger
	title = "NCR Recon Ranger"
	flag = F13RECRANGER
	faction = "NCR"
	total_positions = 3
	spawn_positions = 3
	description = "You answer directly to the Captain, working either independently with other Rangers or Infantry to complete your mission objectives however required, working either alone, in a squad or with the Army. As a Recon Ranger, you perform reconnaissance, seize or destroy assets and capture, exploit, or recover designated targets on behalf of the NCR."
	supervisors = "Veteran Ranger"
	selection_color = "#fff5cc"
	exp_type = EXP_TYPE_RANGER
	outfit = /datum/outfit/job/ncr/f13recranger


/datum/job/ncr/f13recranger/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")


/datum/outfit/job/ncr/f13recranger
	name = "NCR Recon Ranger"
	jobtype = /datum/job/ncr/f13recranger
	id = 			/obj/item/card/id/dogtag/ncrranger
	uniform = 		/obj/item/clothing/under/f13/trailranger
	suit = 			/obj/item/clothing/suit/armor/f13/trailranger
	belt =			/obj/item/storage/belt/military/assault/ncr
	head = 			/obj/item/clothing/head/f13/trailranger
	shoes = 		/obj/item/clothing/shoes/laced
	gloves = null
	glasses = 		/obj/item/clothing/glasses/sunglasses
	suit_store = 	/obj/item/gun/ballistic/automatic/marksman/sniper
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/m29/alt,
		/obj/item/ammo_box/m44=2, \
		/obj/item/ammo_box/magazine/w308=3, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrenlisted)
	r_pocket = /obj/item/twohanded/binocs
