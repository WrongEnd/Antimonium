/client
	var/datum/admin_rank/admin_permissions

/client/New()
	..()
	spawn()
		if(admins)
			set_admin_permissions(admins[ckey])
		DevPanel()

/client/proc/set_admin_permissions(var/datum/admin_rank/_rank, var/silent = FALSE)

	// Clear out everything, be thorough.
	if(admin_permissions)
		for(var/datum/admin_permissions/perm in admin_permission_datums)
			perm.remove_from_client(src, silent)

	var/last_rank = admin_permissions ? admin_permissions.title : null
	admin_permissions = _rank
	if(!silent && last_rank != (admin_permissions ? admin_permissions.title : null))
		notify("You are now listed as <b>[admin_permissions ? admin_permissions.title : "a player"]</b>.")

	if(admin_permissions)
		for(var/datum/admin_permissions/perm in admin_permission_datums)
			if(admin_permissions.permissions & perm.associated_permission)
				perm.add_to_client(src, silent)
	else
		admins[ckey] = null
		admins -= ckey

/client/proc/check_admin_permission(var/perm)
	return (admin_permissions && (admin_permissions.permissions & perm))