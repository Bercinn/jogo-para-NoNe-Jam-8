#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)
#macro TAG_SOLID "solid"

#macro GRAV .3

asset_add_tags(obj_solid, TAG_SOLID, asset_object);

global.tagged_as_solid = tag_get_asset_ids(TAG_SOLID, asset_object);
