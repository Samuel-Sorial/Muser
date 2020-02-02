/// @description on instantiation

enum state{
	idle,
	shuffle
}

curr_state = state.idle;

depth = -10;
mask_index = sTileMask;

notename_ = "";

x_new = 0;

i = 0;

global.correct_pos[i] = x;