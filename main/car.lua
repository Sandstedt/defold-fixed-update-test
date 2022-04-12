-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

function die(is_dead)
	if is_dead then return end
	is_dead = true
	-- pprint("death")
	-- local turn_quaternion = vmath.quat_axis_angle(vmath.vector3(0, 0, 1), 90)
	local rot = go.get(".", "rotation") * vmath.quat_rotation_z(90) -- multiply with the current rotation
	go.animate(".", "rotation", go.PLAYBACK_LOOP_FORWARD, rot, go.EASING_OUTCIRC, 3) 
	go.animate(".", "scale", go.PLAYBACK_ONCE_FORWARD, 0, go.EASING_LINEAR, 3)

	physics.set_group("#collisionobject", "is_dead")
	
	return is_dead
end