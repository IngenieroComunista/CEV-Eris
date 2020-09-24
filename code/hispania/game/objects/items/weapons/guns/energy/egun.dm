/obj/item/weapon/gun/energy/egun_mounted_cyborg
	name = "Hybrid Cyborg Gun"
	desc = "Hybrid Cyborg Gun is a versatile energy based sidearm, capable of switching between low and high capacity projectile settings. In other words: Stun or Kill."
	icon = 'icons/obj/guns/energy/egun.dmi'
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	item_charge_meter = TRUE
	can_dual = 1
	fire_sound = 'sound/weapons/Taser.ogg'

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "energystun"
	item_modifystate = "stun"

	init_firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energystun", item_modifystate="stun", fire_sound='sound/weapons/Taser.ogg', icon="stun"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energykill", item_modifystate="kill", fire_sound='sound/weapons/Laser.ogg', icon="kill"),
		WEAPON_CHARGE,
		)
	name = "mounted hibrid gun"
	self_recharge = TRUE
	use_external_power = TRUE
	safety = FALSE
	restrict_safety = FALSE
	recharge_time = 10
