enum STOMP_STATE {
	IDLE_STATE,
	SMASH_STATE,
	WAIT_STATE,
	RETURN_TO_IDLE_STATE,	
}
image_speed = 0

initial_state = STOMP_STATE.IDLE_STATE
state = initial_state
reverse = false
can_smash = true

sprite[STOMP_STATE.IDLE_STATE] = s_stomper_idle
sprite[STOMP_STATE.SMASH_STATE] = s_stomper_smash
sprite[STOMP_STATE.WAIT_STATE] = s_stomper_wait
sprite[STOMP_STATE.RETURN_TO_IDLE_STATE] = s_stomper_return