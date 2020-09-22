/obj/item/weapon/gun/energy/gun/mounted/cyborg
	name = "Hybrid Gun"
	desc = "Hybrid Gun is a versatile energy based sidearm, capable of switching between low and high capacity projectile settings. In other words: Stun or Kill.Use Alt+Click to remove secure."
	icon = 'icons/obj/guns/energy/egun.dmi'
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	item_charge_meter = TRUE
	recharge_time = 10

	fire_sound = 'sound/weapons/Taser.ogg'

	projectile_type = /obj/item/projectile/beam/stun
	modifystate = "energystun"
	item_modifystate = "stun"

	init_firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energystun", item_modifystate="stun", fire_sound='sound/weapons/Taser.ogg', icon="stun"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energykill", item_modifystate="kill", fire_sound='sound/weapons/Laser.ogg', icon="kill"),
		WEAPON_CHARGE,
		)