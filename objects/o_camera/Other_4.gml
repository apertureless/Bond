if (!instance_exists(_target)) exit;
x = _target.x;
y = _target.y-8;


camera_set_view_pos(view_camera[0], x - _width / 2, y - _height / 2);
