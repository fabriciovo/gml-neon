/// @description Free State
if (dash && can_dash) {
    can_dash = false;
    dash_direction = point_direction(0, 0, hspd_dir, down - up);
    dash_spd = dash_distance / dash_time;
    dash_energy = dash_distance;
    state = PLAYER_STATES.DASH_STATE;
}

if (right || left) {
    hspd += (right - left) * acc;
    hspd_dir = right - left;
    sprite_index = s_player_walk;
    image_speed = 0.3;
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
} else {
    apply_friction(acc);
    sprite_index = s_player_idle;
    image_speed = 0.1;
}

if (action) {
    instance_create_layer(x, y, "Instances", o_bullet);
}

if (!place_meeting(x, y + 1, o_solid)) {
    vspd += grav;
    
    // Player is in the air
    sprite_index = s_player_jump;
    image_speed = 0;
    image_index = (vspd > 0);
    
    // Control the jump height
    if (up_release && vspd < -3) {
        vspd = -3;
    }
} else {
    if (up) {
        vspd = -6;
        //audio_play_sound(snd_jump, 5, false);
    }
}



if (hspd != 0) {
    image_xscale = sign(hspd);
}

// Play the landing sound
if (place_meeting(x, y + 1, o_solid) && vspd > 0) {
    //audio_emitter_pitch(audio_em, random_range(0.8, 1.2));
    //audio_emitter_gain(audio_em, 0.2);
    //audio_play_sound_on(audio_em, snd_step, false, 6);
}



