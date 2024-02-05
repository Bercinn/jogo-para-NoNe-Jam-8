/// @description Desenhando Textos
// Você pode escrever seu código neste editor


draw_set_font(fnt_credits_2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_transformed(x, y, "Programmers", 1.8, 1.8, image_angle);

/////
draw_set_font(fnt_credits_2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_transformed(x, y + 69, "Gabriel Paniago", 1, 1, image_angle);

////
draw_set_font(fnt_credits_2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_transformed(x, y + 110, "Bernardo", 1, 1, image_angle);

////////
draw_set_font(fnt_credits_2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_transformed(x, y + 190, "Artes", 1.8, 1.8, image_angle);

///////
draw_set_font(fnt_credits_2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_text_transformed(x, y + 259, "Bernardo", 1, 1, image_angle);



//////
draw_set_font(fnt_credits_2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite_ext(spr_logoima, image_index, x - 130, y + 410, .65, .65, 0, c_white, 1);

