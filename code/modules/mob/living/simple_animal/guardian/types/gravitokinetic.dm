//gravitokinetic
/mob/living/simple_animal/hostile/guardian/gravitokinetic
	melee_damage_lower = 15
	melee_damage_upper = 15
	damage_coeff = list(BRUTE = 0.75, BURN = 0.75, TOX = 0.75, CLONE = 0.75, STAMINA = 0, OXY = 0.75)
	playstyle_string = "<span class='holoparasite'>As a <b>gravitokinetic</b> type, you can alt click to make the gravity on the ground stronger, and punching applies this effect to a target.</span>"
	magic_fluff_string = "<span class='holoparasite'>..And draw the Singularity, an anomalous force of terror.</span>"
	tech_fluff_string = "<span class='holoparasite'>Boot sequence complete. Gravitokinetic modules loaded. Holoparasite swarm online.</span>"
	carp_fluff_string = "<span class='holoparasite'>CARP CARP CARP! Caught one! It's a gravitokinetic carp! Now do you understand the gravity of the situation?</span>"
	var/list/gravito_targets = list()
	var/gravity_power_range = 10 //how close the stand must stay to the target to keep the heavy gravity

///Removes gravity from affected mobs upon guardian death to prevent permanent effects
/mob/living/simple_animal/hostile/guardian/gravitokinetic/death()
	. = ..()
	for(var/datum/component/C in gravito_targets)
		remove_gravity(C)

/mob/living/simple_animal/hostile/guardian/gravitokinetic/AttackingTarget()
	. = ..()
	if(isliving(target) && target != src)
		to_chat(src, "<span class='danger'><B>My punch has applied heavy gravity to [target]!</span></B>")
		add_gravity(target, 2)
		to_chat(target, "<span class='danger'>Everything feels really heavy!</span>")

/mob/living/simple_animal/hostile/guardian/gravitokinetic/AltClickOn(atom/A)
	if(isopenturf(A) && is_deployed() && stat != DEAD && in_range(src, A) && !incapacitated())
		var/turf/T = A
		if(isspaceturf(T))
			to_chat(src, "<span class='warning'>I cannot add gravity to space!</span>")
			return
		visible_message("<span class='danger'>[src] slams their fist into the [T]!</span>", "<span class='notice'>I modify the gravity of the [T].</span>")
		do_attack_animation(T)
		add_gravity(T, 4)
		return
	return ..()

/mob/living/simple_animal/hostile/guardian/gravitokinetic/Recall(forced)
	. = ..()
	to_chat(src, "<span class='danger'><B>I have released my gravitokinetic powers!</span></B>")
	for(var/datum/component/C in gravito_targets)
		remove_gravity(C)

/mob/living/simple_animal/hostile/guardian/gravitokinetic/Moved(oldLoc, dir)
	. = ..()
	for(var/datum/component/C in gravito_targets)
		if(get_dist(src, C.parent) > gravity_power_range)
			remove_gravity(C)

/mob/living/simple_animal/hostile/guardian/gravitokinetic/proc/add_gravity(atom/A, new_gravity = 2)
	var/datum/component/C = A.AddComponent(/datum/component/forced_gravity,new_gravity)
	RegisterSignal(A, COMSIG_MOVABLE_MOVED, PROC_REF(__distance_check))
	gravito_targets.Add(C)
	playsound(src, 'sound/blank.ogg', 100, TRUE)

/mob/living/simple_animal/hostile/guardian/gravitokinetic/proc/remove_gravity(datum/component/C)
	UnregisterSignal(C.parent, COMSIG_MOVABLE_MOVED)
	gravito_targets.Remove(C)
	qdel(C)

/mob/living/simple_animal/hostile/guardian/gravitokinetic/proc/__distance_check(atom/movable/AM, OldLoc, Dir, Forced)
	if(get_dist(src, AM) > gravity_power_range)
		remove_gravity(AM.GetComponent(/datum/component/forced_gravity))
