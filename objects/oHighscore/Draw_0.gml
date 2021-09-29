/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
draw_set_color(c_white);
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_alpha(1);
draw_text(room_width / 2, room_height / 2 - 50, "Score:");
draw_text(room_width / 2, room_height / 2 - 20, string(scr));
draw_set_font(Font3);
draw_text(room_width / 2, room_height / 2 + 50, "Press START to restart");