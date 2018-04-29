/// @desc CreateDamage
/// @arg0 x_offset
/// @arg1 y_offset
/// @arg2 x_scale
/// @arg3 y_scale
/// @arg4 knockback
/// @arg5 damage

var _damage = instance_create_layer(
x + argument0 * sign(other.image_xscale),
y + argument1 * sign(other.image_yscale),
"Damage",
oDamage
);

with(_damage) {
	creator = other.id;
	knockback_dir = sign(other.image_xscale);
	image_xscale = argument2;
	image_yscale = argument3;
	knockback = argument4;
	damage = argument5;
}