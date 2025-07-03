/mob/living/simple_mob/proc/add_eyes()
	if(!eye_layer)
		eye_layer = image(icon, "[icon_state]-eyes")
		eye_layer.plane = PLANE_LIGHTING_ABOVE

	add_overlay(eye_layer)

/mob/living/simple_mob/proc/remove_eyes()
	cut_overlay(eye_layer)