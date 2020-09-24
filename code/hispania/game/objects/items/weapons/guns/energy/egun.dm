/obj/item/weapon/gun/energy/egun
	name = "FS PDW E \"Spider Rose\""
	desc = "Spider Rose is a versatile energy based sidearm, capable of switching between low and high capacity projectile settings. In other words: Stun or Kill."
	icon = 'icons/obj/guns/energy/egun.dmi'
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	item_charge_meter = TRUE
	can_dual = 1
	fire_sound = 'sound/weapons/Taser.ogg'
	matter = list(MATERIAL_PLASTEEL = 13, MATERIAL_PLASTIC = 6, MATERIAL_SILVER = 6)
	price_tag = 2500

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "energystun"
	item_modifystate = "stun"

	init_firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energystun", item_modifystate="stun", fire_sound='sound/weapons/Taser.ogg', icon="stun"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energykill", item_modifystate="kill", fire_sound='sound/weapons/Laser.ogg', icon="kill"),
		WEAPON_CHARGE,
		)

/obj/item/weapon/gun/energy/egun/customounted
	name = "mounted hibrid gun"
	self_recharge = TRUE
	use_external_power = TRUE
	safety = FALSE
	restrict_safety = FALSE

/obj/item/weapon/gun/energy/egun/customounted/cyborg
	name = "Hybrid Gun"
	recharge_time = 10