/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if (keyboard_check(vk_space) and apressed = false) {
	while(draw_opa > 0) {
	draw_opa -= 0.01;
	}
	apressed = true;
	alarm[0] = 360;
}