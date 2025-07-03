// Simplemob movement intents.
/decl/move_intent/animal_walk
	name = "Walk"
	hud_icon_state = "walking"
	flags = MOVEMENT_INTENT_WALKING

/decl/move_intent/animal_walk/Initialize()
	. = ..()
	move_delay = config.animal_delay + 1

/decl/move_intent/animal_run
	name = "Run"
	hud_icon_state = "running"
	flags = MOVEMENT_INTENT_RUNNING

/decl/move_intent/animal_run/Initialize()
	. = ..()
	move_delay = config.animal_delay