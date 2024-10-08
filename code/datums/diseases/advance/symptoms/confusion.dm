/*
//////////////////////////////////////

Confusion

	Little bit hidden.
	Lowers resistance.
	Decreases stage speed.
	Not very transmissibile.
	Intense Level.

Bonus
	Makes the affected mob be confused for short periods of time.

//////////////////////////////////////
*/

/datum/symptom/confusion

	name = "Confusion"
	desc = ""
	stealth = 1
	resistance = -1
	stage_speed = -3
	transmittable = 0
	level = 4
	severity = 2
	base_message_chance = 25
	symptom_delay_min = 10
	symptom_delay_max = 30
	var/brain_damage = FALSE
	threshold_desc = "<b>Resistance 6:</b> Causes brain damage over time.<br>\
					<b>Transmission 6:</b> Increases confusion duration and strength.<br>\
					<b>Stealth 4:</b> The symptom remains hidden until active."

/datum/symptom/confusion/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.properties["resistance"] >= 6)
		brain_damage = TRUE
	if(A.properties["transmittable"] >= 6)
		power = 1.5
	if(A.properties["stealth"] >= 4)
		suppress_warning = TRUE

/datum/symptom/confusion/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/carbon/M = A.affected_mob
	switch(A.stage)
		if(1, 2, 3, 4)
			if(prob(base_message_chance) && !suppress_warning)
				to_chat(M, "<span class='warning'>[pick("Your head hurts.", "Your mind blanks for a moment.")]</span>")
		else
			to_chat(M, "<span class='danger'>I can't think straight!</span>")
			if(M.confused < 100)
				M.confused += (16 * power)
			if(brain_damage)
				M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * power, 80)
				M.updatehealth()

	return
