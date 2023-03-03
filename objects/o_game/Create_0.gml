/// @description Insert description here
// You can write your code in this editor
lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
tilemap_x(map_id, irandom(room_width));