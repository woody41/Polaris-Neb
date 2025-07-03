/proc/gen_hud_image(var/file, var/person, var/state, var/plane)
	var/image/img = image(file, person, state)
	img.plane = plane //Thanks Byond.
	img.layer = MOB_LAYER-0.2
	img.appearance_flags = APPEARANCE_UI
	return img
