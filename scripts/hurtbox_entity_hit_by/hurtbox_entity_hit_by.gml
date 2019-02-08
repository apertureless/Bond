///@arg hitbox

var _hitbox = argument0;
var _is_target = is_target(object_index, _hitbox._targets);

return !_invincible && _is_target;