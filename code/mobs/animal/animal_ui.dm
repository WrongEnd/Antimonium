/mob/animal/create_ui()
	inventory_slots[SLOT_MOUTH] =      new /obj/ui/inv/hand(src, "mouth",      "3,1", SLOT_MOUTH)
	inventory_slots[SLOT_LOWER_BODY] = new /obj/ui/inv/gear(src, "lower body", "1,2", SLOT_LOWER_BODY, SLOT_FLAG_LOWER_BODY)
	inventory_slots[SLOT_UPPER_BODY] = new /obj/ui/inv/gear(src, "upper body", "1,3", SLOT_UPPER_BODY, SLOT_FLAG_UPPER_BODY)
	inventory_slots[SLOT_BACK] =       new /obj/ui/inv/gear(src, "back",       "2,4", SLOT_BACK,       SLOT_FLAG_BACK)
	inventory_slots[SLOT_EYES] =       new /obj/ui/inv/gear(src, "eyes",       "2,3", SLOT_EYES,       SLOT_FLAG_EYES)
	inventory_slots[SLOT_NECK] =       new /obj/ui/inv/gear(src, "neck",       "3,3", SLOT_NECK,       SLOT_FLAG_NECK)
	inventory_slots[SLOT_HAT] =        new /obj/ui/inv/gear(src, "hat",        "1,4", SLOT_HAT,        SLOT_FLAG_HAT)
	..()