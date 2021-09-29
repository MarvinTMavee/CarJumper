/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
kLeft = -keyboard_check(ord("A")); kRight = keyboard_check(ord("D")); kJump = keyboard_check_pressed(ord("W"));

// Use input 
move = kLeft + kRight; hsp = move * moveSpeed; if (vsp < 10) { vsp += grav; };

if (place_meeting(x, y + 1, oBrick)) { vsp = kJump * -jumpSpeed }

// H Collisions 
if (place_meeting(x + hsp, y, oBrick)) { while (!place_meeting(x + sign(hsp), y, oBrick)) { x += sign(hsp); } hsp = 0; } x += hsp;

// v Collisions 
if (place_meeting(x, y + vsp, oBrick)) { while (!place_meeting(x, y + sign(vsp), oBrick)) { y += sign(vsp); } vsp = 0; } y += vsp;

if (place_meeting(x, y, oCar)) {
room_goto(Dead);
}
if (keyboard_check(ord("A"))) {
image_index = 1;
}
if (keyboard_check(ord("D"))) {
image_index = 0;
}