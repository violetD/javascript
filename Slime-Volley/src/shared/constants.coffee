# declare global constants here
Constants =
	SCALE: .1
	SCALE_INV: 1/.1
	BOTTOM: 60
	BASE_WIDTH: 480
	BASE_HEIGHT: 268
	JUMP_ACCEL: -38
	MOVE_ACCEL: 25
	POLE_WIDTH: 8
	POLE_HEIGHT: 64
	GRAVITY: .15
	ARROW_WIDTH: 121
	SET_DELAY: 800 #ms
	WIN_SCORE: 6
	POINT_WIDTH: 20
	SCOREBOARD_PADDING: 20
	BACK_BTN_WIDTH: 108
	BACK_BTN_HEIGHT: 26
	BALL_START_HEIGHT: 260
	SLIME_RADIUS: 32
	SLIME_MASS: 3.5
	SLIME_JUMP: 10
	BALL_RADIUS: 10
	BALL_MASS: 1.4
	HELPER_SIZE: 10
	MOVEMENT_SPEED: 5
	JUMP_SPEED: 12
	SLIME_START_HEIGHT: 91
	AI_DIFFICULTY: 0.45
	MSG_FONT: 'Courier, monospace, sans-serif'
	FPS_RATIO: 24 / 16 # in relation to what the initial speeds were set for (16ms)
	TICK_DURATION: 30 #ms
	FRAME_DELAY: 5
	STATE_SAVE: 200
	SAVE_LIFETIME: 5000 # save for 2s
	TARGET_LATENCY: 50 # latency accrued by FRAME_DELAY
	ASSETS: # images and sounds
		p1:      'assets/images/s_0.png',
		p2:      'assets/images/s_1.png'
		bg:      'assets/images/bg.png',
		ball:    'assets/images/ball.png',
		eye:     'assets/images/eye.png',
		menu_bg: 'assets/images/menu_bg.png',
		logo:    'assets/images/logo.png',
		#btn_instructions: 'assets/images/btn_instructions.png',
		btn_one:          'assets/images/btn_one.png',
		btn_options:      'assets/images/btn_options.png',
		btn_wifi:         'assets/images/btn_wifi.png',
		btn_a:   'assets/images/btn_a.png',
		btn_b:   'assets/images/btn_b.png',
		pole:    'assets/images/pole.png',
		blank_point: 'assets/images/blank_point.png',
		return:      'assets/images/return.png',
		score_a:     'assets/images/score_a.png',
		score_b:     'assets/images/score_b.png',
		#instructions: 'assets/images/instructions.png',
		back_arrow:   'assets/images/back_arrow.png',
		options:      'assets/images/options.png',
		btn_leaderboards: 'assets/images/btn_leaderboards.png',
		btn_ai:       'assets/images/btn_ai.png',
		btn_multi:    'assets/images/btn_multi.png'
module.exports = Constants if module