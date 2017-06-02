/obj/structure/stairs
	name = "stairs"
	icon = 'icons/objects/structures/stairs.dmi'
	icon_state = "stairs_up"
	density = 0
	flags = FLAG_SIMULATED | FLAG_ANCHORED

/obj/structure/stairs/Initialize()
	var/turf/checking
	if(z == 1)
		checking = locate(x, y, 2)
	else
		checking = locate(x, y, 1)
	if(!(locate(/obj/structure/stairs) in checking))
		new /obj/structure/stairs(checking)

/obj/structure/stairs/UpdateIcon()
	if(z == 1)
		icon_state = "stairs_up"
	else
		icon_state = "stairs_down"
	..()

/obj/structure/stairs/ManipulatedBy(var/mob/user)
	if(user.loc != loc)
		return FALSE
	if(z == 1)
		user.ForceMove(locate(x,y,2))
	else
		user.ForceMove(locate(x,y,1))

/obj/structure/stairs/down
	icon_state = "stairs_down"
