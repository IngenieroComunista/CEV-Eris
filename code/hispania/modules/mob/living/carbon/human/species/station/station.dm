/datum/species/kidan
	name = SPECIES_KIDAN
	name_plural = SPECIES_KIDAN
	icobase = 'icons/hispania/mob/human_races/r_kidan.dmi'
	deform = 'icons/hispania/mob/human_races/r_def_kidan.dmi'
	faceicobase = 'icons/hispania/mob/kidan_face.dmi'
	blurb = "The Kidan are ant-like creatures who posses an exoskeleton. \
	They originate from the world of Aurum, a harsh world with a poor atmosphere now lost with the destruction of the Milky Way. \
	The last Kidan Empress was killed and their planets conquered at least a century ago in a war with humanity. \
	After unconditional surrender the kidan were strictly controlled and under sanctions. \
	Most of the kidan in Canis Major are now refugees."
	name_language = LANGUAGE_KIDAN
	language = LANGUAGE_KIDAN           // Default racial language, if any.
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_EYE_COLOR
	num_alternate_languages = 1
	min_age = 18
	max_age = 60
	unarmed_types = list(/datum/unarmed_attack/claws, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	reagent_tag = IS_KIDAN
	spawn_flags = CAN_JOIN
	breath_pressure = 10 //deafault 16
	brute_mod = 0.8
	burn_mod = 1.5
	radiation_mod = 0.5
	toxins_mod = 0.5
	max_skin_tone = 90

	eyes = "kidan_eyes"
	flesh_color = "#ba7814"
	blood_color = "#FB9800"

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart/kidan,
		BP_LUNGS =    /obj/item/organ/internal/lungs/kidan,
		BP_LIVER =    /obj/item/organ/internal/liver/kidan,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/kidan,
		BP_BRAIN =    /obj/item/organ/internal/brain/kidan,
		BP_APPENDIX = /obj/item/organ/internal/appendix,
		BP_EYES =     /obj/item/organ/internal/eyes/kidan, //Default darksight of 2.
		)

/datum/species/kidan/get_bodytype()
	return SPECIES_KIDAN

/datum/species/skrell
	name = SPECIES_SKRELL
	name_plural = SPECIES_SKRELL
	icobase = 'icons/hispania/mob/human_races/r_skrell.dmi'
	deform = 'icons/hispania/mob/human_races/r_def_skrell.dmi'
	name_language = LANGUAGE_SKRELL
	language = LANGUAGE_SKRELL
	num_alternate_languages = 1
	//primitive_form = /datum/species/monkey/skrell esto no tiene utilidad en eris pero luego podria servir, lo dejo como recordatorio

	blurb = "An amphibious species, Skrell come from the star system known as Qerr'Vallis, which translates to 'Star of \
	the royals' or 'Light of the Crown'.<br/><br/>Skrell are a highly advanced and logical race who live under the rule \
	of the Qerr'Katish, a caste within their society which keeps the empire of the Skrell running smoothly. Skrell are \
	herbivores on the whole and tend to be co-operative with the other species of the galaxy, although they rarely reveal \
	the secrets of their empire to their allies."


	//species_traits = list(LIPS)
	spawn_flags = CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR | HAS_FACIAL_COLOR | HAS_SKIN_COLOR
	taste_sensitivity = TASTE_DULL
	flesh_color = "#8CD7A3"
	blood_color = "#1D2CBF"
	base_color = "#38b661" //RGB: 56, 182, 97.
	eyes = "skrell_eyes"
	//Default styles for created mobs.
	reagent_tag = IS_SKRELL
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart/skrell,
		BP_LUNGS =    /obj/item/organ/internal/lungs/skrell,
		BP_LIVER =    /obj/item/organ/internal/liver/skrell,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/skrell,
		BP_BRAIN =    /obj/item/organ/internal/brain/skrell,
		BP_APPENDIX  = /obj/item/organ/internal/appendix,
		BP_EYES  =     /obj/item/organ/internal/eyes/skrell, //Default darksight of 2.
		"headpocket" = /obj/item/organ/internal/headpocket
		)

/datum/species/skrell/get_bodytype()
	return SPECIES_SKRELL
