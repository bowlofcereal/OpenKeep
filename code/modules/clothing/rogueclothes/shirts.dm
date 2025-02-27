/obj/item/clothing/suit/roguetown/shirt
	slot_flags = ITEM_SLOT_SHIRT
	body_parts_covered = CHEST|VITALS
	prevent_crits = list(BCLASS_LASHING, BCLASS_BITE) //Bite crit protection on shirts should help stop cases of spawning in and getting instantly heart crit by a wolf.
	icon = 'icons/roguetown/clothing/shirts.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/shirts.dmi'
	equip_sound = 'sound/foley/equip/cloak_equip.ogg'
	pickup_sound = 'sound/foley/equip/cloak_take_off.ogg'
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_shirts.dmi'
	sleevetype = "shirt"
	edelay_type = 1
	equip_delay_self = 25
	bloody_icon_state = "bodyblood"
	boobed = TRUE
	sewrepair = TRUE
	anvilrepair = null
	smeltresult = /obj/item/ash

/obj/item/clothing/suit/roguetown/shirt/undershirt
	name = "shirt"
	desc = ""
	icon_state = "undershirt"
	item_state = "undershirt"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|ARMS|VITALS

/obj/item/clothing/suit/roguetown/shirt/undershirt/priest
	name = "undervestments"
	desc = ""
	icon_state = "priestunder"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_shirts.dmi'

/obj/item/clothing/suit/roguetown/shirt/undershirt/uncolored
	color = CLOTHING_LINEN

/obj/item/clothing/suit/roguetown/shirt/undershirt/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/suit/roguetown/shirt/undershirt/lord
	desc = ""
	color = CLOTHING_BERRY_BLUE

/obj/item/clothing/suit/roguetown/shirt/undershirt/red
	color = CLOTHING_RED_OCHRE

/obj/item/clothing/suit/roguetown/shirt/undershirt/purple
	color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/suit/roguetown/shirt/undershirt/green
	color = CLOTHING_FOREST_GREEN

/obj/item/clothing/suit/roguetown/shirt/undershirt/guard
	color = CLOTHING_BLOOD_RED

/obj/item/clothing/suit/roguetown/shirt/undershirt/guard/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/undershirt/guard/Destroy()
	GLOB.lordcolor -= src
	return ..()


/obj/item/clothing/suit/roguetown/shirt/undershirt/guardsecond
	color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/suit/roguetown/shirt/undershirt/guardsecond/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/undershirt/guardsecond/lordcolor(primary,secondary)
	if(secondary)
		color = secondary

/obj/item/clothing/suit/roguetown/shirt/undershirt/guardsecond/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/shirt/undershirt/random/Initialize()
	color = RANDOM_PEASANT_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/undershirt/puritan
	name = "formal silks"
	icon_state = "puritan_shirt"
	allowed_race = list("human", "tiefling", "elf", "dwarf", "aasimar")

/obj/item/clothing/suit/roguetown/shirt/undershirt/sailor
	icon_state = "sailorblues"

/obj/item/clothing/suit/roguetown/shirt/undershirt/sailor/red
	icon_state = "sailorreds"

/obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant
	r_sleeve_status = SLEEVE_TORN
	body_parts_covered = CHEST|ARM_LEFT|VITALS

/obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant/l
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_TORN
	body_parts_covered = CHEST|ARM_RIGHT|VITALS

/obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant/Initialize()
	color = pick(CLOTHING_MUD_BROWN, CLOTHING_OLD_LEATHER,  CLOTHING_SPRING_GREEN, CLOTHING_BARK_BROWN	)
	..()

/obj/item/clothing/suit/roguetown/shirt/shortshirt
	name = "shirt"
	desc = "A simple shirt."
	icon_state = "shortshirt"
	item_state = "shortshirt"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/shortshirt/random/Initialize()
	color = pick("#6b5445", "#435436", "#704542", "#79763f")
	..()

/obj/item/clothing/suit/roguetown/shirt/shortshirt/uncolored
	color = CLOTHING_LINEN

/obj/item/clothing/suit/roguetown/shirt/shortshirt/merc
	name = "shirt"
	desc = ""
	icon_state = "shortshirt"
	item_state = "shortshirt"
	r_sleeve_status = SLEEVE_TORN
	l_sleeve_status = SLEEVE_TORN
	body_parts_covered = CHEST|VITALS

/obj/item/clothing/suit/roguetown/shirt/shadowshirt
	name = "silk shirt"
	desc = "A sleeveless shirt woven of glossy material."
	icon_state = "shadowshirt"
	item_state = "shadowshirt"
	r_sleeve_status = SLEEVE_TORN
	l_sleeve_status = SLEEVE_TORN
	body_parts_covered = CHEST|VITALS
	allowed_race = list("elf", "dark elf")

/obj/item/clothing/suit/roguetown/shirt/rags
	slot_flags = ITEM_SLOT_ARMOR
	name = "rags"
	desc = "Better than going naked? You be the judge."
	body_parts_covered = CHEST|GROIN|VITALS
	color = "#b0b0b0"
	icon_state = "rags"
	item_state = "rags"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/tunic
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "tunic"
	desc = "A comfortable linen tunic."
	body_parts_covered = CHEST|GROIN|VITALS
	boobed = FALSE
	icon_state = "tunic"
	color = CLOTHING_LINEN
	sleevetype = "tunic"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/tunic/green
	color = CLOTHING_FOREST_GREEN

/obj/item/clothing/suit/roguetown/shirt/tunic/blue
	color = CLOTHING_SKY_BLUE

/obj/item/clothing/suit/roguetown/shirt/tunic/red
	color = CLOTHING_BLOOD_RED

/obj/item/clothing/suit/roguetown/shirt/tunic/purple
	color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/suit/roguetown/shirt/tunic/ucolored
	color = CLOTHING_ASH_GREY

/obj/item/clothing/suit/roguetown/shirt/tunic/random/Initialize()
	color = pick(CLOTHING_PLUM_PURPLE, CLOTHING_BLOOD_RED, CLOTHING_SKY_BLUE, CLOTHING_FOREST_GREEN)
	..()

/obj/item/clothing/suit/roguetown/shirt/tunic/tunicprimary
	color = CLOTHING_BLOOD_RED

/obj/item/clothing/suit/roguetown/shirt/tunic/tunicprimary/Initialize()
	..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/tunic/tunicprimary/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/shirt/dress
	slot_flags = ITEM_SLOT_ARMOR
	name = "dress"
	desc = ""
	body_parts_covered = CHEST|GROIN|LEGS|VITALS
	icon_state = "dress"
	item_state = "dress"
	allowed_sex = list(FEMALE)
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/dress/gen
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "dress"
	desc = "A simple dress that can be worn with many accessories to change one's style."
	body_parts_covered = CHEST|GROIN|LEGS|VITALS
	icon_state = "dressgen"
	item_state = "dressgen"

/obj/item/clothing/suit/roguetown/shirt/dress/gen/brown
	color = CLOTHING_PEASANT_BROWN

/obj/item/clothing/suit/roguetown/shirt/dress/gen/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/suit/roguetown/shirt/dress/gen/blue
	color = CLOTHING_SKY_BLUE

/obj/item/clothing/suit/roguetown/shirt/dress/gen/green
	color = CLOTHING_BOG_GREEN

/obj/item/clothing/suit/roguetown/shirt/dress/gen/purple
	color = CLOTHING_PLUM_PURPLE

/obj/item/clothing/suit/roguetown/shirt/dress/gen/maid
	color = CLOTHING_DARK_INK

/obj/item/clothing/suit/roguetown/shirt/dress/gen/maid/Initialize()
	..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/dress/gen/maid/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/shirt/dress/gen/random/Initialize()
	color = RANDOM_PEASANT_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "chemise"
	desc = "Simple yet elegant, it offers both style and comfort for everyday wear."
	body_parts_covered = CHEST|GROIN|LEGS|VITALS
	icon_state = "silkdress"
	color = CLOTHING_LINEN

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/princess
	color = CLOTHING_CHALK_WHITE

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/princess/Initialize()
	..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/princess/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/black
	color = CLOTHING_DARK_INK

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/green
	color = CLOTHING_FOREST_GREEN

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/random/Initialize()
	color = RANDOM_NOBLE_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/silkdressprimary
	color = CLOTHING_BLOOD_RED

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/silkdressprimary/Initialize()
	..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/dress/silkdress/silkdressprimary/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/suit/roguetown/shirt/dress/gen/sexy
	slot_flags = ITEM_SLOT_ARMOR
	name = "dress"
	desc = "A short, tight dress of thin and silky fabric."
	body_parts_covered = null
	icon_state = "sexydress"
	item_state = "sexydress"
	sleevetype = null
	sleeved = null
	color = "#a90707"

/obj/item/clothing/suit/roguetown/shirt/dress/gen/sexy/Initialize()
	color = pick(CLOTHING_WINESTAIN_RED, CLOTHING_SKY_BLUE, CLOTHING_SALMON	, CLOTHING_SOOT_BLACK)
	..()

/obj/item/clothing/suit/roguetown/shirt/dress/valorian
	name = "valorian dress"
	desc = "A simple deep-blue frock worn in many cities of Valoria."
	icon_state = "valorian"
	item_state = "valorian"
	allowed_race = list("human", "tiefling", "aasimar", "elf")
	sellprice = 13

/obj/item/clothing/suit/roguetown/shirt/undershirt/webs
	name = "webbed shirt"
	desc = "Exotic silk finely woven into.. this? Might as well be wearing a spiderweb."
	icon_state = "webs"
	item_state = "webs"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|ARMS|VITALS
	color = null
	sellprice = 30

/obj/item/clothing/suit/roguetown/shirt/robe/archivist
	name = "archivist's robe"
	desc = "Robes belonging to seekers of knowledge."
	icon_state = "archivist"
	icon = 'icons/roguetown/clothing/shirts.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/shirts.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/shirts.dmi'
	boobed = TRUE
	flags_inv = HIDEBOOB
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	color = null
	sellprice = 100

/obj/item/clothing/suit/roguetown/shirt/jester
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	name = "jester's tunick"
	desc = "Just remember that the last laugh is on you."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "jestershirt"
	icon = 'icons/roguetown/clothing/shirts.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/shirts.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/shirts.dmi'
	boobed = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/grenzelhoft
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	name = "grenzelhoftian hip-shirt"
	desc = "A true fashion statement worn by Grenzelhoftian swordsmen."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "grenzelshirt"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	boobed = TRUE
	detail_tag = "_detail"
	detail_color = CLOTHING_WHITE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	var/picked = FALSE
	colorgrenz = TRUE

	armor = ARMOR_PADDED_BAD
	prevent_crits = MINOR_CRITICALS
	max_integrity = INTEGRITY_POOR

/obj/item/clothing/suit/roguetown/shirt/grenzelhoft/proc/get_player_input()
	if(!ishuman(loc))
		return

	var/list/colors = list(
	"PURPLE"="#865c9c",
	"RED"="#933030",
	"BROWN"="#685542",
	"GREEN"="#79763f",
	"BLUE"="#395480",
	"YELLOW"="#b5b004",
	"TEAL"="#249589",
	"WHITE"="#ffffff",
	"ORANGE"="#b86f0c",
	"Royal Majenta"="#962e5c")
	var/mob/living/carbon/human/L = loc
	var/choice = input(L, "Choose a color.", "GRENZELHOFTIAN COLORPLEX") as anything in colors
	var/playerchoice = colors[choice]
	picked = TRUE
	detail_color = playerchoice
	update_icon()
	for(var/obj/item/clothing/V in L.get_equipped_items(FALSE))
		testing("clothes to color are [V]")
		if(V.colorgrenz)
			V.detail_color = playerchoice
			V.update_icon()
	L.regenerate_icons()

/obj/item/clothing/suit/roguetown/shirt/grenzelhoft/Initialize()
	. = ..()
	if(!picked)
		INVOKE_ASYNC(src, PROC_REF(get_player_input))

/obj/item/clothing/suit/roguetown/shirt/grenzelhoft/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

///////////////////////////////////////////////////////////////////
// Part of Kaizoku project that is still yet to be finished.     //
// The Demo usage is meant for Stonekeep and Warmongers.		 //
// If the usage for other sources is desired, before it finishes,//
// ask monochrome9090 for permission. Respect the artists's will.//
// If you want this quality content, COMMISSION me instead. 	 //
// For this project, requirements are low, and mostly lore-based.//
// I just do not desire for the Abyssariads to be butchered.	 //
///////////////////////////////////////////////////////////////////

/obj/item/clothing/suit/roguetown/shirt/tunic/kimono
	name = "traditional kimono"
	desc = "A front-wrapped garment with long sleeves made from a long, narrow bolt of cloth used as a formal garment by the poor and rich alike."
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	icon_state = "kimono"
	item_state = "kimono"
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	boobed = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/tunic/kimono/random/Initialize()
	color = RANDOM_PEASANT_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/tunic/kimono/ronin
	color = CLOTHING_RONIN

/obj/item/clothing/suit/roguetown/shirt/tunic/kimono/dark
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/suit/roguetown/shirt/tunic/kimono/kabukimono
	color = CLOTHING_KABUKIMONO

/obj/item/clothing/suit/roguetown/shirt/rags/monkgarb
	name = "monk samue"
	desc = "The Samue is the clothing used by Abyssanctum monks engaged on the act of Samu, most proper for those performing temple maintenance and mountain hiking."
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	icon_state = "monkgarb"
	item_state = "monkgarb"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|ARMS|VITALS

/obj/item/clothing/suit/roguetown/shirt/rags/monkgarb/random/Initialize()
	color = RANDOM_PEASANT_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/tunic/kamishimo //I know this is actually a Kataginu, but it is know more as 'Kamishimo', even if lacking a Hakama. Because HAKAMA is its own thing here.
	name = "kataginu"
	desc = "A formal kimono used by men, a short sleeveless garment made of hemp which usually comes together with a hakama, and worn on top of a kosode or kimono. To use one without cloth underneath, conveys a ronin nature."
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR|ITEM_SLOT_CLOAK
	icon_state = "kamishimo"
	item_state = "kamishimo"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|VITALS

/obj/item/clothing/suit/roguetown/shirt/tunic/kamishimo/random/Initialize()
	color = RANDOM_PEASANT_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/tunic/kamishimo/ronin
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/suit/roguetown/shirt/tunic/kamishimo/eidolon
	color = CLOTHING_EIDOLON

/obj/item/clothing/suit/roguetown/shirt/looseshirt
	name = "kimono jinbei"
	desc = "A summer shirt that goes along with a tobi, used during the hot summers on Fog islands."
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	icon_state = "looseshirt"
	item_state = "looseshirt"
	boobed = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|ARMS|VITALS

/obj/item/clothing/suit/roguetown/shirt/looseshirt/Initialize()
	color = RANDOM_PEASANT_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/looseshirt/shinobi
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/suit/roguetown/shirt/looseshirt/dragonslayer
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	color = CLOTHING_WINESTAIN_RED

/obj/item/clothing/suit/roguetown/shirt/rags/tribal
	name = "tribal garbs"
	desc = "Tribal clothings made from plant fiber commonly used by Undine tribesmen."
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon_state = "tribalgarb"
	item_state = "tribalgarb"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	body_parts_covered = CHEST|VITALS

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian
	name = "onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare, holding the marks of Abyssor upon the cloth."
	icon_state = "abyssaltunic"
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	boobed = TRUE
	flags_inv = HIDEBOOB
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	allowed_sex = list(MALE, FEMALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")
	color = null
	sellprice = 100

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian/black
	color = CLOTHING_SOOT_BLACK

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian/random/Initialize()
	color = RANDOM_NOBLE_DYES
	..()

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian/thunder
	name = "thunder onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare. Marked in yellow for the mountainous magicians and monks who praises Abyssor's thunders."
	color = CLOTHING_THUNDER

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian/storm
	name = "storm onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare. Marked in dark blue for the lighthouse keepers of Abyssanctum's faith, who keeps the eternal fire going."
	color = CLOTHING_STORM

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian/ocean
	name = "ocean onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare.  Marked in light blue for the expeditionary magicians and monks of Abyssanctum's faith, long married to the ocean."
	color = CLOTHING_OCEAN

/obj/item/clothing/suit/roguetown/shirt/robe/wizard/guardian/island
	name = "island onmyoji's warfare garb"
	desc = "The garbs used by Abyssariad magicians during times of warfare. Marked in red for the soilgazers of Abyssanctum's faith, those bent in ensuring no plague shall reach their blessed islands. "
	color = CLOTHING_ISLAND

/obj/item/clothing/suit/roguetown/shirt/kaizoku/robe
	slot_flags = ITEM_SLOT_ARMOR
	name = "onmyoji's garb"
	desc = "Casual abyssariad garbs usually used by magicians, or those living on the frigid, treacherous mountains on the edges of the Fog islands."
	icon_state = "loosetunic"
	icon = 'icons/roguetown/kaizoku/clothingicon/shirt.dmi'
	mob_overlay_icon = 'icons/roguetown/kaizoku/clothing/shirt.dmi'
	sleeved = 'icons/roguetown/kaizoku/helpers/sleeves_shirts.dmi'
	boobed = TRUE
	flags_inv = HIDEBOOB
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	allowed_sex = list(MALE)
	allowed_race = list("human", "tiefling", "aasimar", "abyssariad")
	color = null

/obj/item/clothing/suit/roguetown/shirt/kaizoku/robe/Initialize()
	color = RANDOM_PEASANT_DYES
	..()
