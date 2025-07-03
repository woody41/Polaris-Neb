/proc/stack_trace(msg)
	CRASH(msg)

// \ref behaviour got changed in 512 so this is necessary to replicate old behaviour.
// If it ever becomes necessary to get a more performant REF(), this lies here in wait
// #define REF(thing) (thing && istype(thing, /datum) && (thing:datum_flags & DF_USE_TAG) && thing:tag ? "[thing:tag]" : "\ref[thing]")
/proc/REF(input)
	if(istype(input, /datum))
		var/datum/thing = input
		if(thing.datum_flags & DF_USE_TAG)
			if(!thing.tag)
				thing.datum_flags &= ~DF_USE_TAG
				stack_trace("A ref was requested of an object with DF_USE_TAG set but no tag: [thing]")
			else
				return "\[[url_encode(thing.tag)]\]"
	return "\ref[input]"