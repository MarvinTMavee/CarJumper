/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
shader_set(ColorRamp);
shader_set_uniform_f(Border, 0.5);
shader_set_uniform_f(SmoothRadius, 0.01);
shader_set_uniform_f_array(Color1, [0.5, 0.8, 0.5, 1.0]);
shader_set_uniform_f_array(Color2, [0.3, 0.5, 0.3, 1.0]);
draw_self();
shader_reset();