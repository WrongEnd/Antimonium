/proc/blood_splatter(var/mob/bleeder, var/turf/bleeding_on)
	if(!istype(bleeding_on, /turf))
		bleeding_on = get_turf(bleeding_on)
	if(istype(bleeding_on))
		new /obj/effect/random/blood(bleeding_on, bleeder)