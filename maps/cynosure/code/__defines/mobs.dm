#define MODIFIER_STACK_FORBID	1	// Disallows stacking entirely.
#define MODIFIER_STACK_EXTEND	2	// Disallows a second instance, but will extend the first instance if possible.
#define MODIFIER_STACK_ALLOWED	3	// Multiple instances are allowed.


// More refined version of SA_* ""intelligence"" separators.
// Now includes bitflags, so to target two classes you just do 'MOB_CLASS_ANIMAL|MOB_CLASS_HUMANOID'
#define MOB_CLASS_NONE 			0	// Default value, and used to invert for _ALL.
#define MOB_CLASS_PLANT			1	// Unused at the moment.
#define MOB_CLASS_ANIMAL		2	// Animals and beasts like spiders, saviks, and bears.
#define MOB_CLASS_HUMANOID		4	// Non-robotic humanoids, including /simple_mob and /carbon/humans and their alien variants.
#define MOB_CLASS_SYNTHETIC		8	// Silicons, mechanical simple mobs, FBPs, and anything else that would pass is_synthetic()
#define MOB_CLASS_SLIME			16	// Everyone's favorite xenobiology specimen (and maybe prometheans?).
#define MOB_CLASS_ABERRATION	32	// Weird shit.
#define MOB_CLASS_DEMONIC		64	// Cult stuff.
#define MOB_CLASS_BOSS			128	// Future megafauna hopefully someday.
#define MOB_CLASS_ILLUSION		256	// Fake mobs, e.g. Technomancer illusions.
#define MOB_CLASS_PHOTONIC		512	// Holographic mobs like holocarp, similar to _ILLUSION, but that make no attempt to hide their true nature.

#define MOB_CLASS_ALL (~MOB_CLASS_NONE)

// Shorthands for simple mob healing with items; adjust lists as additional healing behavior is added.
#define MOB_CLASSES_HEALABLE (MOB_CLASS_HUMANOID|MOB_CLASS_ANIMAL|MOB_CLASS_SYNTHETIC)
#define MOB_CLASSES_UNHEALABLE (MOB_CLASS_SLIME|MOB_CLASS_ABERRATION|MOB_CLASS_DEMONIC|MOB_CLASS_ILLUSION|MOB_CLASS_PHOTONIC)