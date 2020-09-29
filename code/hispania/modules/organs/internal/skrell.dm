/obj/item/organ/internal/liver/skrell
	name = "skrell liver"
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'
	alcohol_mod_damage = 4

/obj/item/organ/internal/headpocket
	name = "headpocket"
	desc = "Allows Skrell to hide tiny objects within their head tentacles."
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'
	icon_state = "skrell_headpocket"
	w_class = ITEM_SIZE_TINY
	parent_organ = BP_HEAD
	var/obj/item/weapon/storage/internal/pocket
	var/storage_slots = 1
	var/max_w_class = ITEM_SIZE_SMALL
	var/max_storage_space = ITEM_SIZE_SMALL

/obj/item/organ/internal/headpocket/New()
	..()
	pocket = new /obj/item/weapon/storage/internal(src)
	pocket.max_w_class = max_w_class
	pocket.max_storage_space = max_storage_space
	pocket.storage_slots = storage_slots
	pocket.master_item = src
	// Allow adjacency calculation to work properly
	loc = owner
	// Fit only pocket sized items

/obj/item/organ/internal/headpocket/Process()
	..()
	if(pocket.contents.len && (owner.stunned || !findtextEx(owner.h_style, "Tentacles")))
		owner.visible_message(SPAN_NOTICE("Something falls from [owner]'s head!"),
													SPAN_NOTICE("Something falls from your head!"))
		empty_contents()

/obj/item/organ/internal/headpocket/ui_action_click()
	if(!loc)
		loc = owner
	pocket.MouseDrop(owner)

/obj/item/organ/internal/headpocket/removed_mob()
	empty_contents()
	. = ..()

/obj/item/organ/internal/headpocket/proc/empty_contents()
	for(var/obj/item/I in pocket.contents)
		pocket.remove_from_storage(I, get_turf(owner))

/obj/item/organ/internal/headpocket/get_contents()
	return pocket.contents

/obj/item/organ/internal/headpocket/emp_act(severity)
	pocket.emp_act(severity)
	..()

/*/esto no sirve en eris
/obj/item/organ/internal/headpocket/hear_talk(mob/M, text, verb, datum/language/speaking, speech_volume)
	pocket.catchMessage(text, M)
	..()

/obj/item/organ/internal/headpocket/hear_message(mob/living/M, msg)
	pocket.hear_message(M, msg)
	..()
*/
/obj/item/organ/internal/heart/skrell
	name = "skrell heart"
	desc = "A stream lined heart"
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'

/obj/item/organ/internal/brain/skrell
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'
	desc = "A brain with a odd division in the middle."
	icon_state = "brain2"

/obj/item/organ/internal/lungs/skrell
	name = "skrell lungs"
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'

/obj/item/organ/internal/kidneys/skrell
	name = "skrell kidneys"
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'
	desc = "The smallest kidneys you have ever seen, it probably doesn't even work."

/obj/item/organ/internal/eyes/skrell
	name = "skrell eyeballs"
	icon_state = "skrell_eyes"
	icon = 'icons/hispania/obj/species/organs/skrell.dmi'

/obj/item/organ/internal/eyes/skrell/get_icon()
	var/icon/eyes_icon = new/icon('icons/hispania/mob/human_face.dmi', "skrell_eye_l")
	eyes_icon.Blend(icon('icons/hispania/mob/human_face.dmi', "skrell_eye_r"), ICON_OVERLAY)
	eyes_icon.Blend(BP_IS_ROBOTIC(src) ? robo_color : eyes_color, ICON_ADD)
	return eyes_icon

//Subtypes
/obj/item/organ/internal/eyes/skrell/oneeye
	icon_state = "skrell_eyes_l"
	cache_key = "left_eye"

/obj/item/organ/internal/eyes/skrell/oneeye/get_icon()
	var/icon/eyes_icon
	eyes_icon = icon('icons/hispania/mob/human_face.dmi', "[icon_state]")
	eyes_icon.Blend(BP_IS_ROBOTIC(src) ? robo_color : eyes_color, ICON_ADD)
	return eyes_icon

/obj/item/organ/internal/eyes/skrell/oneeye/right
	icon_state = "skrell_eyes_r"
	cache_key = "right_eye"
// fin subtypes
