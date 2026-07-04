     ram_start       = $8000

     credits         = $8023
     is_playing      = $8030 ; mode 0=attract, 1=1P, 2=2P
     screen_state    = $8039 ; 10=ready, 40=go to gamble
     cur_screen      = $803B ; 1=splash;6=game etc
     score_lo        = $8044
     score_mid       = $8045
     score_hi        = $8046
     hiscore_lo      = $804A
     hiscore_mid     = $804B
     hiscore_hi      = $804C

     carrying_1      = $80A0 ; carrying food
     carrying_2      = $80A1 ; carrying food
     carrying_3      = $80A2 ; carrying food... dropped?
     carry_x         = $80A5
     carry_tile      = $80A6 ; what item player is carrying
     ;; carry_tile_y   = $80A7 ; I bet it's x/y
     carry_y         = $80A8

     lives           = $8100
     cur_map         = $8101
     lives_copy      = $8200 ; seems to mimic 8100?

     player_bytes    = $8400 ;
     controls        = $8401 ; 1=L, 2=R, 4=D, 8=U, 10=fire
     player_x        = $8406 ; joystick L/R axis; -> sprite +0 (HW Y: screen rotated 90)
     player_y        = $8407 ; joystick U/D axis; -> sprite +3 (HW X: screen rotated 90)
     player_sp_x     = $8408 ; fe = -2 left, 02 = 2 right
     player_sp_y     = $8409 ; fe = -2 up, 02 = 2 down

     cat1_enable     = $8500 ; not sure why enable+active
     cat1_active     = $8501 ;
     cat2_enable     = $8504
     cat2_active     = $8505
     cat3_enable     = $8506
     cat3_active     = $8507

     cat1_ai_init    = $8508 ; one-shot AI-path-loaded flag
     cat2_ai_init    = $850A
     cat3_ai_init    = $850B

 ;;; =============================
 ;;; Enemy data structure 32 bytes
 ;;; =============================
 ;;; +$00 step/move counter
 ;;; +$03 sprite-slot link (low byte of `$80xx` mirror addr: `$05`/`$0D`/`$11`/`$15`/`$19`)
 ;;; +$04 base tile (+flip) -> sprite +1
 ;;; +$07 AI state: 1=appear, 3/4=walk-chase, 5/6=caught/dying, 7?
 ;;; +$08 X -> sprite +0 (HW-Y; ROT90)
 ;;; +$09 Y -> sprite +3 (HW-X; ROT90)
 ;;; +$0D..+$11 -> velocity/direction deltas (`$FF`/`$01`: ±1)
 ;;; +$18/$19 AI waypoint-table pointer (level-indexed; via `$31CF`)
 ;;; +$1A appear/spawn timer
 ;;; +$1B busy/not-collidable lock (1 while appearing or dying)
 ;;; +$1D/$1E secondary pointer (level-indexed)

     cat1_bytes      = $8510 ; 32 bytes
     cat1_slot       = $8513 ; +3  (=$05 -> sprite slot1 +1)
     cat1_tile       = $8514 ; +4  base tile -> sprite +1
     cat1_state      = $8517 ; +7  AI state
     cat1_x          = $8518
     cat1_y          = $8519
     cat1_dir        = $851A ; +0A chase direction bitmask: $01=X- $02=X+ $04=Y+ $08=Y- (game axes); $00=aligned. Written by enemy_chase, read by mover dispatch $2DF8
     cat1_scr0b      = $851B ; +0B unidentified (previously mislabeled "dir")
     cat1_axis       = $8522 ; +12 chase axis toggle: 0=>steer Y next (vs $8003), 1=>steer X next (vs $8000). Init 0 so Y is checked first (see enemy_chase)
     cat1_ai_ptr     = $8528 ; +18 AI-waypoint ptr (from $2B5A via $31CF)
     cat1_busy       = $852B ; +1B busy / no-collide lock
     cat1_ptr2       = $852D ; +1D secondary ptr (from $2B28 via $31CF)

     cat2_bytes      = $8550 ; 29 bytes: to 856D
     cat2_slot       = $8553
     cat2_tile       = $8554
     cat2_state      = $8557
     cat2_x          = $8558
     cat2_y          = $8559
     cat2_dir        = $855A ; +0A chase direction bitmask (see cat1_dir)
     cat2_axis       = $8562 ; +12 chase axis toggle (see cat1_axis)
     cat2_ai_ptr     = $8568 ; from $2BB0
     cat2_busy       = $856B
     cat2_ptr2       = $856D ; from $2B28

     cat3_bytes      = $8570 ; 29 bytes
     cat3_x          = $8578
     cat3_y          = $8579
     cat3_dir        = $857A ; +0A chase direction bitmask (see cat1_dir)
     cat3_axis       = $8582 ; +12 chase axis toggle (see cat1_axis)
     cat3_slot       = $8573
     cat3_tile       = $8574
     cat3_state      = $8577
     cat3_ai_ptr     = $8588 ; from $2C06
     cat3_busy       = $858B
     cat3_ptr2       = $858D ; from $2B28

     snake1_enable   = $8600
     snake1_active   = $8601
     snake2_enable   = $8602
     snake2_active   = $8603
     snake1_ai_init  = $8608
     snake2_ai_init  = $8609

     snake1_bytes    = $8610 ; tee hee, snake bytes
     snake1_slot     = $8613
     snake1_tile     = $8614 ;
     snake1_state    = $8617 ;
     snake1_x        = $8618
     snake1_y        = $8619
     snake1_dir      = $861A ; +0A chase direction bitmask (see cat1_dir)
     snake1_axis     = $8622 ; +12 chase axis toggle (see cat1_axis)
     snake1_dly_ptr  = $8628 ; +18 spawn-delay ptr (from spawn_delay_sa $3315 via $32F7)
     snake1_busy     = $862B ; +1B

     snake2_bytes    = $8630
     snake2_slot     = $8633
     snake2_tile     = $8634
     snake2_state    = $8637
     snake2_x        = $8638
     snake2_y        = $8639
     snake2_dir      = $863A ; +0A chase direction bitmask (see cat1_dir)
     snake2_axis     = $8642 ; +12 chase axis toggle (see cat1_axis)
     snake2_dly_ptr  = $8648 ; from spawn_delay_sb $332B
     snake2_busy     = $864B

     bombs           = $867f
     bomb_placed     = $8680
     bomb_x          = $8684
     bomb_y          = $8685
     bomb_um1        = $8686 ; anim frames or something
     bomb_um2        = $8687
     bomb_set_timer  = $868A
     bomb_exploding  = $868B

     stack_location  = $87FE

     screen_ram      = $9000 ; - 0x93ff  videoram
     start_of_tiles  = $9040 ; top right tile
     END_OF_TILES    = $93BF ; bottom left tile
     end_of_scr_ram  = $93ff

     color_ram       = $9400
     x_offset        = $9800
     sprite_ram      = $9840

     int_enable      = $b000 ; interrupt enable w, DIP read
     dip_switch      = $b000 ; interrupt enable w, DIP read
     coin_lockout    = $b002 ; dunno
     sound_enable    = $b003
     flip_scr_x      = $b006
     flip_scr_y      = $b007
     watchdog        = $B800

     hw_in_0         = $A000 ; 1 = L, 2 = R, 4 = down, 8 = up
     hw_in_1         = $A800 ; 0x4 = P1, 0x8 = P2

     ;;; ============ constants ========
     SCR_COLS        = 28
     SCR_ROWS        = 28

     ;; cur_screen enum
     SCR_NONE        = $00
     SCR_SPLASH      = $01
     SCR_PUSH_P1     = $02
     SCR_PUSH_P1P2   = $03
     SCR_GAME_OVER   = $04
     SCR_READY       = $05
     SCR_GAME        = $06
     SCR_GAMBLE      = $07
     SCR_LUCKY       = $08

     TILES_H = $1B

     TILE_BLANK      = $24
     TILE_CLEAR      = $25
     TILE_WATER      = $37
     TILE_WATER_2    = $38
     TILE_BOULDER    = $39 ; boulder rest tile (paired with $3A); touching it spawns a falling boulder
     TILE_PLATFORM   = $F4
     TILE_EXIT_HOLE  = $F5 ; over exit/hole -> sets player over-hole flag $842D ($28EB)
     TILE_GAP        = $FE ; open water/gap: enemy death (cat/snake_water_die); player enter-hole ($294C); blocks walk


 ;;; ============ state / globals ============

     dsw_raw         = $8020 ; raw DIP copy
     in_a800         = $8021 ; raw coin/start input (per frame)
     cur_player      = $8031 ; 0=P1, 1=P2
     req_level_done  = $8032 ; level-complete pending (ingame -> dispatcher)
     req_death       = $8033 ; player-death pending (ingame -> dispatcher)
     p1_done         = $8034 ; P1 finished / out of lives
     p2_done         = $8035 ; P2 finished / out of lives
     flip_state      = $8036 ; current screen-flip mirror
     first_turn      = $8038 ; first-turn-of-game flag
     is_2player      = $803C ; 1 = 2P game
     disp_timer      = $803D ; down-counter for timed screens
     endlevel_active = $803E ; level-end / freeze gate (also gates enemy spawn/move)
     endlevel_ctr    = $803F ; level-end sub-counter
     score_add_trig  = $8040 ; score-add trigger
     score_add       = $8041 ; amount to add (BCD3, $8041-$8043)
     food_state      = $8120 ; 9x1 per-piece: 0 uncollected, 2 carried, 1 returned
     food_returned   = $8140 ; 9x2 fill-from-front log; all set => level clear
     gamble_state    = $8480 ; slot-bonus state (bit7=win display, bit6=countdown, bit5=reels spinning)
     gamble_credit   = $8474 ; jackpot flag: 3x symbol-0 => grant free credit (gamble_award_credit)
     gamble_reel1    = $8483 ; reel 1 current symbol (0-3)
     gamble_reel2    = $8484 ; reel 2 current symbol
     gamble_reel3    = $8485 ; reel 3 current symbol
     gamble_pos1     = $8486 ; reel 1 strip position (into gamble_reel1_strip)
     gamble_pos2     = $8487 ; reel 2 strip position
     gamble_pos3     = $8488 ; reel 3 strip position
     gamble_outcome  = $8489 ; win index 0-7 (0=jackpot); indexes gamble_prize_pos / gamble_score_tbl
     boulder         = $85C0 ; boulder active flag (slot 7: a boulder is falling)
     boulder_req     = $85C1 ; trigger request (set when player touches TILE_BOULDER $39/$3A)
     boulder_x       = $85C5 ; frozen horizontal pos -> sprite +0 (constant during fall)
     boulder_y       = $85C6 ; falling vertical pos -> sprite +3 (+=2/frame; ROT90 => physical DOWN)
     bomb_lethal     = $8683 ; explosion active/lethal flag (checked by bomb_collide)

 ;;; ============ engine routines ============

     snake_water_die = $34B5 ; snake on $FE tile -> state 4, splash tile $2C, sound $95

     food_pickup     = $29C8 ; player over food tile ($DC-$EF) -> mark carried (0->2)
     food_maze_redraw = $3E29 ; repaint maze food from food_state (drops carried 2->0)
     food_set_state  = $3EB2 ; find food at vram cell (hl), write reg c -> food_state
     food_return_add = $3EF2 ; append carried-home piece to food_returned, +500 pts
     food_log_redraw = $3F36 ; repaint all food_returned entries to VRAM
     food_maze_erase = $3F62 ; blank carried (state 2) food cells (tile $25/$87)
     food_return_home = $4167 ; home-entry: log carried piece + food_state 2->1

     bridge_update   = $3BFF ; bridge open/close tile animation, block $80C0-$80C7
     scripted_move   = $3D0A ; scripted player move (home-entry), block $80E0-$80E7

 ;;; ============ start of suprmous.x1 =============

start:
    nop
    nop
    nop
    ld   a,$00
    ld   (int_enable),a
    jp   init_game_RAM_test

    nop
    nop
    nop

 done_RAM_test:
    ld   a,(watchdog)
 _clear_ram:
    ld   hl,ram_start
    ld   a,$88
    ld   c,$00
 __i01:
    ld   (hl),c
    inc  hl
    cp   h
    jp   nz,__i01
    ld   sp,stack_location
    ld   a,(watchdog)
   call clear_screen
    xor  a
    ld   b,$08
    ld   hl,dip_switch
    ld   (hl),a
    inc  hl
    djnz $002D
    ld   a,(dip_switch)
    ld   (dsw_raw),a
    ld   b,a
    and  $07
    ld   ($8025),a
    ld   a,b
    and  $18
    ld   ($8026),a
    ld   a,b
    and  $20
    ld   ($8028),a
    ld   a,b
    and  $40
    ld   ($8027),a
    jp   $0580

     dc   20,0

 ;; Non-Maskable Interrupt handler. Fires every frame
 NMI_LOOP:
    push af
    ld   a,$00
    ld   (int_enable),a
    push bc
    push de
    push hl
    ex   af,af' ;'
    exx
    push af
    push bc
    push de
    push hl
    push ix
    push iy
    nop
    nop
    ld   a,(watchdog)
    nop
    nop
    nop
    nop
    call main_loop
    nop
    nop
    nop
    nop
    nop
    nop
    pop  iy
    pop  ix
    pop  hl
    pop  de
    pop  bc
    pop  af
    exx
    ex   af,af' ; '
    pop  hl
    pop  de
    pop  bc
    ld   a,$01
    ld   (int_enable),a
    pop  af
    ret

     dc 97,0

 ;; called from NMI
 main_loop:
     nop
     nop
     nop
    call read_inputs
    call $0629
    ld   a,(is_playing)
    and  a
    jp   nz,_no_start_buttons
    ld   a,(hw_in_1)
    and  $08    ; 2P plutton
    jp   nz,_check_2P
 _has_one_credit:
    ld   a,(hw_in_1) ; reload in_1. for some reason
    and  $04    ; 1P button
    jp   nz,start_game_p1
    jp   _no_start_buttons  ; no buttons
 _check_2P:
    ld   a,(credits)
    cp   $02    ; has two?
    jp   c,_has_one_credit
    ld   a,$02
    ld   (is_playing),a
    ld   a,(credits)
    sub  $02
    daa
    ld   (credits),a
    ld   a,$01
    ld   (is_2player),a
    ld   a,($8026)
    and  a
    jp   nz,$0150
    ld   a,$03
    ld   (lives_copy),a
    ld   ($8300),a
    jp   start_game
    ld   a,$05
    ld   (lives_copy),a
    ld   ($8300),a
    jp   start_game

 start_game_p1:
    ld   a,(credits)
    and  a
    jp   z,_no_start_buttons
    ld   a,$01
    ld   (is_playing),a
    ld   a,(credits)
    sub  $01
    daa
    ld   (credits),a
    ld   a,$00
    ld   (is_2player),a
    ld   a,($8026)
    and  a
    jp   nz,$0189
    ld   a,$03
    ld   (lives_copy),a
    ld   a,$00
    ld   ($8300),a
    jp   start_game
    ld   a,$05
    ld   (lives_copy),a
    ld   a,$00
    ld   ($8300),a

 start_game:
    ld   a,$00
    ld   hl,lives
    ld   b,$03
 __i02:
    ld   (hl),a
    inc  l
    jp   nz,__i02
    inc  h
    inc  l
    djnz __i02
    ld   a,$00
    ld   (cur_player),a
    ld   (req_level_done),a
    ld   (req_death),a
    ld   (p1_done),a
    ld   (p2_done),a
    ld   (flip_state),a
    ld   ($803A),a
    ld   a,$F0
    ld   (disp_timer),a
    ld   hl,score_add_trig
    ld   a,$00
    ld   b,$0A
    ld   (hl),a
    inc  hl
    djnz $01C6
    nop
    ld   b,$01
    call $07BC
    ld   a,$01
    ld   (sound_enable),a
    ld   a,$E0
    ld   (watchdog),a
    ld   a,$01
    ld   (first_turn),a
    ld   a,(screen_state)
    set  4,a
    ld   (screen_state),a
    nop
    nop
    nop
    nop


 _no_start_buttons:
    ld   a,(screen_state)
    and  a
    ret  nz
    ld   a,(is_playing)
    and  a
    jp   nz,game_in_progress
    ld   a,(credits)
    and  a
    jp   nz,show_credits_screen
    ld   a,(cur_screen)
    and  a
    jp   nz,$0242
    jp   $0288
 show_credits_screen:
    cp   $02
    jp   nc,$021B
 _press_p1:
    ld   a,(cur_screen)
    cp   SCR_PUSH_P1
    ret  z
    ld   a,$01
    ld   (screen_state),a
    jp   _press_either
 _press_p2:
    ld   a,(cur_screen)
    cp   SCR_PUSH_P1P2
    ret  z
    ld   a,$02
    ld   (screen_state),a
    jp   _press_either
 _press_either:
    ld   hl,lives
    ld   a,$00
    ld   b,$03
    ld   (hl),a
    inc  l
    jp   nz,$0230
    inc  h
    djnz $0230
    ld   hl,$8068
    ld   b,$06
    ld   (hl),a
    inc  hl
    djnz $023D
    ret

    ld   a,(req_death)
    and  a
    jp   z,$025E
    ld   a,(cur_screen)
    cp   SCR_SPLASH
    jp   z,$0275
    cp   SCR_GAME
    jp   z,$0299
    cp   SCR_GAMBLE
    jp   z,$0288
    jp   $0288
    ld   a,(req_level_done)
    and  a
    jp   z,$02AA
    ld   a,(cur_screen)
    cp   SCR_GAME
    jp   z,$0299
    cp   SCR_GAMBLE
    jp   z,$0288
    jp   $0288
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,(screen_state)
    set  5,a
    ld   (screen_state),a
    jp   $0229
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,(screen_state)
    set  7,a
    ld   (screen_state),a
    ret
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,(screen_state)
    set  6,a
    ld   (screen_state),a
    ret
    ld   a,(cur_screen)
    cp   SCR_SPLASH
    jp   z,$4694
    cp   SCR_GAME
    jp   z,$02BF
    cp   SCR_GAMBLE
    jp   z,$02C3
    jp   $0288
    call $2391
    ret
    call $2468
    ret
 game_in_progress:
    call $0638
    ld   a,(req_death)
    and  a
    jp   nz,$0398
    ld   a,(req_level_done)
    and  a
    jp   nz,$04E0
    ld   a,(cur_screen)
    cp   SCR_GAME_OVER
    jp   z,_scr_game_over_2
    cp   SCR_READY
    jp   z,$036D
    cp   SCR_GAME
    jp   z,$2391
    cp   SCR_GAMBLE
    jp   z,$2468
    cp   SCR_LUCKY
    jp   z,$4556
    ret

 _scr_game_over_2:
    ld   a,(disp_timer)
    dec  a
    ld   (disp_timer),a
    cp   $7E
    jp   nz,$0308
    ex   af,af' ; '
    ld   a,$A0
    ld   (watchdog),a
    ex   af,af' ; '
    cp   $77
    jp   nz,$0314
    ex   af,af' ; '
    ld   a,$E0
    ld   (watchdog),a
    ex   af,af' ; '
    and  a
    jp   z,$0319
    ret
    ld   a,(is_playing)
    cp   $02
    jp   z,$0332
    ld   a,$00
    ld   (is_playing),a
    ld   (cur_screen),a ; SCR_NONE
    ld   a,(screen_state)
    set  2,a
    ld   (screen_state),a
    ret
    ld   a,(cur_player)
    and  a
    jp   nz,$0353
    ld   a,$01
    ld   (p1_done),a
    ld   a,(p2_done)
    and  a
    jp   nz,$0321
    ld   a,$01
    ld   (cur_player),a
    ld   a,(screen_state)
    set  4,a
    ld   (screen_state),a
    ret
    ld   a,$01
    ld   (p2_done),a
    ld   a,(p1_done)
    and  a
    jp   nz,$0321
    ld   a,$00
    ld   (cur_player),a
    ld   a,(screen_state)
    set  4,a
    ld   (screen_state),a
    ret
    ld   a,(disp_timer)
    dec  a
    ld   (disp_timer),a
    cp   $3E
    jp   z,$0383
    cp   $37
    jp   z,$0389
    and  a
    jp   z,$038F
    ret
    ld   a,$A0
    ld   (watchdog),a
    ret
    ld   a,$E0
    ld   (watchdog),a
    ret
    ld   a,(screen_state)
    set  5,a
    ld   (screen_state),a
    ret

    ld   a,(cur_screen)
    cp   SCR_GAME
    jp   z,_scr_game_1
    cp   SCR_GAMBLE
    jp   z,_scr_gamble_1
    cp   SCR_LUCKY
    jp   z,_scr_gamble_1
    ret
 _scr_gamble_1:
    ld   a,(cur_player)
    and  a
    jp   z,$04C1
    jp   $048B
 _scr_game_1:
    ld   a,(is_2player)
    and  a
    jp   nz,$041D
    ld   hl,lives
    ld   a,$00
    cp   (hl)
    jp   z,$03E9
    dec  (hl)
    ld   hl,lives
    ld   de,lives_copy
    ld   bc,$00FF
    ldir
    ld   a,(lives)
    and  a
    jp   z,$03E9
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,(screen_state)
    set  4,a
    ld   (screen_state),a
    ret

 ;;
    ld   (sound_enable),a
    ld   (flip_scr_x),a
    ld   (flip_scr_y),a
    ld   a,$01
    ld   (p1_done),a
    ld   (p2_done),a
    ld   hl,lives
    ld   b,$84
    ld   a,$00
    ld   (hl),a
    inc  l
    jp   nz,$0401
    inc  h
    ld   a,b
    cp   h
    jp   nz,$03FF
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,(screen_state)
    set  3,a
    ld   (screen_state),a
    ret
    ld   hl,lives
    ld   a,$00
    cp   (hl)
    jp   z,$0427
    dec  (hl)
    ld   a,(cur_player)
    and  a
    jp   z,$043C
    ld   hl,lives
    ld   de,$8300
    ld   bc,$00FF
    ldir
    jp   $0447
    ld   hl,lives
    ld   de,lives_copy
    ld   bc,$00FF
    ldir
    ld   a,(lives)
    and  a
    jp   nz,$0473
    ld   a,(cur_player)
    and  a
    jp   z,$045D
    ld   a,$01
    ld   (p2_done),a
    jp   $0462
    ld   a,$01
    ld   (p1_done),a
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,(screen_state)
    set  3,a
    ld   (screen_state),a
    ret
    ld   a,(cur_player)
    and  a
    jp   z,$0484
    ld   a,(lives_copy)
    and  a
    jp   nz,$04C1
    jp   $048B
    ld   a,($8300)
    and  a
    jp   z,$04C1
    ld   a,($8027)
    and  a
    jp   nz,$04A0
    ld   a,$00
    ld   (flip_state),a
    ld   (flip_scr_x),a
    ld   (flip_scr_y),a
    jp   $04AB
    ld   a,$01
    ld   (flip_state),a
    ld   (flip_scr_x),a
    ld   (flip_scr_y),a
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,$01
    ld   (cur_player),a
    ld   a,(screen_state)
    set  4,a
    ld   (screen_state),a
    ret
    ld   a,$00
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,$00
    ld   (flip_state),a
    ld   (flip_scr_x),a
    ld   (flip_scr_y),a
    ld   (cur_player),a
    ld   a,(screen_state)
    set  4,a
    ld   (screen_state),a
    ret
    ld   a,(cur_screen)
    cp   $06
    jp   z,$0504
    cp   $07
    jp   z,$04EE
    ret
    ld   a,$00
    ld   (req_level_done),a
    ld   (req_death),a
    ld   a,$08
    ld   (cur_screen),a
    ld   a,(screen_state)
    set  2,a
    ld   (screen_state),a
    ret
    ld   a,(cur_map)
    add  a,$01
    daa
    ld   (cur_map),a
    ld   hl,$8103
    ld   a,$00
    ld   b,$FC
    ld   (hl),a
    inc  l
    djnz $0514
    ld   a,(cur_player)
    and  a
    jp   z,$052D
    ld   hl,lives
    ld   de,$8300
    ld   bc,$00FF
    ldir
    jp   $0538
    ld   hl,lives
    ld   de,lives_copy
    ld   bc,$00FF
    ldir
    ld   a,$00
    ld   (req_level_done),a
    ld   (req_death),a
    ld   a,(screen_state)
    set  6,a
    ld   (screen_state),a
    ret

     dc   55,0

    call $05C0
    call $05E2
    ld   a,(watchdog)
    nop
    nop
    nop
    ld   a,$01
    ld   (int_enable),a
    ld   (coin_lockout),a
    nop
    nop
    nop
    jp   $1FD1

     dc   38,0

    ld   hl,$9380
    ld   de,hud_score_hdr
    ld   b,$1A
    call $061D
    ld   hl,$915F
    ld   de,$0614
    ld   b,$09
    call $061D
    ld   a,$00
    ld   ($92C1),a
    ld   ($9061),a
    ld   ($9181),a
    ret

    ld   hl,$9401
    ld   de,$0020
    ld   b,$20
    ld   a,$82
    ld   (hl),a
    add  hl,de
    djnz $05EC
    ld   hl,$941F
    ld   b,$10
    ld   (hl),a
    add  hl,de
    djnz $05F5
    ret

 hud_score_hdr: ; SCORE-1 / HI-SCORE / SCORE-2 / CREDIT-0 (drawn down columns)
    db   $1C, $0C, $18, $1B, $0E, $2E, $01, $24              ; |SCORE-1 |
    db   $24, $11, $12, $2E, $1C, $0C, $18, $1B              ; | HI-SCOR|
    db   $0E, $24, $24, $1C, $0C, $18, $1B, $0E              ; |E  SCORE|
    db   $2E, $02, $0C, $1B, $0E, $0D, $12, $1D              ; |-2CREDIT|
    db   $2E, $00, $24                                       ; |-0 |
    ld   a,(de)
    ld   (hl),a
    push de
    ld   de,$FFE0
    add  hl,de
    pop  de
    inc  de
    djnz $061D
    ret


    nop
    nop
    nop
 copy_sprites:   ; DMA sprite_mirror ($8000) -> sprite_ram each frame
    ld   hl,ram_start
    ld   de,$9840
    ld   bc,$0020
    ldir
    ret

    nop
    nop
    nop
 score_add_apply: ; apply pending score_add to score
    ld   a,(score_add_trig)
    and  a
    ret  z
    xor  a
    ld   (score_add_trig),a
    ld   a,(cur_player)
    and  a
    jp   nz,$0653
    ld   hl,score_lo
    ld   c,$00
    jp   $0658
    ld   hl,$8047
    ld   c,$01
    ld   de,score_add
    ld   b,$03
    xor  a
    ld   a,(de)
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  de
    inc  hl
    djnz $065E
    push bc
    push de
    ld   a,($8102)
    and  a
    jp   nz,$068A
    ld   a,($8028)
    and  a
    jp   nz,$0680
    dec  hl
    ld   a,(hl)
    cp   $01
    jp   c,$06BD
    jp   $06AA
    dec  hl
    ld   a,(hl)
    cp   $02
    jp   c,$06BD
    jp   $06AA
    cp   $01
    jp   nz,$06BD
    ld   a,($8028)
    and  a
    jp   nz,$06A0
    dec  hl
    ld   a,(hl)
    cp   $05
    jp   c,$06BD
    jp   $06AA
    dec  hl
    ld   a,(hl)
    cp   $10
    jp   c,$06BD
    jp   $06AA
    ld   a,(lives)
    add  a,$01
    ld   (lives),a
    ld   a,($8102)
    add  a,$01
    ld   ($8102),a
    call draw_lives
    pop  de
    pop  bc
    dec  de
    ld   a,$00
    ld   (de),a
    dec  de
    ld   (de),a
    dec  de
    ld   (de),a
    nop
    jp   $06EF
    ld   h,c
    sub  e
    ld   b,c
    sub  e
    ld   hl,start_game
    sub  e
    pop  hl
    sub  d
    pop  bc
    sub  d
    ld   bc,$E191
    sub  b
    pop  bc
    sub  b
    and  c
    sub  b
    add  a,c
    sub  b
    ld   h,c
    sub  b
    ld   hl,$0192
    sub  d
    pop  hl
    sub  c
    pop  bc
    sub  c
    and  c
    sub  c
    add  a,c
    sub  c
    ld   a,c
    and  a
    jp   nz,$06FF
    ld   ix,score_hi
    ld   hl,$06CB
    call $070A
    ret
    ld   ix,$8049
    ld   hl,$06D7
    call $070A
    ret
    ld   b,$03
    ex   af,af' ; '
    ld   a,$06
    ex   af,af' ; '
    ld   a,(ix+$00)
    ld   c,a
    rrca
    rrca
    rrca
    rrca
    call $0724
    ld   a,c
    call $0724
    dec  ix
    djnz $0710
    ret
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    inc  hl
    and  $0F
    and  a
    jp   z,$0734
    ld   (de),a
    ex   af,af' ; '
    ld   a,$01
    ex   af,af' ; '
    ret
    ex   af,af' ; '
    cp   $01
    jp   nz,$073D
    ex   af,af' ; '
    ld   (de),a
    ret
    dec  a
    ex   af,af' ; '
    ld   a,$24
    ld   (de),a
    ret

 read_inputs:    ; read joystick / coin inputs
    ld   iy,dsw_raw
    ld   a,(hw_in_1)
    ld   (iy+$01),a
    ld   c,a
    ld   b,$00
    and  $01
    jp   z,$075B
    ld   (iy+$09),a
    jp   $0796
    ld   a,(iy+$09)
    and  a
    jp   z,$0796
    ld   (iy+$09),$00
    ld   a,(iy+$05)
    rlca
    ld   e,a
    ld   d,$00
    ld   ix,$07D5
    add  ix,de
    ld   a,(ix+$00)
    inc  (iy+$04)
    cp   (iy+$04)
    jp   nz,$0796
    ld   (iy+$04),$00
    ld   a,(ix+$01)
    inc  b
    add  a,(iy+$03)
    daa
    cp   $09
    jp   z,$07E5
    jp   nc,$07E5
    ld   (iy+$03),a
    ld   a,c
    and  $02
    jp   z,$07A2
    ld   (iy+$0a),a
    jp   $07BC
    ld   a,(iy+$0a)
    and  a
    jp   z,$07BC
    xor  a
    ld   (iy+$0a),a
    ld   a,(iy+$03)
    cp   $09
    jp   nc,$07E5
    inc  b
    add  a,$01
    daa
    ld   (iy+$03),a
    ld   a,b
    and  a
    ret  z
    ld   a,(credits)
    ld   b,a
    and  $0F
    ld   ($907F),a
    ld   a,b
    rrca
    rrca
    rrca
    rrca
    and  $0F
    ld   a,$24
    ld   ($905F),a
    ret
    ld   (bc),a
    ld   bc,$0101
    ld   bc,$0102
    inc  bc
    ld   bc,$0104
    dec  b
    ld   bc,$0106
    rlca
    ld   (iy+$03),$09
    xor  a
    ld   (coin_lockout),a
    inc  b
    jp   $07BC

 init_game_RAM_test:      ; RAM test
    ld   a,(watchdog)
    ld   hl,screen_ram
    ld   b,$04
    ld   a,$24
    ld   (hl),a
    inc  l
    jp   nz,$07FB
    ld   a,(watchdog)
    inc  h
    djnz $07F9
    ld   hl,$9400
    ld   b,$04
    ld   a,$80
    ld   (hl),a
    inc  l
    jp   nz,$080D
    ld   a,(watchdog)
    inc  h
    djnz $080B
    ld   hl,x_offset
    ld   (hl),$00
    inc  l
    jp   nz,$081B
    ld   hl,dip_switch
    ld   b,$08
    ld   (hl),$00
    inc  l
    djnz $0826
    ld   a,(watchdog)
    ld   d,$00
    ld   c,$20
    ld   hl,ram_start
    ld   b,$08
    ld   a,c
    add  a,$2F
    ld   (hl),a
    inc  l
    jr   nz,$0838
    inc  a
    inc  h
    djnz $0838
    ld   hl,ram_start
    ld   b,$08
    ld   a,(watchdog)
    ld   a,c
    add  a,$2F
    cp   (hl)
    jp   nz,$08DD
    inc  l
    jr   nz,$084B
    inc  a
    inc  h
    djnz $084B
    ld   a,(watchdog)
    dec  c
    jr   nz,$0832
    inc  d
    ld   c,$20
    ld   hl,screen_ram
    ld   b,$04
    ld   a,c
    add  a,$2F
    ld   (hl),a
    inc  l
    jr   nz,$0867
    inc  a
    inc  h
    djnz $0867
    ld   a,(watchdog)
    ld   hl,screen_ram
    ld   b,$04
    ld   a,c
    add  a,$2F
    cp   (hl)
    jp   nz,$08DD
    inc  l
    jr   nz,$087A
    inc  a
    inc  h
    djnz $087A
    ld   a,(watchdog)
    dec  c
    jr   nz,$0861
    inc  d
    ld   c,$20
    ld   hl,$9400
    ld   b,$04
    ld   a,c
    add  a,$2F
    ld   (hl),a
    inc  l
    jr   nz,$0896
    inc  a
    inc  h
    djnz $0896
    ld   hl,$9400
    ld   b,$04
    ld   a,c
    add  a,$2F
    cp   (hl)
    jp   nz,$08DD
    inc  l
    jr   nz,$08A6
    inc  a
    inc  h
    djnz $08A6
    ld   a,(watchdog)
    dec  c
    jr   nz,$0890
    inc  d
    ld   c,$20
    ld   hl,x_offset
    ld   a,c
    add  a,$2F
    ld   (hl),a
    inc  l
    jr   nz,$08C0
    ld   hl,x_offset
    ld   a,c
    add  a,$2F
    cp   (hl)
    jp   nz,$08DD
    inc  l
    jp   nz,$08CA
    ld   a,(watchdog)
    dec  c
    jr   nz,$08BC
    jp   done_RAM_test


    ld   hl,$0905
    ld   a,d
    and  a
    jr   z,$08E9
    inc  hl
    inc  hl
    dec  a
    jr   nz,$08E4
    ld   sp,stack_location
    push hl
    call $0933
    pop  hl
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    ld   hl,$9250
    ld   bc,$FFE0
    ld   a,(de)
    cp   $FF
    jp   z,$092D
    ld   (hl),a
    inc  de
    add  hl,bc
    jr   $08FA
    dec  c
    add  hl,bc
    dec  d
    add  hl,bc
    dec  e
    add  hl,bc
    dec  h
    add  hl,bc
 str_ram_test_msgs: ; boot self-test fail: sRAM/vRAM/cRAM/oRAM 'NG' ($FF-term)
    db   $1C, $1B, $0A, $16, $24, $17, $10, $FF              ; |SRAM NG||
    db   $1F, $1B, $0A, $16, $24, $17, $10, $FF              ; |VRAM NG||
    db   $0C, $1B, $0A, $16, $24, $17, $10, $FF              ; |CRAM NG||
    db   $18, $1B, $0A, $16, $24, $17, $10, $FF              ; |ORAM NG||
    ld   a,(watchdog) ; infinite loop
    jp   $092D

 clear_screen:
    ld   a,(watchdog)
    ld   hl,screen_ram
    ld   b,$04
    ld   (hl),TILE_BLANK
    inc  l
    jr   nz,$093B
    inc  h
    djnz $093B
    ld   a,(watchdog)
    ld   hl,$9400
    ld   b,$04
    ld   (hl),$80
    inc  l
    jr   nz,$094B
    inc  h
    djnz $094B
    ld   a,(watchdog)
    ld   hl,x_offset
    ld   (hl),$00
    inc  l
    jr   nz,$0959
    ld   a,(watchdog)
    ret
    nop
    nop
    nop
    ld   hl,$92CE
    ld   b,$0D
    ld   de,str_please_press
    call $0995
    ld   hl,$96CE
    call $098A
    ld   hl,$92CF
    ld   b,$0D
    ld   de,$09AE
    call $0995
    ld   hl,$96CF
    call $098A
    nop
    nop
    ret
    ld   de,$FFE0
    ld   b,$0D
    ld   (hl),$87
    add  hl,de
    djnz $098F
    ret
    push bc
    ld   bc,$FFE0
    ld   a,(de)
    ld   (hl),a
    add  hl,bc
    inc  de
    pop  bc
    djnz $0995
    ret
 str_please_press: ; 'PLEASE PRESS SHOT BUTTON' attract prompt
    db   $24, $19, $15, $0E, $0A, $1C, $0E, $24              ; | PLEASE |
    db   $19, $1B, $0E, $1C, $1C, $24, $1C, $11              ; |PRESS SH|
    db   $18, $1D, $24, $0B, $1E, $1D, $1D, $18              ; |OT BUTTO|
    db   $17, $24                                            ; |N |
 draw_intermission:  ; blit intermission screen ($1C x $1D) to VRAM $9043 via blit_rect_up
    nop
    nop
    nop
    ld   hl,$9043
    ld   b,$1C
    ld   c,$1D
    ld   de,intermission_screen
    call blit_rect_up
    ld   hl,$9443
    ld   b,$1C
    ld   c,$1D
    ld   de,intermission_screen_color
    call blit_rect_up
    call $0962
    ret

 blit_rect_up: ; blit_rect clone (row stride -$20), used by draw_intermission
    push bc
    push hl
    ld   a,(de)
    ld   (hl),a
    inc  hl
    inc  de
    djnz $09DE
    pop  hl
    ld   bc,$0020
    add  hl,bc
    pop  bc
    dec  c
    jp   nz,$09DC
    ret

 intermission_screen:
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $24, $24, $A1, $A2, $A2, $24, $00, $24
    db   $24, $24, $00, $24, $24, $24, $00, $24
    db   $24, $24, $00, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
    db   $A2, $24, $00, $24, $24, $24, $00, $24
    db   $24, $24, $00, $24, $24, $24, $00, $24
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $9E, $9F, $A0, $A2, $A2, $24, $08, $24
    db   $24, $24, $04, $24, $24, $24, $06, $24
    db   $24, $24, $02, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
    db   $A2, $24, $24, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $9E, $9F, $A0, $A2, $A2, $48, $49, $4A
    db   $24, $24, $24, $24, $24, $92, $93, $94
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $24, $24, $A1, $A2
    db   $A2, $4B, $4C, $4D, $24, $24, $A7, $24
    db   $24, $95, $96, $97, $24, $24, $A7, $24
    db   $24, $24, $A4, $A6, $A6, $A6, $A6, $A6
    db   $A6, $A6, $A6, $A2, $A2, $4E, $4F, $50
    db   $24, $24, $24, $24, $24, $98, $99, $9A
    db   $24, $24, $24, $24, $24, $A4, $A3, $A6
    db   $A6, $A6, $A6, $A6, $A6, $A6, $A6, $A2
    db   $A2, $48, $49, $4A, $24, $48, $49, $4A
    db   $24, $92, $93, $94, $24, $92, $93, $94
    db   $A4, $A3, $A3, $A6, $A8, $A9, $A9, $A9
    db   $AA, $A6, $A6, $A2, $A2, $4B, $4C, $4D
    db   $24, $4B, $4C, $4D, $24, $95, $96, $97
    db   $24, $95, $96, $97, $A3, $A3, $A3, $A6
    db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
    db   $A2, $4E, $4F, $50, $24, $4E, $4F, $50
    db   $24, $98, $99, $9A, $24, $98, $99, $9A
    db   $A3, $A3, $A3, $A6, $AB, $24, $24, $24
    db   $AC, $A6, $A6, $A2, $A2, $48, $49, $4A
    db   $24, $48, $49, $4A, $24, $92, $93, $94
    db   $24, $92, $93, $94, $A3, $A3, $A3, $A6
    db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
    db   $A2, $4B, $4C, $4D, $24, $4B, $4C, $4D
    db   $24, $95, $96, $97, $24, $95, $96, $97
    db   $A3, $A3, $A3, $A6, $AD, $AE, $AE, $AE
    db   $AF, $A6, $A6, $A2, $A2, $4E, $4F, $50
    db   $24, $4E, $4F, $50, $24, $98, $99, $9A
    db   $24, $98, $99, $9A, $A3, $A3, $A3, $A6
    db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
    db   $A2, $24, $24, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $A3, $A3, $A3, $A6, $AB, $24, $24, $24
    db   $AC, $A6, $A6, $A2, $A2, $24, $24, $24
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $24, $24, $24, $24, $A3, $A3, $A3, $A6
    db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
    db   $A2, $24, $00, $24, $24, $24, $00, $24
    db   $24, $24, $00, $24, $24, $24, $00, $24
    db   $A3, $A3, $A3, $A6, $AD, $AE, $AE, $AE
    db   $AF, $A6, $A6, $A2, $A2, $24, $00, $24
    db   $24, $24, $00, $24, $24, $24, $00, $24
    db   $24, $24, $00, $24, $A3, $A3, $A3, $A6
    db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
    db   $A2, $24, $05, $24, $24, $24, $08, $24
    db   $24, $24, $00, $24, $24, $24, $05, $24
    db   $A3, $A3, $A3, $A6, $AB, $24, $24, $24
    db   $AC, $A6, $A6, $A2, $A2, $24, $01, $24
    db   $24, $24, $24, $24, $24, $24, $01, $24
    db   $24, $24, $24, $24, $A3, $A3, $A3, $A6
    db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
    db   $A2, $80, $81, $82, $24, $24, $24, $24
    db   $24, $89, $8A, $8B, $24, $24, $24, $24
    db   $A5, $A3, $A3, $A6, $B0, $B1, $B1, $B1
    db   $B2, $A6, $A6, $A2, $A2, $83, $84, $85
    db   $24, $24, $A7, $24, $24, $8C, $8D, $8E
    db   $24, $24, $A7, $24, $24, $A5, $A3, $A6
    db   $A6, $A6, $A6, $A6, $A6, $A6, $A6, $A2
    db   $A2, $86, $87, $88, $24, $24, $24, $24
    db   $24, $8F, $90, $91, $24, $24, $24, $24
    db   $24, $24, $A5, $A6, $A6, $A6, $A6, $A6
    db   $A6, $A6, $A6, $A2, $A2, $80, $81, $82
    db   $24, $80, $81, $82, $24, $89, $8A, $8B
    db   $24, $89, $8A, $8B, $24, $24, $24, $24
    db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
    db   $A2, $83, $84, $85, $24, $83, $84, $85
    db   $24, $8C, $8D, $8E, $24, $8C, $8D, $8E
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $9E, $9F, $A0, $A2, $A2, $86, $87, $88
    db   $24, $86, $87, $88, $24, $8F, $90, $91
    db   $24, $8F, $90, $91, $24, $24, $24, $24
    db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
    db   $A2, $80, $81, $82, $24, $80, $81, $82
    db   $24, $89, $8A, $8B, $24, $89, $8A, $8B
    db   $24, $24, $24, $24, $24, $24, $24, $24
    db   $9E, $9F, $A0, $A2, $A2, $83, $84, $85
    db   $24, $83, $84, $85, $24, $8C, $8D, $8E
    db   $24, $8C, $8D, $8E, $24, $24, $24, $24
    db   $24, $24, $24, $24, $24, $24, $A1, $A2
    db   $A2, $86, $87, $88, $24, $86, $87, $88
    db   $24, $8F, $90, $91, $24, $8F, $90, $91
 intermission_screen_color:
    db   $83, $83, $83, $83, $83, $83, $83, $83
    db   $83, $83, $81, $81, $81, $80, $86, $80
    db   $80, $80, $86, $80, $80, $80, $86, $80
    db   $80, $80, $86, $80, $83, $83, $83, $83
    db   $83, $83, $83, $83, $81, $81, $81, $81
    db   $81, $80, $86, $80, $80, $80, $86, $80
    db   $80, $80, $86, $80, $80, $80, $86, $80
    db   $83, $83, $83, $83, $83, $83, $83, $83
    db   $81, $81, $81, $81, $81, $80, $86, $80
    db   $80, $80, $86, $80, $80, $80, $86, $80
    db   $80, $80, $86, $80, $83, $83, $83, $83
    db   $83, $83, $83, $83, $81, $81, $81, $81
    db   $81, $80, $80, $80, $80, $80, $80, $80
    db   $80, $80, $80, $80, $80, $80, $80, $80
    db   $83, $83, $83, $83, $83, $83, $83, $83
    db   $81, $81, $81, $81, $81, $87, $87, $87
    db   $80, $80, $80, $80, $80, $86, $86, $86
    db   $80, $80, $80, $80, $83, $83, $83, $83
    db   $83, $83, $83, $83, $83, $83, $81, $81
    db   $81, $87, $87, $87, $80, $80, $87, $80
    db   $80, $86, $86, $86, $80, $80, $87, $80
    db   $83, $83, $83, $86, $86, $86, $86, $86
    db   $86, $86, $86, $81, $81, $87, $87, $87
    db   $80, $80, $80, $80, $80, $86, $86, $86
    db   $80, $80, $80, $80, $83, $83, $83, $86
    db   $86, $86, $86, $86, $86, $86, $86, $81
    db   $81, $87, $87, $87, $80, $87, $87, $87
    db   $80, $86, $86, $86, $80, $86, $86, $86
    db   $83, $83, $83, $86, $85, $85, $85, $85
    db   $85, $86, $86, $81, $81, $87, $87, $87
    db   $80, $87, $87, $87, $80, $86, $86, $86
    db   $80, $86, $86, $86, $83, $83, $83, $86
    db   $85, $80, $80, $80, $85, $86, $86, $81
    db   $81, $87, $87, $87, $80, $87, $87, $87
    db   $80, $86, $86, $86, $80, $86, $86, $86
    db   $83, $83, $83, $86, $85, $80, $80, $80
    db   $85, $86, $86, $81, $81, $87, $87, $87
    db   $80, $87, $87, $87, $80, $86, $86, $86
    db   $80, $86, $86, $86, $83, $83, $83, $86
    db   $85, $80, $80, $80, $85, $86, $86, $81
    db   $81, $87, $87, $87, $80, $87, $87, $87
    db   $80, $86, $86, $86, $80, $86, $86, $86
    db   $83, $83, $83, $86, $85, $85, $85, $85
    db   $85, $86, $86, $81, $81, $87, $87, $87
    db   $80, $87, $87, $87, $80, $86, $86, $86
    db   $80, $86, $86, $86, $83, $83, $83, $86
    db   $85, $80, $80, $80, $85, $86, $86, $81
    db   $81, $80, $80, $80, $80, $80, $80, $80
    db   $80, $80, $80, $80, $80, $80, $80, $80
    db   $83, $83, $83, $86, $85, $80, $80, $80
    db   $85, $86, $86, $81, $81, $80, $80, $80
    db   $80, $80, $80, $80, $80, $80, $80, $80
    db   $80, $80, $80, $80, $83, $83, $83, $86
    db   $85, $80, $80, $80, $85, $86, $86, $81
    db   $81, $80, $86, $80, $80, $80, $86, $80
    db   $80, $80, $86, $80, $80, $80, $86, $80
    db   $83, $83, $83, $86, $85, $85, $85, $85
    db   $85, $86, $86, $81, $81, $80, $86, $80
    db   $80, $80, $86, $80, $80, $80, $86, $80
    db   $80, $80, $86, $80, $83, $83, $83, $86
    db   $85, $80, $80, $80, $85, $86, $86, $81
    db   $81, $80, $86, $80, $80, $80, $86, $80
    db   $80, $80, $86, $80, $80, $80, $86, $80
    db   $83, $83, $83, $86, $85, $80, $80, $80
    db   $85, $86, $86, $81, $81, $80, $86, $80
    db   $80, $80, $80, $80, $80, $80, $86, $80
    db   $80, $80, $80, $80, $83, $83, $83, $86
    db   $85, $80, $80, $80, $85, $86, $86, $81
    db   $81, $84, $84, $84, $80, $80, $80, $80
    db   $80, $86, $86, $86, $80, $80, $80, $80
    db   $83, $83, $83, $86, $85, $85, $85, $85
    db   $85, $86, $86, $81, $81, $84, $84, $84
    db   $80, $80, $87, $80, $80, $86, $86, $86
    db   $80, $80, $87, $80, $83, $83, $83, $86
    db   $86, $86, $86, $86, $86, $86, $86, $81
    db   $81, $84, $84, $84, $80, $80, $80, $80
    db   $80, $86, $86, $86, $80, $80, $80, $80
    db   $83, $83, $83, $86, $86, $86, $86, $86
    db   $86, $86, $86, $81, $81, $84, $84, $84
    db   $80, $84, $84, $84, $80, $86, $86, $86
    db   $80, $86, $86, $86, $83, $83, $83, $83
    db   $83, $83, $83, $83, $81, $81, $81, $81
    db   $81, $84, $84, $84, $80, $84, $84, $84
    db   $80, $86, $86, $86, $80, $86, $86, $86
    db   $83, $83, $83, $83, $83, $83, $83, $83
    db   $81, $81, $81, $81, $81, $84, $84, $84
    db   $80, $84, $84, $84, $80, $86, $86, $86
    db   $80, $86, $86, $86, $83, $83, $83, $83
    db   $83, $83, $83, $83, $81, $81, $81, $81
    db   $81, $84, $84, $84, $80, $84, $84, $84
    db   $80, $86, $86, $86, $80, $86, $86, $86
    db   $83, $83, $83, $83, $83, $83, $83, $83
    db   $81, $81, $81, $81, $81, $84, $84, $84
    db   $80, $84, $84, $84, $80, $86, $86, $86
    db   $80, $86, $86, $86, $83, $83, $83, $83
    db   $83, $83, $83, $83, $83, $83, $81, $81
    db   $81, $84, $84, $84, $80, $84, $84, $84
    db   $80, $86, $86, $86, $80, $86, $86, $86

 bomb_update: ; drop / arm+detonate / explode dispatch
    ld   a,(endlevel_active)
    and  a
    jp   nz,$1038
    ld   a,($841F)
    cp   $02
    jp   z,$1038
    ld   a,($841F)
    cp   $00
    jp   z,$1038
    ld   a,(bomb_placed)
    and  a
    jp   nz,$10ED
    ld   (bomb_lethal),a
    ld   a,(bombs)
    and  a
    ret  z
    jp   $1046
 bomb_clear: ; zero the 16-byte bomb block $8680
    ld   hl,bomb_placed
    ld   a,$00
    ld   b,$10
    ld   (hl),a
    inc  hl
    djnz $103F
    jp   $10D6
    ld   a,(boulder_req)
    and  a
    ret  nz
    ld   a,(controls)
    and  $10    ; fire pressed?
    ret  z
    call get_player_tile_pos
    ld   de,$FFE2
    add  hl,de
    ld   a,(hl)
    cp   $F0
    ret  c
    ld   a,(bombs) ;(only here when holding a bomb
    and  a
    ret  z      ; out of bombs
    sub  $01    ; use a bomb
    ld   (bombs),a
    call bomb_count_redraw
    jp   $109E

 ;; drop bomb?
 bomb_count_redraw: ; redraw on-screen bomb-count row ($91C3/$95C3)
    push hl
    push de
    push bc
    push af
    ld   hl,$91C3
    ld   a,(bombs)
    ld   c,$06
    ld   de,$0020
    and  a
    jp   z,$1087
    ld   b,a
    ld   a,$32
    ld   (hl),a
    add  hl,de
    dec  c
    djnz $1082
    ld   (hl),$24
    add  hl,de
    dec  c
    jp   nz,$1087
    ld   hl,$95C3
    ld   a,$86
    ld   b,$05
    ld   (hl),a
    add  hl,de
    djnz $1095
    pop  af
    pop  bc
    pop  de
    pop  hl
    ret

 ;; (after?) set bomb?
    ld   a,$00
    ld   (bomb_lethal),a
    ld   ($8681),a
    ld   ($8682),a
    ld   ($8688),a
    ld   ($8689),a
    ld   (bomb_set_timer),a
    ld   (bomb_exploding),a
    ld   a,$01
    ld   (bomb_placed),a
    ld   hl,bomb_x
    ld   a,(player_x) ; set bomb pos to player pos
    ld   (hl),a
    inc  hl
    ld   a,(player_y)
    ld   (hl),a
    inc  hl
    ld   a,$3C  ; ?
    ld   (hl),a
    inc  hl
    ld   a,$86  ;
    ld   (hl),a
    ld   a,$85
    ld   (watchdog),a
    jp   $10D6
    ld   hl,$801C
    ld   a,(bomb_x)
    ld   (hl),a
    inc  hl
    ld   a,(bomb_um1)
    ld   (hl),a
    inc  hl
    ld   a,(bomb_um2)
    ld   (hl),a
    inc  hl
    ld   a,(bomb_y)
    ld   (hl),a
    ret


    ld   a,(bomb_exploding)
    and  a
    jp   nz,$110D
    ld   a,(bomb_set_timer)
    cp   $14
    jp   z,$1101
    inc  a      ; too soon to detonate
    ld   (bomb_set_timer),a
    ret
    ld   a,(controls)
    and  $10    ; fire pressed?
    ret  z
 _detonate_bomb:
    ld   a,$01  ; yep... explode bomb
    ld   (bomb_exploding),a
    ret

    ld   hl,$8688
    inc  (hl)
    ld   a,(hl)
    cp   $06
    ret  c
    ld   (hl),$00
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $01
    jp   z,$1134
    cp   $02
    jp   z,$114B
    cp   $05
    jp   z,$114E
    cp   $09
    jp   z,$115B
    cp   $0E
    jp   z,$1168
    ret
    ld   a,$3E
    ld   ($8686),a
    ld   a,$87
    ld   ($8687),a
    ld   a,$01
    ld   (bomb_lethal),a
    ld   a,$88
    ld   (watchdog),a
    jp   $10D6
    jp   $10D6
    ld   a,$3F
    ld   ($8686),a
    ld   a,$84
    ld   ($8687),a
    jp   $10D6
    ld   a,$3D
    ld   ($8686),a
    ld   a,$87
    ld   ($8687),a
    jp   $10D6
    jp   bomb_clear
    nop
    nop

 bomb_collide:   ; explosion AABB vs player + each cat/snake
    ld   a,(bomb_lethal)
    and  a
    ret  z
    ld   a,(int_enable)
    and  $80
    jp   nz,$118C
    ld   a,($841F)
    cp   $01
    jp   nz,$118C
    ld   a,(endlevel_active)
    and  a
    jp   nz,$118C
    call bomb_kill_player
    call bomb_vs_catA
    call bomb_vs_slot
    call bomb_vs_catB
    call bomb_vs_catC
    call bomb_vs_snakeA
    call bomb_vs_snakeB
    ret
 bomb_kill_player: ; explosion AABB vs player -> $841F=2
    ld   ix,ram_start
    ld   iy,$801C
    ld   hl,$11B4
    exx
    ld   de,$0810
    ld   hl,$0810
    jp   $11BF
    ld   a,$81
    ld   (watchdog),a
    ld   hl,$841F
    ld   (hl),$02
    ret
    ld   a,(ix+$03)
    ld   b,(iy+$03)
    sub  h
    cp   b
    ret  nc
    add  a,l
    cp   b
    ret  c
    ld   a,(ix+$00)
    ld   b,(iy+$00)
    sub  d
    cp   b
    ret  nc
    add  a,e
    cp   b
    ret  c
    exx
    jp   (hl)
 bomb_vs_catA: ; explosion AABB vs cat A ($8501) -> state $06
    ld   a,($8501)
    and  a
    ret  z
    ld   a,(cat1_busy)
    and  a
    ret  nz
    ld   ix,$801C
    ld   iy,$8004
    ld   hl,$11F8
    exx
    ld   de,$0E1C
    ld   hl,$0E1C
    jp   $11BF
    ld   hl,cat1_state
    ld   (hl),$06
    ld   hl,cat1_busy
    ld   (hl),$01
    jp   $1286
 bomb_vs_slot: ; explosion AABB vs unused enemy slot ($8503)
    ld   a,($8503)
    and  a
    ret  z
    ld   a,($854B)
    and  a
    ret  nz
    ld   ix,$801C
    ld   iy,$8008
    ld   hl,$1224
    exx
    ld   de,$0E1C
    ld   hl,$0E1C
    jp   $11BF
    ld   hl,$8537
    ld   (hl),$06
    ld   hl,$854B
    ld   (hl),$01
    jp   $1286
 bomb_vs_catB: ; explosion AABB vs cat B ($8504) -> state $06
    ld   a,($8504)
    and  a
    ret  z
    ld   a,(cat2_busy)
    and  a
    ret  nz
    ld   ix,$801C
    ld   iy,$800C
    ld   hl,$1250
    exx
    ld   de,$0E1C
    ld   hl,$0E1C
    jp   $11BF
    ld   hl,cat2_state
    ld   (hl),$06
    ld   hl,cat2_busy
    ld   (hl),$01
    jp   $1286
 bomb_vs_catC: ; explosion AABB vs cat C ($8507) -> state $06
    ld   a,($8507)
    and  a
    ret  z
    ld   a,(cat3_busy)
    and  a
    ret  nz
    ld   ix,$801C
    ld   iy,$8010
    ld   hl,$127C
    exx
    ld   de,$0E1C
    ld   hl,$0E1C
    jp   $11BF
    ld   hl,cat3_state
    ld   (hl),$06
    ld   hl,cat3_busy
    ld   (hl),$01
    ld   a,$83
    ld   (watchdog),a
    ld   d,$04
    call $12F1
    ret
 bomb_vs_snakeA: ; explosion AABB vs snake A ($8601) -> state $06
    ld   a,($8601)
    and  a
    ret  z
    ld   a,(snake1_busy)
    and  a
    ret  nz
    ld   ix,$801C
    ld   iy,$8014
    ld   hl,$12B0
    exx
    ld   de,$0C18
    ld   hl,$0C18
    jp   $11BF
    ld   hl,snake1_state
    ld   (hl),$06
    ld   hl,snake1_busy
    ld   (hl),$01
    jp   $12E6
 bomb_vs_snakeB: ; explosion AABB vs snake B ($8603) -> state $06
    ld   a,($8603)
    and  a
    ret  z
    ld   a,(snake2_busy)
    and  a
    ret  nz
    ld   ix,$801C
    ld   iy,$8018
    ld   hl,$12DC
    exx
    ld   de,$0C18
    ld   hl,$0C18
    jp   $11BF
    ld   hl,snake2_state
    ld   (hl),$06
    ld   hl,snake2_busy
    ld   (hl),$01
    ld   a,$82
    ld   (watchdog),a
    ld   d,$08
    call $12F1
    ret
    xor  a
    ld   hl,score_add_trig
    ld   (hl),$01
    ld   c,$00
    ld   e,$00
    inc  hl
    ld   a,c
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  hl
    ld   a,d
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  hl
    ld   a,e
    adc  a,(hl)
    daa
    ld   (hl),a
    ret

 draw_cur_level_map:
    ld   a,(cur_map)
    and  $03
    jp   z,map_1
    cp   $01
    jp   z,$132B
    cp   $02
    jp   z,$1334
    cp   $03
    jp   z,$133D
 map_1:
    ld   a,$83
    ld   de,level_1_map
    call draw_map
    ret
    ld   a,$83
    ld   de,level_2_map
    call draw_map
    ret
    ld   a,$83
    ld   de,level_3_map
    call draw_map
    ret
    ld   a,$83
    ld   de,level_4_map
    call draw_map
    ret

 draw_map:
    ld   hl,$9043
    ld   b,SCR_COLS
    ld   c,SCR_ROWS
    ex   af,af' ; '
    call blit_rect
    ex   af,af' ; '
    ld   de,$0020
    ld   hl,$9443
    ld   b,SCR_COLS
    ld   c,SCR_ROWS
    call fill_rect
    ret

 blit_rect:          ; copy b(cols) x c(rows) tile rect from (de) -> VRAM (hl); row stride $20, de reads linearly
    push bc
    push hl
    ld   a,(de)
    ld   (hl),a
    inc  hl
    inc  de
    djnz $1362
    pop  hl
    ld   bc,$0020
    add  hl,bc
    pop  bc
    dec  c
    jr   nz,blit_rect
    ret

    push bc
    push hl
    ld   a,(de)
    ld   (hl),a
    inc  de
    inc  hl
    djnz $1374
    pop  hl
    ld   bc,$FFE0
    add  hl,bc
    pop  bc
    dec  c
    jr   nz,$1372
    ret

 fill_rect:          ; fill b(cols) x c(rows) rect at (hl) with byte a; row stride = de
    push bc
    push hl
    ld   (hl),a
    inc  hl
    djnz $1386
    pop  hl
    add  hl,de
    pop  bc
    dec  c
    jr   nz,fill_rect
    ret

 ;;; very chunky data
 ;;; Looks like a lot of level data down to $1FD0 (3136 bytes)
 ;;; 27 cells per column, running top-to-bottom, right to left
 level_1_map:     ; next map at 16A1 (784 bytes per screen)
     db   $25, $25, $25, $25, $25, $25, $25, $25
     db   $25, $25, $25, $25, $25, $25, $25, $25
     db   $25, $25, $25, $25, $25, $25, $25, $25
     db   $25, $25, $25, $25, $25, $25, $25, $25
     db   $25, $25, $25, $25, $25, $25, $25, $25
     db   $25, $25, $25, $25, $25, $25, $25, $25
  db   $25, $25, $25, $25, $25, $25, $25, $25
 ;;; Right ladder column
     db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
     db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
     db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
     db   $F5, $F5, $F5, $F4, $25, $25, $25, $f4
  db   $25, $25, $25, $F4, $25, $25, $25, $25
   db   $25, $25, $25, $F4, $25, $25, $25, $25
   db   $25, $25, $25, $F4, $25, $25, $25, $f4
  db   $25, $25, $25, $F4, $25, $25, $25, $f4
  db   $25, $25, $25, $25, $25, $25, $25, $f4
   db   $25, $25, $25, $25, $25, $25, $25, $f4
   db   $25, $25, $25, $f4, $25, $25, $25, $f4
   db   $25, $25, $25, $f4, $25, $25, $25, $25
   db   $25, $25, $25, $f4, $25, $25, $25, $25
  db   $25, $25, $25, $f4, $25, $25, $25, $f4
   db   $25, $25, $25, $f5, $f5, $f5, $f5, $f4
  db   $35, $35, $35, $35, $25, $25, $25, $f4
    db   $35, $35, $35, $35, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F9
    db   $25, $25, $25, $36, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
 level_2_map:     ; next map at 19B1 (784 bytes per screen)
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $FC, $25, $37, $38, $35
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F9
    db   $25, $25, $25, $36, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25

 level_3_map:     ; next map at 1CC1 (784 bytes per screen)
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $FC, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F9
    db   $25, $25, $25, $36, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $FC, $25, $37, $38, $35
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
 level_4_map:     ; end of level data at 1FD0 (784 bytes per screen)
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F9
    db   $25, $25, $25, $36, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $36
    db   $25, $25, $25, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $36, $36, $36, $36, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FC, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FF, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $FD
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $FC, $25, $37, $38, $35
    db   $25, $25, $25, $F4, $25, $25, $25, $FC
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F6
    db   $25, $37, $38, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $F6, $25, $37, $38, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
    db   $35, $35, $35, $35, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $F4
    db   $25, $25, $25, $F4, $25, $25, $25, $25
    db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
    db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25
    db   $25, $25, $25, $25, $25, $25, $25, $25

 main_game_loop:
    ld   a,(screen_state)
    and  a
    jp   nz,$1FE3
    ld   a,(cur_screen)
    cp   SCR_GAME
    jp   nz,$1FE0
    jp   main_game_loop
    rrca
    jp   c,$219E
    rrca
    jp   c,$21CA
    rrca
    jp   c,$21F6
    rrca
    jp   c,$2204
    rrca
    jp   c,$2284
    rrca
    jp   c,$200A
    rrca
    jp   c,$20B3
    rrca
 ;;; ============ start of suprmous.x3 =============
    jp   c,$20D9
    xor  a
    ld   (screen_state),a
    jp   main_game_loop

    call clear_playfield
    ld   hl,cat1_enable ; clear cat enable data
    ld   b,$10          ; 16 bytes
    ld   a,$00
    ld   (hl),a
    inc  hl
    djnz $2014
    ld   hl,snake1_enable ; clear snake enable data
    ld   b,$10            ; 16 bytes
    ld   (hl),a
    inc  hl
    djnz $201D
    ld   (player_bytes),a
    ld   hl,$809C
    ld   b,$60  ; 96 bytes cleared
    ld   (hl),a
    inc  hl
    djnz $2029
    ld   a,(cur_player)
    and  a
    jp   nz,$203A
    ld   hl,lives_copy
    jp   $203D
    ld   hl,$8300
    ld   de,lives
    ld   bc,$00FF
    ldir
    call $2082
    call $209D
    call draw_cur_level_map
    call food_maze_redraw
    call $3F34
    call $417B
    call $4227
    ld   a,$A0
    ld   (watchdog),a
    ld   hl,score_add_trig
    ld   a,$00
    ld   b,$04
    ld   (hl),a
    inc  hl
    djnz $2066
    ld   a,$05
    ld   (bombs),a
    call bomb_count_redraw
    ld   a,$06
    ld   (cur_screen),a
    ld   a,(screen_state)
    res  5,a
    ld   (screen_state),a
    jp   $1FD1


    ld   hl,$9262
    ld   de,str_player
    ld   b,$08
    push bc
    ld   a,(de)
    ld   (hl),a
    ld   bc,$FFE0
    add  hl,bc
    inc  de
    pop  bc
    djnz $208A
    ld   a,(cur_player)
    inc  a
    ld   ($9182),a
    ret


    ld   hl,$9662
    ld   de,$FFE0
    ld   b,$08
    ld   (hl),$87
    add  hl,de
    djnz $20A5
    ret
 str_player: ; 'PLAYER  ' (player-ready)
    db   $19, $15, $0A, $22, $0E, $1B, $24, $24              ; |PLAYER  |
    call clear_playfield
    call $2082
    call $209D
    call draw_intermission
    ld   a,$07
    ld   (cur_screen),a
    ld   a,$E0
    ld   (watchdog),a
    ld   a,$00
    ld   (gamble_state),a
    ld   a,(screen_state)
    res  6,a
    ld   (screen_state),a
    jp   $1FD1
    call clear_playfield
    ld   a,$01
    ld   (cur_screen),a
    ld   a,(screen_state)
    res  7,a
    ld   (screen_state),a
    jp   $1FD1

 clear_playfield: ; fill VRAM $9002 region ($20x$1D) with blank tile $24
    ld   hl,$9002
    ld   de,$0020
    ld   b,$20
    ld   c,$1D
    push bc
    push hl
    ld   (hl),$24
    inc  l
    dec  c
    jp   nz,$20F8
    pop  hl
    add  hl,de
    pop  bc
    djnz $20F6
    ld   hl,$9402
    ld   b,$20
    ld   c,$1D
    push bc
    push hl
    ld   (hl),$84
    inc  l
    dec  c
    jp   nz,$210D
    pop  hl
    add  hl,de
    pop  bc
    djnz $210B
    ld   hl,x_offset
    ld   b,$40
    ld   (hl),$00
    inc  l
    djnz $211E
    ld   hl,ram_start
    ld   b,$20
    ld   (hl),$00
    inc  l
    djnz $2128
    ret

 draw_column: ; draw [VRAM_addr_LE, tiles.., $FF] column upward (-$20 stride)
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    inc  hl
    ex   de,hl
    ld   bc,$FFE0
    ld   a,(de)
    cp   $FF
    ret  z
    ld   (hl),a
    inc  de
    add  hl,bc
    jr   $2136

 hiscore_compare: ; compare 3-byte score at (de) vs hiscore_hi (carry=lower)
    ld   hl,hiscore_hi
    push de
    ld   b,$03
    ld   a,(de)
    cp   (hl)
    jp   c,$2154
    jp   z,$2150
    jp   nc,$2156
    dec  de
    dec  hl
    djnz $2145
    pop  de
    ret
    pop  de
    ld   hl,hiscore_hi
    ld   b,$03
    ld   a,(de)
    ld   (hl),a
    dec  hl
    dec  de
    djnz $215C
    ld   de,hiscore_hi
    ld   hl,$9221
    ld   b,$06
    ld   c,b
    srl  b
    call c,$2182
    ld   a,b
    and  a
    ret  z
    call $2179
    jp   $2170
    ld   a,(de)
    rrca
    rrca
    rrca
    rrca
    call $2184
    dec  b

    ld   a,(de)
    dec  de
    and  $0F
    jp   nz,$2192
    dec  c
    jp   z,$2192
    ld   a,$24
    jp   $2196
    ld   c,$01
    add  a,$00
    ld   (hl),a
    push bc
    ld   bc,$FFE0
    add  hl,bc
    pop  bc
    ret
    call clear_playfield
    ld   hl,attract_display_list
    call draw_column
    ld   hl,$2352
    call draw_column
    ld   hl,$2359
    call draw_column
    xor  a
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,$02
    ld   (cur_screen),a
    ld   a,(screen_state)
    res  0,a
    ld   (screen_state),a
    jp   $1FD1
    call clear_playfield
    ld   hl,$2362
    call draw_column
    ld   hl,$2352
    call draw_column
    ld   hl,$2359
    call draw_column
    xor  a
    ld   (req_death),a
    ld   (req_level_done),a
    ld   a,$03
    ld   (cur_screen),a
    ld   a,(screen_state)
    res  1,a
    ld   (screen_state),a
    jp   $1FD1
    call clear_playfield
    ld   a,(screen_state)
    res  2,a
    ld   (screen_state),a
    jp   $1FD1
    call clear_playfield
    ld   hl,$2372
    call draw_column
    ld   a,(is_playing)
    cp   $01
    jp   z,$2240
    ld   a,(p2_done)
    ld   c,$01
    and  a
    jp   z,$2226
    ld   a,(p1_done)
    and  a
    jp   nz,$2271
    inc  c
    ld   a,c
    ex   af,af' ; '
    ld   hl,$237E
    call draw_column
    ex   af,af' ; '
    ld   (hl),a
    ld   de,score_hi
    rrca
    jp   c,$223A
    ld   de,$8049
    call hiscore_compare
    jp   $2261
    ld   de,score_hi
    call hiscore_compare
    xor  a
    ld   (flip_state),a
    ld   (sound_enable),a
    ld   hl,flip_scr_x
    ld   (hl),a
    inc  l
    ld   (hl),a
    ld   hl,score_lo
    ld   b,$06
    ld   (hl),a
    inc  hl
    djnz $2258
    ld   a,$80
    ld   (disp_timer),a
    ld   a,$04
    ld   (cur_screen),a
    ld   a,(screen_state)
    res  3,a
    ld   (screen_state),a
    jp   $1FD1
    ld   de,score_hi
    call hiscore_compare
    nop
    nop
    nop
    nop
    ld   de,$8049
    call hiscore_compare
    jp   $2246
    call clear_playfield
    ld   a,(first_turn)
    and  a
    jp   z,$22AE
    xor  a
    ld   (first_turn),a
    ld   hl,$9361
    ld   de,$FFE0
    call $22A4
    ld   hl,$9101
    call $22A4
    jp   $22AE
    ld   b,$05
    ld   (hl),$24
    add  hl,de
    djnz $22A6
    ld   (hl),$00
    ret

    ld   a,(cur_player)
    and  a
    jp   z,$22BE
    ld   a,($8027)
    and  a
    jp   z,$22BE
    ld   a,$01
    ld   hl,flip_scr_x
    ld   (hl),a
    inc  l
    ld   (hl),a
    ld   hl,$237E
    call draw_column
    ld   a,(cur_player)
    inc  a
    ld   (hl),a
    dec  a
    ld   hl,$8201
    and  a
    jp   z,$22D8
    inc  h
    ld   a,(hl)
    add  a,$01
    daa
    ex   af,af' ; '
    ld   hl,$2388
    call draw_column
    ex   af,af' ; '
    ld   ($8037),a
    ld   de,$8037
    ld   b,$02
    call $216A
    call draw_player_lives
    ld   a,$05
    ld   (cur_screen),a
    ld   a,$40
    ld   (disp_timer),a
    ld   a,(screen_state)
    res  4,a
    ld   (screen_state),a
    jp   $1FD1

 draw_player_lives: ; draw cur_player remaining lives (lives_copy) as tile $79 at $939F
    ld   a,(cur_player)
    ld   hl,lives_copy
    and  a
    jp   z,$2312
    inc  h
    ld   a,(hl)
    ld   b,$07
    ld   hl,$939F
    ld   de,$FFE0
    dec  a
    and  a
    jp   z,$2328
    ld   (hl),$79
    add  hl,de
    dec  b
    dec  a
    jp   nz,$2320
    ld   (hl),$24
    add  hl,de
    djnz $2328
    ret

 draw_lives: ; draw active lives count as tile $79 icons at $939F
    ld   hl,lives
    ld   a,(hl)
    dec  a
    ld   hl,$939F
    ld   de,$FFE0
    ld   b,$07
    and  a
    jp   z,$2328
    jp   $231C

 attract_display_list: ; [VRAM_addr_LE, text.., $FF] records, drawn by draw_column
    db   $AE, $92, $18, $17, $15, $22, $24, $01              ; |..ONLY 1|
    db   $24, $19, $15, $0A, $22, $0E, $1B, $FF              ; | PLAYER||
    db   $2C, $92, $19, $1E, $1C, $11, $FF, $50              ; |..PUSH|.|
    db   $92, $0B, $1E, $1D, $1D, $18, $17, $FF              ; |.BUTTON||
    db   $AE, $92, $01, $24, $18, $1B, $24, $02              ; |..1 OR 2|
    db   $24, $19, $15, $0A, $22, $0E, $1B, $FF              ; | PLAYER||
    db   $8C, $92, $10, $0A, $16, $0E, $24, $18              ; |..GAME O|
    db   $1F, $0E, $1B, $FF, $8F, $92, $19, $15              ; |VER|..PL|
    db   $0A, $22, $0E, $1B, $24, $FF, $94, $92              ; |AYER |..|
    db   $15, $0E, $1F, $0E, $15, $24, $FF                   ; |LEVEL ||
    ld   a,($841F)
    cp   $02
    jp   z,$23C5
    ld   a,(endlevel_active)
    and  a
    jp   nz,$23C9

 ingame_update:  ; main loop. per-frame game pipeline (cats,snakes,player,bombs,...)
    call platform_update
    call bridge_update
    call scripted_move
    call cat_manager
    call snake_mgr
    call player_update
    call enemy_eaten_sm
    call level_end_seq
    call player_vs_enemy
    call bomb_collide
    call bomb_update
    call boulder_update
    ret

    call player_update
    ret
    call cat_manager
    call snake_mgr
    call level_end_seq
    ret

 level_end_seq:  ; run check_level_done, else end timer -> req_level_done
    ld   a,(req_death)
    and  a
    ret  nz
    ld   a,($841F)
    cp   $02
    ret  z
    ld   a,(endlevel_active)
    and  a
    jp   z,check_level_done
    ld   a,(endlevel_ctr)
    inc  a
    ld   (endlevel_ctr),a
    cp   $02
    jp   z,$2406
    cp   $04
    jp   z,$2406
    cp   $E8
    jp   z,$240C
    cp   $EC
    jp   z,$2412
    cp   $F0
    jp   z,$2418
    ret
    ld   a,$91
    ld   (watchdog),a
    ret
    ld   a,$A0
    ld   (watchdog),a
    ret
    ld   a,$E0
    ld   (watchdog),a
    ret
    ld   a,$00
    ld   (gamble_state),a
    ld   (endlevel_active),a
    ld   (endlevel_ctr),a
    ld   a,$01
    ld   (req_level_done),a
    ret

 check_level_done:   ; all 9 food_returned set? -> start end-of-level seq
    ld   hl,food_returned
    ld   a,$00
    ld   b,$09
    cp   (hl)
    ret  z
    inc  hl
    inc  hl
    djnz $2430
    ld   d,$00
    ld   a,(snake1_busy)
    and  a
    jp   nz,$2449
    ld   a,$06
    ld   (snake1_state),a
    ld   a,$08
    add  a,d
    daa
    ld   d,a
    ld   a,(snake2_busy)
    and  a
    jp   nz,$245A
    ld   a,$06
    ld   (snake2_state),a
    ld   a,$08
    add  a,d
    daa
    ld   d,a
    call kill_enemies_bonus
    ld   a,$01
    ld   (endlevel_active),a
    ld   a,$E0
    ld   (watchdog),a
    ret

 ;;; called several times
    call gamble_update
    ret

 player_init_template:  ; ldir'd to player record $8400 (46 = $2E bytes)
    db   $01, $00, $00, $00, $00, $00, $74, $C2
    db   $00, $00, $FF, $FE, $01, $02, $01, $02
    db   $FF, $FE, $05, $00, $00, $00, $00, $00
    db   $00, $00, $00, $00, $00, $00, $00, $01
    db   $00, $00, $00, $00, $9B, $24, $00, $00
    db   $00, $00, $00, $00, $00, $00
    db   $00           ; pad
 attract_demo_script:  ; FF-terminated joystick script for attract demo
    db   $0F, $01, $0F, $01, $04, $10, $0F, $02
    db   $0F, $02, $0F, $02, $0F, $01, $0F, $01
    db   $6F, $08, $04, $10, $6F, $08, $0F, $02
    db   $4F, $02, $2F, $02, $0F, $01, $0F, $01
    db   $0F, $08, $0F, $08, $0F, $01, $0F, $01
    db   $6F, $08, $3F, $02, $1F, $02, $0F, $02
    db   $04, $10, $0F, $01, $04, $10, $0F, $04
    db   $0F, $02, $6F, $02, $0F, $08, $0F, $01
    db   $3F, $01, $1F, $01, $0F, $01, $0F, $01
    db   $0F, $04, $0F, $02, $0F, $02, $0F, $02
    db   $0F, $04, $0F, $04, $0F, $04, $0F, $04
    db   $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db   $FF, $FF
    inc  hl
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    ld   a,(de)
    cp   $FF
    jp   nz,$250D
    ld   de,attract_demo_script
    jp   $2501
    ex   af,af' ; '
    inc  de
    ld   a,(de)
    inc  de
    ld   (hl),d
    dec  hl
    ld   (hl),e
    dec  hl
    ex   af,af' ; '
    ld   (hl),a
    ex   af,af' ; '
    jp   $2574

 get_player_tile_pos:
    ld   a,(player_y)
    rrca
    rrca
    rrca
    and  $1F
    ld   e,a
    ld   a,(player_x)
    neg
    rlca
    rlca
    ld   d,a
    and  $E0
    or   e
    ld   e,a
    ld   a,d
    and  $03
    ld   d,a
    ld   hl,screen_ram
    add  hl,de
    ret

 player_update:  ; player state machine
    ld   a,($8400)
    and  a
    jp   nz,$2554
    ld   de,$8400
    ld   hl,player_init_template
    ld   bc,$002E
    ldir
    ld   a,$C9
    ld   (watchdog),a
    call bomb_clear
    ret
    ld   hl,$8402
    inc  (hl)
    bit  0,(hl)
    jp   z,$28D2
    ld   a,(is_playing)
    and  a
    jp   nz,$2571
    ld   hl,$8423
    ld   a,(hl)
    dec  (hl)
    and  a
    jp   z,$24FD
    xor  a
    jp   $2574
    ld   a,(hw_in_0)
    ld   (controls),a
    call player_update_move
    ld   a,($8422)
    and  a
    jp   nz,$2594
    call move_player
    ld   a,(player_sp_x)
    ld   b,a
    ld   a,(player_sp_y)
    or   b
    jp   nz,$2594
    ld   a,$00
    ld   ($8416),a
    call player_commit
    ret

 player_update_move: ; player state machine, stage 2 (reads $841F)
    ld   a,($841F)
    cp   $01
    jp   z,$25BC
    ex   af,af' ; '
    ld   a,$00
    ld   ($8416),a
    ex   af,af' ; '
    cp   $02
    jp   z,$25C2
    cp   $00
    jp   z,$2619
    cp   $04
    jp   z,$262D
    cp   $05
    jp   z,$26B2
    ret
    ld   a,$01
    ld   ($8416),a
    ret
    ld   hl,$8420
    ld   a,(hl)
    and  a
    jp   nz,$25DF
    ld   a,$01
    ld   (hl),a
    ld   a,$80
    inc  hl
    ld   (hl),a
    ld   a,$01
    ld   ($8422),a
    ld   a,$0C
    ld   ($8413),a
    call player_stop
    ret
    inc  hl
    dec  (hl)
    ld   a,(hl)
    cp   $7E
    jp   z,$25F7
    cp   $40
    jp   z,$25FD
    cp   $30
    jp   z,$2603
    cp   $20
    jp   z,$2609
    ret
    ld   a,$E0
    ld   (watchdog),a
    ret
    ld   a,$0D
    ld   ($8413),a
    ret
    ld   a,$0E
    ld   ($8413),a
    ret
    ld   a,$0F
    ld   ($8413),a
    ld   a,$00
    ld   ($841F),a
    ld   a,$A0
    ld   (watchdog),a
    ret

mthing
    ld   a,$00
    ld   ($8400),a
    ld   ($8420),a
    ld   (player_x),a
    ld   (player_y),a
    ld   a,$01
    ld   (req_death),a
    ret

    ld   hl,$8420
    ld   a,(hl)
    and  a
    jp   nz,$2647
    ld   a,$01
    ld   (hl),a
    ld   ($8422),a
    ld   a,$00
    ld   ($8429),a
    ld   ($842A),a
    call player_stop
    ret

    ld   a,($842A)
    and  a
    jp   nz,$2674
    ld   a,(player_y)
    add  a,$02
    ld   (player_y),a
    cp   $E0
    jp   nc,$268B
    call get_player_tile_pos
    ld   bc,$FFE2
    add  hl,bc
    ld   a,(hl)
    cp   TILE_WATER ; fell in water
    jp   z,player_fell_water
    cp   TILE_WATER_2
    jp   z,player_fell_water
    ret

 player_fell_water: ; can you fall in water? NO!
    ld   a,$01
    ld   ($842A),a ; hmm?
    ret

    ld   a,($8429)
    inc  a
    ld   ($8429),a
    cp   $02
    jp   z,$2696
    cp   $0A
    jp   z,$269C
    cp   $14
    jp   z,$26A2
    ret
    ld   a,$00
    ld   ($8420),a
    ld   a,$02
    ld   ($841F),a
    ret
    ld   a,$0D
    ld   ($8413),a
    ret
    ld   a,$0E
    ld   ($8413),a
    ret
    ld   a,$0F
    ld   ($8413),a
    ld   a,$00
    ld   ($841F),a
    ld   a,$A0
    ld   (watchdog),a
    ret
    call scripted_move
    ret

 move_player:
    ld   a,(player_y)
    and  $07
    cp   $02    ; only allow change dir ever 02 on y
    ret  nz
    ld   a,(player_x)
    and  $07
    cp   $04    ; only allow change dir every 04 on x
    ret  nz
    ld   a,(controls)
    rrca
    jp   c,move_player_left
    rrca
    jp   c,move_player_right
    rrca
    jp   c,move_player_down
    rrca
    jp   c,move_player_up
    nop
    ld   a,(player_x)
    ld   d,a
    ld   a,$14
    ld   c,$20
    ld   b,$07
    cp   d
    jp   z,$26EE
    add  a,c
    djnz $26E4
    jp   $26FF
    ld   a,(player_y)
    ld   d,a
    ld   a,$22
    ld   c,$20
    ld   b,$07
    cp   d
    jp   z,$2818
    add  a,c
    djnz $26F8
    ld   a,(player_sp_x)
    and  a
    jp   z,$2829
    ld   a,(player_sp_y)
    and  a
    jp   z,$283E
    jp   player_stop

 move_player_left:
    ld   a,(player_x)
    cp   $14
    jp   z,$2829
    jp   nc,$2723
    ld   a,$14  ; min $14 x
    ld   (player_x),a
    jp   player_stop_x
    call get_player_tile_pos
    ld   bc,$0002
    push hl
    add  hl,bc
    ld   a,TILE_GAP
    cp   (hl)
    jp   z,$2737
    ld   a,$EF
    cp   (hl)
    jp   c,$273B
    pop  hl
    jp   player_stop_x
    pop  hl
    ld   a,($840B)
    ld   (player_sp_x),a
    ld   a,$00
    ld   (player_sp_y),a
    ld   a,$01
    ld   ($8404),a
    ld   a,$00
    ld   ($8414),a
    ret

 move_player_right:
    ld   a,(player_x)
    cp   $D4
    jp   z,$2829
    jp   c,$2765
    ld   a,$D4  ; max $d4 x
    ld   (player_x),a
    jp   player_stop_x
    call get_player_tile_pos
    ld   bc,$FFC2
    push hl
    add  hl,bc
    ld   a,TILE_GAP
    cp   (hl)
    jp   z,$2779
    ld   a,$EF
    cp   (hl)
    jp   c,$277D
    pop  hl
    jp   player_stop_x
    pop  hl
    ld   a,($840D)
    ld   (player_sp_x),a
    ld   a,$00
    ld   (player_sp_y),a
    ld   a,$02
    ld   ($8404),a
    ld   a,$80
    ld   ($8414),a
    ret

 ;;
 move_player_down:
    ld   a,(player_y)
    cp   $E2
    jp   z,$283E
    jp   c,$27A7
    ld   a,$E2
    ld   (player_y),a
    jp   player_stop_y
    call get_player_tile_pos
    ld   bc,$FFE3
    push hl
    add  hl,bc
    ld   a,TILE_GAP
    cp   (hl)
    jp   z,$27BB
    ld   a,$EF
    cp   (hl)
    jp   c,$27BF
    pop  hl
    jp   player_stop_y
    pop  hl
    ld   a,($840F)
    ld   (player_sp_y),a
    ld   a,$00
    ld   (player_sp_x),a
    ld   a,$04
    ld   ($8404),a
    ld   a,$04
    ld   ($8414),a
    ret

 move_player_up:
    ld   a,(player_y)
    cp   $22
    jp   z,$283E
    jp   nc,$27E9
    ld   a,$22
    ld   (player_y),a
    jp   player_stop_y
    call get_player_tile_pos
    ld   bc,$FFE1
    push hl
    add  hl,bc
    ld   a,TILE_GAP
    cp   (hl)
    jp   z,$27FD
    ld   a,$EF
    cp   (hl)
    jp   c,$2801
    pop  hl
    jp   player_stop_y
    pop  hl
    ld   a,($8411)
    ld   (player_sp_y),a
    ld   a,$00
    ld   (player_sp_x),a
    ld   a,$08
    ld   ($8404),a
    ld   a,$08
    ld   ($8414),a
    ret


 player_stop: ; zero player speed x/y + moving flag $8416
    ld   a,$00
    ld   (player_sp_x),a
    ld   a,$00
    ld   (player_sp_y),a
    ld   a,$00
    ld   ($8416),a
    nop
    ret

 player_stop_x: ; zero player x-speed (checks y-speed)
    ld   a,$00
    ld   (player_sp_x),a
    nop
    ld   a,(player_sp_y)
    and  a
    ret  z
    cp   $80
    jp   c,$2794
    jp   $27D6
    nop
    ret

 player_stop_y: ; zero player y-speed (checks x-speed)
    ld   a,$00
    ld   (player_sp_y),a
    nop
    ld   a,(player_sp_x)
    and  a
    ret  z
    cp   $80
    jp   c,$2752
    jp   $2710
    nop
    ret

 player_commit: ; commit player pos/tile into sprite mirror (checks $8422)
    ld   a,($8422)
    and  a
    jp   nz,$28BB
    ld   a,(player_sp_x)
    ld   b,a
    ld   a,(player_x)
    add  a,b
    ld   (player_x),a
    ld   a,(player_sp_y)
    ld   b,a
    ld   a,(player_y)
    add  a,b
    ld   (player_y),a
    ld   a,($8416)
    and  a
    jp   z,$28BB
    ld   a,($8417)
    inc  a
    bit  0,a
    jp   z,$28AC
    ld   a,($8418)
    inc  a
    and  $03
    ld   ($8418),a
    cp   $00
    jp   nz,$2893
    ld   a,$00
    jp   $28A9
    cp   $01
    jp   nz,$289D
    ld   a,$01
    jp   $28A9
    cp   $02
    jp   nz,$28A7
    ld   a,$02
    jp   $28A9
    ld   a,$03
    ld   ($8415),a
    ld   a,($8414)
    and  $FC
    ld   b,a
    ld   a,($8418)
    and  $03
    or   b
    ld   ($8413),a
    ld   hl,ram_start
    ld   a,(player_x)
    ld   (hl),a
    inc  hl
    ld   a,($8413)
    ld   (hl),a
    inc  hl
    ld   a,($8412)
    ld   (hl),a
    inc  hl
    ld   a,(player_y)
    ld   (hl),a
    ret
    ld   a,(player_y)
    and  $07
    cp   $02
    ret  nz
    ld   a,(player_x)
    and  $07
    cp   $04
    ret  nz
    call get_player_tile_pos
    push hl
    ld   bc,$FFE2
    add  hl,bc
    ld   a,(hl)
    cp   TILE_EXIT_HOLE
    jp   nz,$28F5
    ld   a,$01
    ld   ($842D),a
    pop  hl
    ld   a,($8422)
    and  a
    jp   nz,$2922
    push hl
    call player_enter_hole
    pop  hl
    push hl
    call player_touch_boulder
    pop  hl
    push hl
    call player_trigger_bridge
    pop  hl
    push hl
    call player_trigger_platform
    pop  hl
    push hl
    call food_pickup
    pop  hl
    ld   a,($80E0)
    and  a
    jp   nz,$2922
    push hl
    call player_home_entry
    pop  hl
    ret

 player_touch_boulder: ; player on TILE_BOULDER $39/$3A -> boulder_req $85C1=1
    ld   bc,$FFE1
    add  hl,bc
    ld   a,(hl)
    cp   TILE_BOULDER
    jp   z,$2930
    cp   $3A
    ret  nz
    ld   a,(bomb_placed)
    and  a
    ret  nz
    ld   a,(boulder_req)
    and  a
    ret  nz
    ld   a,$01
    ld   (boulder_req),a
    ld   a,(player_x)
    ld   ($85C2),a
    ld   a,(player_y)
    ld   ($85C3),a
    ret

 player_enter_hole: ; player on $FE -> $841F=4 (enter hole)
    ld   bc,$FFE2
    add  hl,bc
    ld   a,(hl)
    cp   TILE_GAP
    ret  nz
    ld   a,$04
    ld   ($841F),a
    ret

 player_home_entry: ; player on $FF over-hole -> scripted home entry $80E0, $841F=5
    ld   bc,$FFE2
    add  hl,bc
    ld   a,(hl)
    cp   $FF
    ret  nz
    ld   a,($842D)
    and  a
    ret  z
    ld   a,(player_y)
    cp   $70
    jp   nc,$297D
    ld   c,$01
    ld   a,($8414)
    rlca
    jp   nc,$298B
    ld   c,$02
    jp   $298B
    ld   c,$21
    ld   a,($8414)
    rlca
    jp   nc,$298B
    ld   c,$22
    jp   $298B
    ld   a,c
    ld   ($80E0),a
    and  a
    ret  z
    ld   a,$05
    ld   ($841F),a
    ld   a,$01
    ld   ($8422),a
    ld   a,$00
    ld   ($842D),a
    ret
 player_trigger_bridge: ; player on $FC -> bridge subsystem $80C0=1
    ld   bc,$FFE2
    add  hl,bc
    ld   a,(hl)
    cp   $FC
    ret  nz
    ld   a,$01
    ld   ($80C0),a
    ret
 player_trigger_platform: ; player on $F9 -> sliding platform $80A2
    ld   bc,$FFE2
    add  hl,bc
    ld   a,(hl)
    cp   $F9
    ret  nz
    ld   a,(carrying_1)
    and  a
    ret  z
    ld   a,(carrying_3)
    cp   $01
    ret  nz
    ld   a,$02
    ld   (carrying_3),a
    ret
    ld   a,(carrying_1)
    and  a
    ret  nz
    ld   bc,$FFE1
    add  hl,bc
    ld   a,(hl)
    cp   $DC
    ret  c
    cp   $F0
    ret  nc
    ld   c,$02
    call food_set_state
    ld   ($809C),hl
    ld   a,(hl)
    ld   d,$7A
    cp   $E1
    jp   z,$2A1D
    cp   $E3
    jp   z,$2A1D
    ld   d,$7C
    cp   $E5
    jp   z,$2A1D
    cp   $E7
    jp   z,$2A1D
    ld   d,$7E
    cp   $E9
    jp   z,$2A1D
    cp   $EB
    jp   z,$2A1D
    ld   d,$7D
    cp   $ED
    jp   z,$2A1D
    cp   $EF
    jp   z,$2A1D
    ld   d,$7B
    cp   $DD
    jp   z,$2A1D
    cp   $DF
    jp   z,$2A1D
    set  2,h
    ld   e,(hl)
    ld   hl,$809E
    ld   (hl),e
    inc  hl
    ld   (hl),d
    inc  hl
    ld   (hl),$01
    push hl
    push de
    push bc
    push af
    call food_maze_erase
    ld   hl,score_add_trig
    ld   de,$2A4E
    ld   b,$03
    ld   (hl),$01
    inc  hl
    xor  a
    ld   a,(de)
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  hl
    inc  de
    djnz $2A3C
    ld   a,$84
    ld   (watchdog),a
    pop  af
    pop  bc
    pop  de
    pop  hl
    ret
    nop
    ld   (bc),a
    nop

 cat_manager:    ; cats A/B/C
    ld   hl,cat1_ai_init
    ld   a,(hl)
    and  a
    jp   nz,$2A70
    ld   (hl),$01
    ld   hl,cat1_ai_ptr
    ld   bc,$2B5A
    call load_level_ptr
    ld   hl,cat1_ptr2
    ld   bc,$2B28
    call load_level_ptr
    call $2B1F

    ld   hl,$8529
    ld   de,cat1_enable
    ld   bc,$FFEF
    ld   a,(de)
    and  a
    call z,$2AF1
    ld   hl,cat2_ai_init
    ld   a,(hl)
    and  a
    jp   nz,$2A9D
    ld   (hl),$01
    ld   hl,cat2_ai_ptr
    ld   bc,$2BB0
    call load_level_ptr
    ld   hl,cat2_ptr2
    ld   bc,$2B28
    call load_level_ptr
    call $2B1F
    ld   hl,$8569
    ld   de,cat2_enable
    ld   bc,$FFEF ; - 16
    ld   a,(de)
    and  a
    call z,$2AF1
    ld   hl,cat3_ai_init
    ld   a,(hl)
    and  a
    jp   nz,$2ACA
    ld   (hl),$01
    ld   hl,cat3_ai_ptr
    ld   bc,$2C06
    call load_level_ptr
    ld   hl,cat3_ptr2
    ld   bc,$2B28
    call load_level_ptr
    call $2B1F
    ld   hl,$8589
    ld   de,cat3_enable
    ld   bc,$FFEF ; -16
    ld   a,(de)
    and  a
    call z,$2AF1
    ld   hl,cat1_enable
    ld   a,(hl)
    and  a
    call nz,setup_cat_1
    ld   hl,cat2_enable
    ld   a,(hl)
    and  a
    call nz,setup_cat_2
    ld   hl,cat3_enable
    ld   a,(hl)
    and  a
    call nz,setup_cat_3
    ret

 enemy_spawn_gate: ; per-enemy spawn countdown + tile-validity gate
    push bc
    ld   b,(hl)
    dec  hl
    ld   a,(hl)
    or   b
    pop  bc
    jp   nz,$2B13
    add  hl,bc
    ld   a,(hl)
    cp   $03
    jp   nz,$2B0F
    inc  hl
    ld   a,(hl)
    and  $07
    cp   $04
    ret  nz
    inc  hl
    ld   a,(hl)
    and  $07
    cp   $02
    ret  nz
    ld   a,$01
    ld   (de),a
    ret
    ld   a,(hl)
    and  a
    jp   z,$2B1A
    dec  (hl)
    ret
    ld   (hl),$3C
    inc  hl
    dec  (hl)
    ret
    xor  a
    inc  hl
    ld   (hl),a
    ld   bc,$FFE8
    add  hl,bc
    ld   (hl),a
    ret
    inc  a
    ld   a,b
    inc  a
    ld   h,h
    inc  a
    ld   e,d
    inc  a
    ld   b,(hl)
    inc  a
    inc  a
    inc  a
    ld   ($283C),a
    inc  a
    ld   e,$3C
    inc  d
    inc  a
    nop

 setup_cat_1:
    inc  hl
    ld   a,(hl) ; 8501: cat1_active
    and  a
    jp   nz,$2B6E
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ld   (hl),$01
    ld   de,cat1_bytes
    ld   hl,cat1_init_data
    ld   bc,$001D ; 29 bytes
    ldir          ; copy them
    ld   a,$87
    ld   (watchdog),a
    ret

    jr   nc,$2B5E
    jr   nc,$2B60
    jr   nc,$2B62
    inc  (hl)
    ld   bc,$0030
    jr   nc,$2B66
    jr   nc,$2B68
    jr   nc,$2B6A
    djnz $2B6C
    djnz $2B6E
    ld   hl,cat1_state
    call cat_ai
    ret

 cat1_init_data:
     db $00, $00, $00, $05, $1C, $00, $00, $01
     db $B4, $42, $00, $00, $00, $FF, $01, $00
     db $01, $FF, $00, $00, $00, $00, $00, $00
     db $00, $00, $00, $01, $00

 setup_cat_2:
	    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$2BC4
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ld   (hl),$01
    ld   de,cat2_bytes
    ld   hl,cat2_init_data
    ld   bc,$001D ; 29 bytes
    ldir
    ld   a,$87
    ld   (watchdog),a
    ret
    inc  d
    ld   d,$14
    inc  d
    inc  d
    rrca
    inc  d
    dec  c
    nop
    dec  bc
    nop
    add  hl,bc
    jr   $2BC4
    jr   z,$2BC5
    jr   z,$2BC7
    djnz $2BC8
    ld   hl,cat2_state
    call cat_ai
    ret

 cat2_init_data:
    nop
    nop
    nop
    dec  c
    inc  e
    nop
    nop
    ld   bc,$4234
    nop
    nop
    nop
    rst  $38
    ld   bc,$0100
    rst  $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     byte 01
     nop

 setup_cat_3:
    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$2C1A
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ld   (hl),$01
    ld   de,$8570
    ld   hl,cat3_init_data
    ld   bc,$001D
    ldir
    ld   a,$87
    ld   (watchdog),a
    ret
    inc  h
    ld   b,$24
    ld   b,$14
    ld   (bc),a
    nop
    ld   (bc),a
    jr   nc,$2C10
    jr   nc,$2C12
    jr   nc,$2C14
    jr   nc,$2C16
    djnz $2C18
    djnz $2C1A
    ld   hl,cat3_state
    call cat_ai
    ret

 cat3_init_data:
    nop
    nop
    nop
    ld   de,$001C
    nop
    ld   bc,$C234
    nop
    nop
    nop
    rst  $38
    ld   bc,$0100
    rst  $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     byte 01,00
 cat_ai: ; per-enemy state engine (cats)
    push hl
    ex   de,hl
    ld   hl,$0018
    add  hl,de
    ld   d,h
    ld   e,l
    dec  hl
    ld   a,(de)
    and  a
    ld   bc,$FFEA
    call z,$2AF1
    pop  hl
    ld   a,(hl)
    cp   $01
    jp   z,$2C70
    cp   $03
    jp   z,$2CB6
    cp   $04
    jp   z,$30DD
    cp   $05
    jp   z,$311C
    cp   $06
    jp   z,$3150
    cp   $07
    jp   z,$3184
    ret
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ex   de,hl
    ld   b,d
    ld   c,e
    ld   hl,$0013
    add  hl,de
    dec  de
    dec  de
    dec  de
    dec  de
    inc  (hl)
    ld   a,(hl)
    cp   $80
    jp   nc,$2C98
    and  $1F
    cp   $10
    jp   c,$2C92
    call enemy_sprite_commit
    ret
    ld   b,$1F
    call $2CA2
    ret
    inc  hl
    ld   (hl),$00
    ld   a,$03
    ld   (bc),a
    call enemy_sprite_commit
    ret
    ld   a,(de)
    ld   hl,$0005
    add  hl,de
    ex   de,hl
    ld   l,a
    ld   h,$80
    ld   (hl),b
    dec  hl
    ld   a,(de)
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    inc  de
    ld   a,(de)
    ld   (hl),a
    ret
    ex   de,hl
    ld   hl,$0010
    add  hl,de
    ld   a,(hl)
    and  a
    jp   z,$2CC6
    dec  (hl)
    ex   de,hl
    inc  hl
    jp   $2DB5
    inc  de
    ld   bc,$FFFB
    add  hl,bc
    ex   de,hl
    ld   b,$07
    ld   a,$14
    cp   (hl)
    jp   z,$2CDC
    add  a,$20
    djnz $2CD0
    inc  hl
    jp   $2DB4
    inc  hl
    ld   b,$07
    ld   a,$22
    cp   (hl)
    jp   z,$2D49
    add  a,$20
    djnz $2CE1
    jp   $2DB4
 enemy_rand_dir: ; ld a,r random-direction source
    ld   a,r
    and  $03
    cp   $01
    jp   nz,$2CF8
    ld   (hl),$01
    ret
    cp   $02
    jp   nz,$2D00
    ld   (hl),$02
    ret
    cp   $03
    jp   nz,$2D08
    ld   (hl),$04
    ret
    cp   $00
    ret  nz
    ld   (hl),$08
    ret

 ;; enemy_chase: greedily steer this enemy one step toward the player.
 ;; Corrects ONE axis per call, ALTERNATING via the axis-toggle byte at
 ;; record +$12 (catN_axis):
 ;;   toggle == 0 -> compare player game-Y ($8003) vs enemy Y (+$09), set toggle=1
 ;;   toggle != 0 -> compare player game-X ($8000) vs enemy X (+$08), clear toggle
 ;; Templates spawn +$12 = 0, so the FIRST steer after spawn is ALWAYS the Y axis
 ;; (why an enemy on your line beelines: its Y check is always "aligned", and the
 ;;  X check points straight at you). Result = a cardinal bitmask written to the
 ;; direction byte +$0A (catN_dir), consumed by the mover dispatch at $2DF8:
 ;;   Y axis: player below -> $04 (Y+),  player above -> $08 (Y-)
 ;;   X axis: player right -> $02 (X+),  player left  -> $01 (X-);  aligned -> $00
 ;; in: hl = &dir (+$0A), de = &axis-toggle (+$12); $8000/$8003 = player game X/Y
 enemy_chase:    ; steer toward player sprite ($8000/$8003)
    ld   b,d
    ld   c,e
    ld   d,h
    ld   e,l
    dec  de
    ex   de,hl
    ld   a,(bc)           ; axis toggle (+$12)
    and  a
    jp   nz,$2D31         ; toggle set -> do X axis instead
    ld   a,$01
    ld   (bc),a           ; toggle = 1 (next re-steer does X)
    ld   a,($8003)        ; player game-Y
    cp   (hl)             ; vs enemy Y (+$09)
    dec  hl
    ex   de,hl
    jp   z,$2D2E
    jp   c,$2D2B
    ld   (hl),$04         ; dir (+$0A) = $04 : player below -> move Y+
    ret
    ld   (hl),$08         ; dir = $08 : player above -> move Y-
    ret
    ld   (hl),$00         ; aligned on Y -> no move this axis
    ret
    dec  hl
    ld   a,$00
    ld   (bc),a           ; toggle = 0 (next re-steer does Y)
    ld   a,(ram_start)    ; player game-X ($8000)
    cp   (hl)             ; vs enemy X (+$08)
    ex   de,hl
    jp   z,$2D46
    jp   c,$2D43
    ld   (hl),$02         ; dir (+$0A) = $02 : player right -> move X+
    ret
    ld   (hl),$01         ; dir = $01 : player left -> move X-
    ret
    ld   (hl),$00         ; aligned on X -> no move this axis
    ret
    push hl
    ld   bc,$0013
    add  hl,bc
    inc  (hl)
    ld   b,h
    ld   c,l
    pop  hl
    inc  hl
    ld   a,l
    and  $F0
    cp   $10
    jp   nz,$2D6D
 ;; per-enemy "drift" gate (imperfection): re-aim at the player UNLESS the step
 ;; counter (+$1C) hits an excluded value, in which case skip the re-aim and keep
 ;; walking straight. mask/excluded picked by record-addr low nibble ($10 here).
    ld   a,(bc)           ; step counter (+$1C)
    and  $03
    cp   $00
    call nz,enemy_chase   ; (cnt&3)!=0 -> re-aim; ==0 -> drift straight
    ex   de,hl
    ld   hl,$000D
    add  hl,de
    ld   (hl),$30
    jp   $2DB2
    cp   $30
    jp   nz,$2D84
    ld   a,(bc)
    and  $03
    cp   $02
    call nz,enemy_chase
    ex   de,hl
    ld   hl,$000D
    add  hl,de
    ld   (hl),$10
    jp   $2DB2
    cp   $50
    jp   nz,$2D9B
    ld   a,(bc)
    and  $07
    cp   $05
    call nz,enemy_chase
    ex   de,hl
    ld   hl,$000D
    add  hl,de
    ld   (hl),$20
    jp   $2DB2
    cp   $70
    nop
    nop
    nop
    jp   nz,$2D9E
    ld   a,(bc)
    and  $07
    cp   $07
    call nz,enemy_chase
    ex   de,hl
    ld   hl,$000D
    add  hl,de
    ld   (hl),$10
    ex   de,hl
    dec  hl
    dec  hl
    ld   d,h
    ld   e,l
    ld   a,(hl)
    inc  hl
    and  $07
    cp   $04
    jp   nz,$3043
    ld   a,(hl)
    and  $07
    cp   $02
    jp   nz,$3043
    ex   de,hl
    call get_tile_pos
    ld   bc,$FFE2
    add  hl,bc
 cat_water_die:  ; cat on $FE tile -> state 4, splash tile $1C, sound $95
    ld   a,TILE_GAP
    cp   (hl)
    jp   nz,$2DF2
    dec  de
    ld   a,$95
    ld   (watchdog),a
    ld   a,$04
    ld   (de),a
    ld   hl,$0014
    add  hl,de
    ld   (hl),$01
    ld   hl,$FFFD
    add  hl,de
    ld   (hl),$1C
    ld   hl,$0003
    add  hl,de
    ld   (hl),$00
    inc  de
    ex   de,hl
    inc  hl
    ld   d,h
    ld   e,l
    inc  hl
    dec  de
 ;; mover dispatch: consume the direction bitmask (+$0A, catN_dir) set by
 ;; enemy_chase; rrca-chain routes each set bit to its per-direction mover.
    ld   a,(hl)           ; direction bitmask (+$0A)
    rrca
    jp   c,$2EC4          ; bit0 $01 -> X- mover
    rrca
    jp   c,$2F10          ; bit1 $02 -> X+ mover
    rrca
    jp   c,$2F5C          ; bit2 $04 -> Y+ mover
    rrca
    jp   c,$2FAA          ; bit3 $08 -> Y- mover
    ex   de,hl
    ld   hl,$FFFC
    add  hl,de
    dec  (hl)
    ex   de,hl
    inc  hl
    inc  hl
    ld   a,$00
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    ld   (hl),a
    jp   $305D
    inc  de
    inc  de
    ld   a,(de)
    cp   $03
    jp   nc,$2E74
    ld   a,r
    and  $0F
    cp   $02
    jp   c,$2E44
    cp   $09
    ld   a,$EF
    jp   c,$2E61
    ld   hl,$FFE1
    add  hl,bc
    cp   (hl)
    jp   c,$2E5B
    ld   hl,$FFE3
    add  hl,bc
    cp   (hl)
    jp   c,$2E55
    ex   de,hl
    ld   a,(hl)
    cp   $01
    jp   z,$2E50
    ld   (hl),$01
    jp   $2E09
    ld   (hl),$02
    jp   $2E09
    ex   de,hl
    ld   (hl),$04
    jp   $2E09
    ex   de,hl
    ld   (hl),$08
    jp   $2E09
    ld   hl,$FFE3
    add  hl,bc
    cp   (hl)
    jp   c,$2E55
    ld   hl,$FFE1
    add  hl,bc
    cp   (hl)
    jp   c,$2E5B
    jp   $2E44
    ld   a,r
    and  $0F
    cp   $02
    jp   c,$2E94
    cp   $09
    ld   a,$EF
    jp   c,$2EB1
    ld   hl,$FFC2
    add  hl,bc
    cp   (hl)
    jp   c,$2EA5
    ld   hl,$0002
    add  hl,bc
    cp   (hl)
    jp   c,$2EAB
    ex   de,hl
    ld   a,(hl)
    cp   $04
    jp   z,$2EA0
    ld   (hl),$04
    jp   $2E09
    ld   (hl),$08
    jp   $2E09
    ex   de,hl
    ld   (hl),$02
    jp   $2E09
    ex   de,hl
    ld   (hl),$01
    jp   $2E09
    ld   hl,$0002
    add  hl,bc
    cp   (hl)
    jp   c,$2EAB
    ld   hl,$FFC2
    add  hl,bc
    cp   (hl)
    jp   c,$2EA5
    jp   $2E94
    inc  hl
    ld   (hl),$00 ; set cat 0 (what dir is that?)
    inc  hl
    ld   a,(de)
    cp   $0C
    jp   z,$2E09
    jp   nc,$2ED7
    ld   a,$0C
    ld   (de),a
    jp   $2E09
    inc  de
    call get_tile_pos
    ld   b,h
    ld   c,l
    ld   hl,$0002
    add  hl,bc
    ld   a,$EF
    cp   (hl)
    jp   nc,$2E1C
    ld   hl,$000D
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call check_tile_wall
    and  a
    jp   nz,$2EFC
    ld   hl,$0002
    call check_tile_wall
    ld   hl,$FFF7
    add  hl,de
    ld   d,h
    ld   e,l
    inc  de
    ld   a,(de)
    ld   (hl),a
    ld   a,$00
    inc  de
    inc  de
    ld   (de),a
    ld   hl,$0006
    jp   $304B
    inc  hl
    ld   (hl),$80 ; set cat x80 (what's that?!)
    inc  hl
    ld   a,(de)
    cp   $E4
    jp   z,$2E09
    jp   c,$2F23
    ld   a,$E4
    ld   (de),a
    jp   $2E09
    inc  de
    call get_tile_pos
    ld   b,h
    ld   c,l
    ld   hl,$FFC2
    add  hl,bc
    ld   a,$EF
    cp   (hl)
    jp   nc,$2E1C
    ld   hl,$000D
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call check_tile_wall
    and  a
    jp   nz,$2F48
    ld   hl,$FFC2
    call check_tile_wall
    ld   hl,$FFF7
    add  hl,de
    ld   d,h
    ld   e,l
    inc  de
    inc  de
    ld   a,(de)
    ld   (hl),a
    ld   a,$00
    inc  de
    ld   (de),a
    ld   hl,$0006
    jp   $304B
    inc  hl
    ld   (hl),$04 ; set cat down
    inc  hl
    inc  de
    ld   a,(de)
    cp   $EC
    jp   z,$2E09
    jp   c,$2F70
    ld   a,$E4
    ld   (de),a
    jp   $2E09
    call get_tile_pos
    ld   b,h
    ld   c,l
    ld   hl,$FFE3
    add  hl,bc
    ld   a,$EF
    cp   (hl)
    jp   nc,$2E1C
    ld   hl,$000D
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call check_tile_wall
    and  a
    jp   nz,$2F94
    ld   hl,$FFE3
    call check_tile_wall
    ld   hl,$FFF7
    add  hl,de
    ld   a,$00
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    ld   d,h
    ld   e,l
    inc  de
    ld   a,(de)
    ld   (hl),a
    ex   de,hl
    ld   hl,$0006
    jp   $304B
    inc  hl
    ld   (hl),$08 ; set cat up
    inc  hl
    inc  de
    ld   a,(de)
    cp   $14
    jp   z,$2E09
    jp   nc,$2FBE
    ld   a,$14
    ld   (de),a
    jp   $2E09
    call get_tile_pos
    ld   b,h
    ld   c,l
    ld   hl,$FFE1
    add  hl,bc
    ld   a,$EF
    cp   (hl)
    jp   nc,$2E1C
    ld   hl,$000D
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call check_tile_wall
    and  a
    jp   nz,$2FE2
    ld   hl,$FFE1
    call check_tile_wall
    ld   hl,$FFF7
    add  hl,de
    ld   a,$00
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    ld   d,h
    ld   e,l
    inc  de
    inc  de
    ld   a,(de)
    ld   (hl),a
    ex   de,hl
    ld   hl,$0006
    jp   $304B
    ld   a,(hl)
    cp   $01
    jp   nz,$3002

 ;;; ============ start of suprmous.x4 (plus 1 byte!)  =============

    ld   (hl),$02
    ret
    cp   $FF
    ret  nz
    ld   (hl),$FE
    ret
    ld   a,(hl)
    cp   $02
    jp   nz,$3011
    ld   (hl),$01
    ret
    cp   TILE_GAP
    ret  nz
    ld   (hl),$FF
    ret
    nop
    nop
    nop
    nop
    dec  hl
    dec  hl
    dec  hl
    inc  de
    ld   a,(de)
    and  $03
    and  a
    jp   nz,$3028
    ld   a,$03
    dec  a
    ld   (de),a
    cp   $01
    jp   nz,$3039
    call $2FF9
    inc  hl
    inc  hl
    inc  hl
    call $2FF9
    ret
    call $3008
    inc  hl
    inc  hl
    inc  hl
    call $3008
    ret
    ld   hl,$0007
    add  hl,de
    ex   de,hl
    ld   hl,$0006
    add  hl,de
    ex   de,hl
    ld   b,h
    ld   c,l
    ld   hl,$0010
    add  hl,bc
    ld   a,(hl)
    ld   h,b
    ld   l,c
    and  a
    call nz,$3017
    nop
    nop
    nop
    nop
    nop
    nop
    ld   d,h
    ld   e,l
    ld   bc,$FFFA
    add  hl,bc
    ld   a,(de)
    add  a,(hl)
    ld   (hl),a
    dec  de
    dec  de
    dec  de
    dec  hl
    ld   a,(de)
    add  a,(hl)
    ld   (hl),a
    dec  hl
    dec  hl
    ld   a,(hl)
    inc  a
    and  $07
    ld   (hl),a
    cp   $04
    jp   c,$3081
    ld   (hl),$00
    dec  hl
    inc  (hl)
    inc  hl
    dec  hl
    dec  de
    call $308A
    call enemy_sprite_commit
    ret


    ld   a,(hl)
    and  $03
    ld   b,a
    ld   a,(de)
    and  $CC
    ld   c,a
    dec  hl
    ld   a,(hl)
    and  $30
    or   b
    or   c
    ld   (hl),a
    ex   de,hl
    dec  de
    ret


 enemy_sprite_commit: ; write enemy Y/tile/color/X into its sprite mirror slot
    ld   a,(de)
    ld   l,a
    ld   h,$80
    inc  de
    ld   a,(de)
    ld   (hl),a
    inc  de
    inc  de
    inc  de
    inc  de
    dec  hl
    ld   a,(de)
    ld   (hl),a
    inc  hl
    inc  hl
    ld   (hl),$06
    inc  hl
    inc  de
    ld   a,(de)
    ld   (hl),a
    ret

 ;; in: de = x, de-1 = y
 ;; out: hl = screen pos of entity
 get_tile_pos:
    ld   a,(de)
    rrca
    rrca
    rrca
    and  $1F
    ld   l,a
    dec  de
    ld   a,(de)
    neg
    rlca
    rlca
    ld   h,a
    and  $E0
    or   l
    ld   l,a
    ld   a,h
    and  $03
    ld   h,a
    ld   a,$90
    add  a,h
    ld   h,a
    ret


 check_tile_wall: ; (de)=1 if tile at (hl+bc)==$F4 (wall) else 0
    add  hl,bc
    ld   a,$F4
    cp   (hl)
    jp   z,$30D9
    ld   a,$00
    ld   (de),a
    ret
    ld   a,$01
    ld   (de),a
    ret


    ex   de,hl
    ld   hl,$FFF9
    add  hl,de
    inc  (hl)
    ld   a,(hl)
    cp   $10
    jp   c,$3113
    jp   z,$30FE
    and  $07
    cp   $00
    jp   nz,$3104
    ld   hl,$FFFD
    add  hl,de
    ld   a,$80
    add  a,(hl)
    ld   (hl),a
    jp   $3104
    ld   hl,$FFFD
    add  hl,de
    ld   (hl),$5C
    ld   h,d
    ld   l,e
    inc  hl
    inc  hl
    ld   a,(hl)
    add  a,$02
    cp   $E0
    jp   c,$3112
    ld   a,$E0
    ld   (hl),a
    ld   hl,$FFFC
    add  hl,de
    ex   de,hl
    call enemy_sprite_commit
    ret

    ex   de,hl
    ld   hl,$FFFA
    add  hl,de
    inc  (hl)
    ld   a,(hl)
    inc  hl
    inc  hl
    inc  hl
    cp   $01
    jp   nz,$312D
    ld   (hl),$5D
    cp   $08
    jp   nz,$3134
    ld   (hl),$31
    cp   $14
    jp   nz,$313B
    ld   (hl),$30
    cp   $20
    jp   nz,$3142
    ld   (hl),$2A
    cp   $80
    jp   c,$314A
    ld   a,$07
    ld   (de),a
    ex   de,hl
    dec  de
    call enemy_sprite_commit
    ret
    ex   de,hl
    ld   hl,$FFFA
    add  hl,de
    inc  (hl)
    ld   a,(hl)
    inc  hl
    inc  hl
    inc  hl
    cp   $01
    jp   nz,$3161
    ld   (hl),$1C
    cp   $08
    jp   nz,$3168
    ld   (hl),$1D
    cp   $14
    jp   nz,$316F
    ld   (hl),$1E
    cp   $20
    jp   nz,$3176
    ld   (hl),$2A
    cp   $80
    jp   c,$317E
    ld   a,$07
    ld   (de),a
    ex   de,hl
    dec  de
    call enemy_sprite_commit
    ret
    ld   c,$00
    inc  hl
    ld   (hl),c
    inc  hl
    ld   (hl),c
    ld   d,h
    ld   a,l
    cp   $19
    jp   nz,$3195
    ld   e,c
    jp   $31B4
    cp   $39
    jp   nz,$319F
    ld   e,$02
    jp   $31B4
    cp   $59
    jp   nz,$31A9
    ld   e,$04
    jp   $31B4
    cp   $79
    jp   z,$31B2
    nop
    jp   $31AE
    ld   e,$06
    ex   de,hl
    ld   (hl),c
    inc  hl
    ld   (hl),c
    ex   de,hl
    ld   de,$FFFA
    add  hl,de
    ex   de,hl
    ld   hl,$0015
    ld   bc,$31EF
    add  hl,de
    call load_level_ptr
    call enemy_sprite_commit
    ret

    nop
    nop
    nop

 load_level_ptr: ; load level-indexed 16-bit table ptr into enemy record
    push hl
    ld   h,b
    ld   l,c
    ld   a,(cur_map)
    cp   $09
    jp   c,$31DC
    ld   a,$09
    and  a
    jp   z,$31E5
    ld   b,a
    inc  hl
    inc  hl
    djnz $31E1
    ld   c,(hl)
    inc  hl
    ld   b,(hl)
    pop  hl
    ld   (hl),c
    inc  hl
    ld   (hl),b
    ret


    nop
    nop
    nop
    ex   af,af' ; '
    inc  d
    inc  b
    nop
    inc  b
    nop
    inc  b
    inc  d
    inc  bc
    inc  d
    inc  bc
    inc  d
    inc  bc
    inc  d
    ld   (bc),a
    inc  d
    ld   (bc),a
    inc  d
    ld   (bc),a
    nop
    nop
    nop

 snake_mgr:      ; snakes A/B
    nop
    nop
    nop
    ld   hl,snake1_ai_init
    ld   a,(hl)
    and  a
    jp   nz,$321C
    ld   (hl),$01
    ld   hl,snake1_dly_ptr
    ld   bc,spawn_delay_sa
    call snake_spawn_delay
    ld   de,snake1_enable
    ld   hl,$8629
    ld   a,(de)
    and  a
    call z,$3256
    ld   hl,snake2_ai_init
    ld   a,(hl)
    and  a
    jp   nz,$323A
    ld   (hl),$01
    ld   hl,snake2_dly_ptr
    ld   bc,spawn_delay_sb
    call snake_spawn_delay
    ld   de,$8602
    ld   hl,$8649
    ld   a,(de)
    and  a
    call z,$3256
    ld   hl,snake1_enable
    ld   a,(hl)
    and  a
    call nz,setup_snake1
    ld   hl,$8602
    ld   a,(hl)
    and  a
    call nz,setup_snake2
    ret

    ld   b,(hl)
    dec  hl
    ld   a,(hl)
    or   b
    jp   nz,$3261
    ld   a,$01
    ld   (de),a
    ret
    ld   a,(hl)
    and  a
    jp   z,$3268
    dec  (hl)
    ret
    ld   (hl),$FF
    inc  hl
    dec  (hl)
    ret

 setup_snake1:
    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$328B
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ld   (hl),$01
    ld   de,snake1_bytes
    ld   hl,snake1_init_data
    ld   bc,$0020
    ldir
    ld   a,$86
    ld   (watchdog),a
    ret
    ld   hl,snake1_state
    call snake_ai
    ret

 snake1_init_data: ; ldir'd to snake A record $8610 (32 = $20 bytes): +07 state=1(appear), +04 code=$2C, +08 X=$B4, +09 Y=$C2, +1B busy=1
    db   $00, $00, $00, $15, $2C, $00, $00, $01
    db   $B4, $C2, $00, $00, $00, $FF, $01, $00
    db   $01, $FF, $00, $00, $00, $00, $00, $00
    db   $00, $00, $00, $01, $00, $00, $00, $00

 setup_snake2:
    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$32D0
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ld   (hl),$01
    ld   de,snake2_bytes
    ld   hl,snake2_init_data
    ld   bc,$0020 ; 32 bytes
    ldir
    ld   a,$86
    ld   (watchdog),a
    ret
    ld   hl,snake2_state
    call snake_ai
    ret

 snake2_init_data: ; ldir'd to snake B record $8630 (32 = $20 bytes): +07 state=1(appear), +04 code=$2C, +08 X=$B4, +09 Y=$C2, +1B busy=1
    db   $00, $00, $00, $19, $2C, $00, $00, $01
    db   $B4, $C2, $00, $00, $00, $FF, $01, $00
    db   $01, $FF, $00, $00, $00, $00, $00, $00
    db   $00, $00, $00, $01, $00, $00, $00, $00

 snake_spawn_delay: ; level-indexed snake spawn-delay lookup (spawn_delay_sa/sb)
    push hl
    ld   h,b
    ld   l,c
    ld   a,(cur_map)
    cp   $09
    jp   c,$3304
    ld   a,$09
    and  a
    jp   z,$330D
    ld   b,a
    inc  hl
    inc  hl
    djnz $3309
    ld   c,(hl)
    inc  hl
    ld   b,(hl)
    pop  hl
    ld   (hl),c
    inc  hl
    ld   (hl),b
    ret

 spawn_delay_sa: ; level-indexed spawn-delay table (snake A)
    db   $30, $01   ; level 0: delay $0130
    db   $00, $01   ; level 1: delay $0100
    db   $B0, $00   ; level 2: delay $00B0
    db   $70, $00   ; level 3: delay $0070
    db   $30, $00   ; level 4: delay $0030
    db   $30, $00   ; level 5: delay $0030
    db   $30, $00   ; level 6: delay $0030
    db   $30, $00   ; level 7: delay $0030
    db   $30, $00   ; level 8: delay $0030
    db   $00, $00   ; level 9: delay $0000
    db   $00, $00   ; (padding, index clamps to level 9)

 spawn_delay_sb: ; level-indexed spawn-delay table (snake B)
    db   $90, $03   ; level 0: delay $0390
    db   $20, $03   ; level 1: delay $0320
    db   $E0, $02   ; level 2: delay $02E0
    db   $A0, $02   ; level 3: delay $02A0
    db   $60, $02   ; level 4: delay $0260
    db   $40, $02   ; level 5: delay $0240
    db   $20, $02   ; level 6: delay $0220
    db   $D0, $01   ; level 7: delay $01D0
    db   $90, $01   ; level 8: delay $0190
    db   $50, $00   ; level 9: delay $0050

 snake_ai:   ; per-enemy state engine (snakes)
    ld   a,(hl)
    cp   $01
    jp   z,$335F
    cp   $03
    jp   z,$33A5
    cp   $04
    jp   z,$381B
    cp   $05
    jp   z,$385A
    cp   $06
    jp   z,$388E
    cp   $07
    jp   z,$38C2
    ret
    ld   a,(endlevel_active)
    and  a
    ret  nz
    ex   de,hl
    ld   b,d
    ld   c,e
    ld   hl,$0013
    add  hl,de
    dec  de
    dec  de
    dec  de
    dec  de
    inc  (hl)
    ld   a,(hl)
    cp   $80
    jp   nc,$3387
    and  $1F
    cp   $10
    jp   c,$3381
    call $37B3
    ret
    ld   b,$2F
    call $3391
    ret
    inc  hl
    ld   (hl),$00
    ld   a,$03
    ld   (bc),a
    call $37B3
    ret
    ld   a,(de)
    ld   hl,$0005
    add  hl,de
    ex   de,hl
    ld   l,a
    ld   h,$80
    ld   (hl),b
    dec  hl
    ld   a,(de)
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    inc  de
    ld   a,(de)
    ld   (hl),a
    ret
    ex   de,hl
    ld   hl,$0010
    add  hl,de
    ld   a,(hl)
    and  a
    jp   z,$33B5
    dec  (hl)
    ex   de,hl
    inc  hl
    jp   $349A
    inc  de
    ld   bc,$FFFB
    add  hl,bc
    ex   de,hl
    ld   b,$07
    ld   a,$14
    cp   (hl)
    jp   z,$33CB
    add  a,$20
    djnz $33BF
    inc  hl
    jp   $3499
    inc  hl
    ld   b,$07
    ld   a,$22
    cp   (hl)
    jp   z,$344B
    add  a,$20
    djnz $33D0
    jp   $3499
    ld   a,r
    and  $03
    cp   $01
    jp   nz,$33E7
    ld   (hl),$01
    ret
    cp   $02
    jp   nz,$33EF
    ld   (hl),$02
    ret
    cp   $03
    jp   nz,$33F7
    ld   (hl),$04
    ret
    cp   $00
    ret  nz
    ld   (hl),$08
    ret
    ld   b,d
    ld   c,e
    ld   d,h
    ld   e,l
    dec  de
    ex   de,hl
    ld   a,(bc)
    inc  a
    cp   $09
    jp   c,$340C
    ld   a,$00
    ld   (bc),a
    cp   $01
    jp   z,$3436
    cp   $03
    jp   z,$3436
    cp   $04
    jp   z,$3436
    cp   $06
    jp   z,$3436
    ld   a,($8003)
    cp   (hl)
    dec  hl
    ex   de,hl
    jp   z,$3433
    jp   c,$3430
    ld   (hl),$04
    ret
    ld   (hl),$08
    ret
    ld   (hl),$00
    ret
    dec  hl
    ld   a,(ram_start)
    cp   (hl)
    ex   de,hl
    jp   z,$3448
    jp   c,$3445
    ld   (hl),$02
    ret
    ld   (hl),$01
    ret
    ld   (hl),$00
    ret
    push hl
    ld   bc,$0013
    add  hl,bc
    inc  (hl)
    ld   b,h
    ld   c,l
    pop  hl
    inc  hl
    ld   a,l
    and  $F0
    cp   $10
    jp   nz,$347B
    ld   a,(bc)
    push af
    and  $03
    cp   $00
    call nz,$33FD
    ex   de,hl
    ld   hl,$000D
    add  hl,de
    pop  af
    bit  4,a
    jp   z,$3476
    ld   (hl),$30
    jp   $3497
    ld   (hl),$10
    jp   $3497
    cp   $30
    nop
    nop
    nop
    jp   nz,$347E
    ld   a,(bc)
    push af
    and  $03
    cp   $02
    call nz,$33FD
    ex   de,hl
    ld   hl,$000D
    add  hl,de
    pop  af
    add  a,$18
    jp   $346C
    ex   de,hl
    dec  hl
    dec  hl
    ld   d,h
    ld   e,l
    ld   a,(hl)
    inc  hl
    and  $07
    cp   $04
    jp   nz,$3710
    ld   a,(hl)
    and  $07
    cp   $02
    jp   nz,$3710
    ex   de,hl
    call $37CA
    ld   bc,$FFE2
    add  hl,bc
    ld   a,TILE_GAP
    cp   (hl)
    jp   nz,$34D7
    dec  de
    ld   a,$95
    ld   (watchdog),a
    ld   a,$04
    ld   (de),a
    ld   hl,$0014
    add  hl,de
    ld   (hl),$01
    ld   hl,$FFFD
    add  hl,de
    ld   (hl),$2C
    ld   hl,$0003
    add  hl,de
    ld   (hl),$00
    inc  de
    ex   de,hl
    inc  hl
    ld   d,h
    ld   e,l
    inc  hl
    dec  de
    ld   a,(hl)
    rrca
    jp   c,$359F
    rrca
    jp   c,$35FA
    rrca
    jp   c,$3655
    rrca
    jp   c,$36B2
    ex   de,hl
    ld   hl,$FFFC
    add  hl,de
    dec  (hl)
    ex   de,hl
    inc  hl
    inc  hl
    ld   a,$00
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    ld   (hl),a
    jp   $3774
    inc  de
    inc  de
    ld   a,(de)
    cp   $03
    jp   nc,$3554
    ld   a,r
    and  $0F
    cp   $09
    ld   a,$DF
    jp   c,$3541
    ld   hl,$FFE1
    add  hl,bc
    cp   (hl)
    jp   c,$353B
    ld   hl,$FFE3
    add  hl,bc
    cp   (hl)
    jp   c,$3535
    ex   de,hl
    ld   a,(hl)
    cp   $01
    jp   z,$3530
    ld   (hl),$01
    jp   $34EE
    ld   (hl),$02
    jp   $34EE
    ex   de,hl
    ld   (hl),$04
    jp   $34EE
    ex   de,hl
    ld   (hl),$08
    jp   $34EE
    ld   hl,$FFE3
    add  hl,bc
    cp   (hl)
    jp   c,$3535
    ld   hl,$FFE1
    add  hl,bc
    cp   (hl)
    jp   c,$353B
    jp   $3524
    ld   a,r
    and  $0F
    cp   $09
    ld   a,$DF
    jp   c,$358C
    ld   hl,$FFC2
    add  hl,bc
    cp   (hl)
    jp   c,$3580
    ld   hl,$0002
    add  hl,bc
    cp   (hl)
    jp   c,$3586
    ex   de,hl
    ld   a,(hl)
    cp   $04
    jp   z,$357B
    ld   (hl),$04
    jp   $34EE
    ld   (hl),$08
    jp   $34EE
    ex   de,hl
    ld   (hl),$02
    jp   $34EE
    ex   de,hl
    ld   (hl),$01
    jp   $34EE
    ld   hl,$0002
    add  hl,bc
    cp   (hl)
    jp   c,$3586
    ld   hl,$FFC2
    add  hl,bc
    cp   (hl)
    jp   c,$3580
    jp   $356F
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   a,(de)
    cp   $0C
    jp   z,$34EE
    jp   nc,$35B2
    ld   a,$0C
    ld   (de),a
    jp   $34EE
    inc  de
    call $37CA
    ld   b,h
    ld   c,l
    ld   hl,$0002
    add  hl,bc
    ld   a,$DF
    cp   (hl)
    jp   nc,$3501
    ld   hl,$000B
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call $37E5
    and  a
    jp   nz,$35D7
    ld   hl,$0002
    call $37E5
    inc  de
    inc  de
    ld   hl,$FFE2
    call $380C
    and  a
    jp   nz,$35E9
    ld   hl,$0002
    call $380C
    ld   hl,$FFF7
    add  hl,de
    ld   d,h
    ld   e,l
    inc  de
    ld   a,(de)
    ld   (hl),a
    ld   a,$00
    inc  de
    inc  de
    ld   (de),a
    jp   $3722
    inc  hl
    ld   (hl),$80
    inc  hl
    ld   a,(de)
    cp   $E4
    jp   z,$34EE
    jp   c,$360D
    ld   a,$E4
    ld   (de),a
    jp   $34EE
    inc  de
    call $37CA
    ld   b,h
    ld   c,l
    ld   hl,$FFC2
    add  hl,bc
    ld   a,$DF
    cp   (hl)
    jp   nc,$3501
    ld   hl,$000B
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call $37E5
    and  a
    jp   nz,$3632
    ld   hl,$FFC2
    call $37E5
    inc  de
    inc  de
    ld   hl,$FFE2
    call $380C
    and  a
    jp   nz,$3644
    ld   hl,$FFC2
    call $380C
    ld   hl,$FFF7
    add  hl,de
    ld   d,h
    ld   e,l
    inc  de
    inc  de
    ld   a,(de)
    ld   (hl),a
    ld   a,$00
    inc  de
    ld   (de),a
    jp   $3722
    inc  hl
    ld   (hl),$04
    inc  hl
    inc  de
    ld   a,(de)
    cp   $EC
    jp   z,$34EE
    jp   c,$3669
    ld   a,$EC
    ld   (de),a
    jp   $34EE
    call $37CA
    ld   b,h
    ld   c,l
    ld   hl,$FFE3
    add  hl,bc
    ld   a,$DF
    cp   (hl)
    jp   nc,$3501
    ld   hl,$000B
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call $37E5
    and  a
    jp   nz,$368D
    ld   hl,$FFE3
    call $37E5
    inc  de
    inc  de
    ld   hl,$FFE2
    call $380C
    and  a
    jp   nz,$369F
    ld   hl,$FFE3
    call $380C
    ld   hl,$FFF7
    add  hl,de
    ld   a,$00
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    ld   d,h
    ld   e,l
    inc  de
    ld   a,(de)
    ld   (hl),a
    ex   de,hl
    jp   $3722
    inc  hl
    ld   (hl),$44
    inc  hl
    inc  de
    ld   a,(de)
    cp   $14
    jp   z,$34EE
    jp   nc,$36C6
    ld   a,$14
    ld   (de),a
    jp   $34EE
    call $37CA
    ld   b,h
    ld   c,l
    ld   hl,$FFE1
    add  hl,bc
    ld   a,$DF
    cp   (hl)
    jp   nc,$3501
    ld   hl,$000B
    add  hl,de
    ex   de,hl
    ld   hl,$FFE2
    call $37E5
    and  a
    jp   nz,$36EA
    ld   hl,$FFE1
    call $37E5
    inc  de
    inc  de
    ld   hl,$FFE2
    call $380C
    and  a
    jp   nz,$36FC
    ld   hl,$FFE1
    call $380C
    ld   hl,$FFF7
    add  hl,de
    ld   a,$00
    ld   (hl),a
    inc  hl
    inc  hl
    inc  hl
    ld   d,h
    ld   e,l
    inc  de
    inc  de
    ld   a,(de)
    ld   (hl),a
    ex   de,hl
    jp   $3722
    ld   hl,$0007
    add  hl,de
    ex   de,hl
    ld   hl,$000E
    add  hl,de
    ld   b,h
    ld   c,l
    ld   hl,$0005
    add  hl,de
    jp   $3730
    ld   hl,$000E
    add  hl,de
    ld   b,h
    ld   c,l
    ld   (hl),$00
    ld   hl,$0005
    add  hl,de
    ld   (hl),$00
    ex   de,hl
    dec  de
    ld   a,(de)
    and  a
    jp   z,$3745
    inc  de
    ld   a,(de)
    inc  a
    and  $03
    ld   (de),a
    cp   $01
    jp   z,$3774
    jp   $3768
    inc  de
    inc  de
    ld   a,(de)
    and  a
    jp   z,$3759
    ld   a,(bc)
    inc  a
    and  $01
    ld   (bc),a
    cp   $01
    jp   z,$3774
    jp   $3768
    ld   a,(bc)
    inc  a
    and  $07
    ld   (bc),a
    cp   $03
    jp   z,$3768
    cp   $05
    jp   nz,$3774
    ld   d,h
    ld   e,l
    ld   hl,$FFF9
    add  hl,de
    dec  de
    dec  de
    dec  de
    jp   $3787
    nop
    nop
    nop
    ld   d,h
    ld   e,l
    ld   bc,$FFFA
    add  hl,bc
    ld   a,(de)
    add  a,(hl)
    ld   (hl),a
    dec  de
    dec  de
    dec  de
    dec  hl
    ld   a,(de)
    add  a,(hl)
    ld   (hl),a
    dec  hl
    dec  hl
    ld   a,(hl)
    inc  a
    and  $07
    ld   (hl),a
    cp   $04
    jp   c,$3798
    ld   (hl),$00
    dec  hl
    inc  (hl)
    inc  hl
    dec  hl
    dec  de
    call $37A1
    call $37B3
    ret
    ld   a,(hl)
    and  $03
    ld   b,a
    ld   a,(de)
    and  $CC
    ld   c,a
    dec  hl
    ld   a,(hl)
    and  $30
    or   b
    or   c
    ld   (hl),a
    ex   de,hl
    dec  de
    ret
    ld   a,(de)
    ld   l,a
    ld   h,$80
    inc  de
    ld   a,(de)
    ld   (hl),a
    inc  de
    inc  de
    inc  de
    inc  de
    dec  hl
    ld   a,(de)
    ld   (hl),a
    inc  hl
    inc  hl
    ld   (hl),$06
    inc  hl
    inc  de
    ld   a,(de)
    ld   (hl),a
    ret


    ld   a,(de)
    rrca
    rrca
    rrca
    and  $1F
    ld   l,a
    dec  de
    ld   a,(de)
    neg
    rlca
    rlca
    ld   h,a
    and  $E0
    or   l
    ld   l,a
    ld   a,h
    and  $03
    ld   h,a
    ld   a,$90
    add  a,h
    ld   h,a
    ret


    add  hl,bc
    ld   a,$E1
    cp   (hl)
    jp   z,$3808
    ld   a,$E2
    cp   (hl)
    jp   z,$3808
    ld   a,$E3
    cp   (hl)
    jp   z,$3808
    ld   a,$E4
    cp   (hl)
    jp   z,$3808
    nop
    nop
    nop
    nop
    nop
    nop
    ld   a,$00
    ld   (de),a
    ret
    ld   a,$01
    ld   (de),a
    ret
    add  hl,bc
    ld   a,$E0
    cp   (hl)
    jp   z,$3817
    ld   a,$00
    ld   (de),a
    ret
    ld   a,$01
    ld   (de),a
    ret
    ex   de,hl
    ld   hl,$FFF9
    add  hl,de
    inc  (hl)
    ld   a,(hl)
    cp   $10
    jp   c,$3851
    jp   z,$383C
    and  $07
    cp   $00
    jp   nz,$3842
    ld   hl,$FFFD
    add  hl,de
    ld   a,$80
    add  a,(hl)
    ld   (hl),a
    jp   $3842
    ld   hl,$FFFD
    add  hl,de
    ld   (hl),$24
    ld   h,d
    ld   l,e
    inc  hl
    inc  hl
    ld   a,(hl)
    add  a,$02
    cp   $E0
    jp   c,$3850
    ld   a,$E0
    ld   (hl),a
    ld   hl,$FFFC
    add  hl,de
    ex   de,hl
    call $37B3
    ret
    ex   de,hl
    ld   hl,$FFFA
    add  hl,de
    inc  (hl)
    ld   a,(hl)
    inc  hl
    inc  hl
    inc  hl
    cp   $01
    jp   nz,$386B
    ld   (hl),$2D
    cp   $08
    jp   nz,$3872
    ld   (hl),$31
    cp   $14
    jp   nz,$3879
    ld   (hl),$30
    cp   $20
    jp   nz,$3880
    ld   (hl),$2B
    cp   $80
    jp   c,$3888
    ld   a,$07
    ld   (de),a
    ex   de,hl
    dec  de
    call $37B3
    ret
    ex   de,hl
    ld   hl,$FFFA
    add  hl,de
    inc  (hl)
    ld   a,(hl)
    inc  hl
    inc  hl
    inc  hl
    cp   $01
    jp   nz,$389F
    ld   (hl),$2C
    cp   $08
    jp   nz,$38A6
    ld   (hl),$2D
    cp   $14
    jp   nz,$38AD
    ld   (hl),$2E
    cp   $20
    jp   nz,$38B4
    ld   (hl),$2B
    cp   $80
    jp   c,$38BC
    ld   a,$07
    ld   (de),a
    ex   de,hl
    dec  de
    call $37B3
    ret
    ld   c,$00
    inc  hl
    ld   (hl),c
    inc  hl
    ld   (hl),c
    ld   d,h
    ld   a,l
    cp   $19
    jp   nz,$38D3
    ld   e,c
    jp   $38F2
    cp   $39
    jp   nz,$38DD
    ld   e,$02
    jp   $38F2
    cp   $59
    jp   nz,$38E7
    ld   e,$04
    jp   $38F2
    cp   $79
    jp   z,$38F0
    nop
    jp   $38EC
    ld   e,$06
    ex   de,hl
    ld   (hl),c
    inc  hl
    ld   (hl),c
    ex   de,hl
    ld   de,$FFFA
    add  hl,de
    ex   de,hl
    ld   bc,$3910
    ld   hl,$0015
    add  hl,de
    call snake_spawn_delay
    call $37B3
    ret
 ;; some data?
    nop
    nop
    nop
    nop
    nop
    nop
    ld   (hl),b
    ld   (bc),a
    ld   (hl),b
    ld   bc,$00F0
    ret  p
    nop
    ret  p
    nop
    ret  p
    nop
    ret  p
    nop
    ret  p
    nop
    ret  p
    nop
    ret  p
    nop
    nop
    nop
    nop
    nop
    nop
    nop

 player_vs_enemy:    ; AABB player sprite vs each enemy -> player death
    ld   a,(int_enable)
    and  $80
    ret  nz
    ld   a,($841F)
    cp   $01
    ret  nz
    ld   a,(endlevel_active)
    and  a
    ret  nz
    call player_vs_catA
    call player_vs_catB
    call player_vs_catC
    call player_vs_snakeA
    call player_vs_snakeB
    ret

 enemy_eaten_sm: ; enemy death/return-home driver, award escalating points
    call return_catA
    call return_catB
    call return_catC
    call return_snakeA
    call return_snakeB
    call boulder_squash
    ret

    ld   a,(ix+$03)
    ld   b,(iy+$03)
    sub  h
    cp   b
    ret  nc
    add  a,l
    cp   b
    ret  c
    ld   a,(ix+$00)
    ld   b,(iy+$00)
    sub  d
    cp   b
    ret  nc
    add  a,e
    cp   b
    ret  c
    ld   a,$81
    ld   (watchdog),a
    ld   hl,$841F
    ld   (hl),$02
    ret

 player_vs_catA: ; AABB player vs cat A ($8501) -> player death
    ld   a,($8501)
    and  a
    ret  z
    ld   a,(cat1_busy)
    and  a
    ret  nz
    ld   ix,ram_start
    ld   iy,$8004
    ld   de,$070E
    ld   hl,$070E
    jp   $395E
 player_vs_catB: ; AABB player vs cat B ($8504) -> player death
    ld   a,($8504)
    and  a
    ret  z
    ld   a,(cat2_busy)
    and  a
    ret  nz
    ld   ix,ram_start
    ld   iy,$800C
    ld   de,$070E
    ld   hl,$070E
    jp   $395E
 player_vs_catC: ; AABB player vs cat C ($8507) -> player death
    ld   a,($8507)
    and  a
    ret  z
    ld   a,(cat3_busy)
    and  a
    ret  nz
    ld   ix,ram_start
    ld   iy,$8010
    ld   de,$070E
    ld   hl,$070E
    jp   $395E
 player_vs_snakeA: ; AABB player vs snake A ($8601) -> player death
    ld   a,($8601)
    and  a
    ret  z
    ld   a,(snake1_busy)
    and  a
    ret  nz
    ld   ix,ram_start
    ld   iy,$8014
    ld   de,$050A
    ld   hl,$050A
    jp   $395E
 player_vs_snakeB: ; AABB player vs snake B ($8603) -> player death
    ld   a,($8603)
    and  a
    ret  z
    ld   a,(snake2_busy)
    and  a
    ret  nz
    ld   ix,ram_start
    ld   iy,$8018
    ld   de,$050A
    ld   hl,$050A
    jp   $395E
 return_catA: ; cat A death->return-home handler (cat1_state)
    ld   hl,cat1_state
    ld   a,(hl)
    cp   $04
    ret  nz
    ld   de,$8007
    jp   $3A2C
 return_catB: ; cat B death->return-home handler (cat2_state)
    ld   hl,cat2_state
    ld   a,(hl)
    cp   $04
    ret  nz
    ld   de,$800F
    jp   $3A2C
 return_catC: ; cat C death->return-home handler (cat3_state)
    ld   hl,cat3_state
    ld   a,(hl)
    cp   $04
    ret  nz
    ld   de,$8013
    ld   a,(de)
    cp   $E0
    jp   nc,$3A43
    call $3B99
    cp   $37
    ret  nz
    ld   (hl),$05
    ld   a,$96
    ld   (watchdog),a
    jp   $3A4A
    ret
    ld   (hl),$06
    ld   a,$83
    ld   (watchdog),a
    ld   d,$04
    call score_add_request
    ret
 return_snakeA: ; snake A death->return-home handler (snake1_state)
    ld   hl,snake1_state
    ld   a,(hl)
    cp   $04
    ret  nz
    ld   de,$8017
    jp   $3A67
 return_snakeB: ; snake B death->return-home handler (snake2_state)
    ld   hl,snake2_state
    ld   a,(hl)
    cp   $04
    ret  nz
    ld   de,$801B
    ld   a,(de)
    cp   $E0
    jp   nc,$3A78
    call $3B99
    cp   $37
    ret  nz
    ld   (hl),$05
    jp   $3A85
    ld   (hl),$06
    ld   a,$82
    ld   (watchdog),a
    ld   d,$08
    call score_add_request
    ret
    ld   a,$97
    ld   (watchdog),a
    ld   d,$08
 kill_enemies_bonus: ; level-end: award points for + clear surviving enemies
    call score_add_request
    ld   d,$04
    ld   a,(cat1_busy)
    and  a
    jp   nz,$3AA5
    call score_add_request
    ld   hl,cat1_state
    ld   (hl),$06
    ld   hl,cat1_busy
    ld   (hl),$01
    ld   a,(cat2_busy)
    and  a
    jp   nz,$3AB9
    call score_add_request
    ld   hl,cat2_state
    ld   (hl),$06
    ld   hl,cat2_busy
    ld   (hl),$01
    ld   a,(cat3_busy)
    and  a
    ret  nz
    call score_add_request
    ld   hl,cat3_state
    ld   (hl),$06
    ld   hl,cat3_busy
    ld   (hl),$01
    ret

 boulder_squash: ; while boulder active: AABB-test it vs each enemy, squash the ones it overlaps
    ld   a,(boulder)
    and  a
    ret  z
    call boulder_hit_catA
    call boulder_hit_catB
    call boulder_hit_catC
    call boulder_hit_snakeA
    call boulder_hit_snakeB
    ret

 boulder_hit_catA: ; enable+busy gate then boulder_vs_enemy (cat A $8501)
    ld   a,($8501)
    and  a
    ret  z
    ld   a,(cat1_busy)
    and  a
    ret  nz
    ld   iy,$8004
    ld   hl,$3B26
    ld   de,cat1_state
    jp   boulder_vs_enemy
 boulder_hit_catB: ; enable+busy gate then boulder_vs_enemy (cat B $8505)
    ld   a,($8505)
    and  a
    ret  z
    ld   a,(cat2_busy)
    and  a
    ret  nz
    ld   iy,$800C
    ld   hl,$3B26
    ld   de,cat2_state
    jp   boulder_vs_enemy
 boulder_hit_catC: ; enable+busy gate then boulder_vs_enemy (cat C $8507)
    ld   a,($8507)
    and  a
    ret  z
    ld   a,(cat3_busy)
    and  a
    ret  nz
    ld   iy,$8010
    ld   hl,$3B26
    ld   de,cat3_state
    jp   boulder_vs_enemy
    ld   hl,$FFFD
    add  hl,de
    ld   (hl),$1C
    ld   hl,$0014
    add  hl,de
    ld   (hl),$01
    ex   de,hl
    ld   (hl),$04
    ret

 boulder_hit_snakeA: ; enable+busy gate then boulder_vs_enemy (snake A $8601)
    ld   a,($8601)
    and  a
    ret  z
    ld   a,(snake1_busy)
    and  a
    ret  nz
    ld   iy,$8014
    ld   hl,$3B64
    ld   de,snake1_state
    jp   boulder_vs_enemy
 boulder_hit_snakeB: ; enable+busy gate then boulder_vs_enemy (snake B $8603)
    ld   a,($8603)
    and  a
    ret  z
    ld   a,(snake2_busy)
    and  a
    ret  nz
    ld   iy,$8018
    ld   hl,$3B64
    ld   de,snake2_state
    jp   boulder_vs_enemy
    ld   hl,$FFFD
    add  hl,de
    ld   (hl),$2C
    ld   hl,$0014
    add  hl,de
    ld   (hl),$01
    ex   de,hl
    ld   (hl),$04
    ret

 boulder_vs_enemy:   ; AABB overlap test: falling boulder ($801C) vs one enemy sprite -> kill on hit
    ld   ix,$801C
    exx
    ld   de,$0810
    ld   hl,$0212
    ld   a,(ix+$03)
    ld   b,(iy+$03)
    sub  h
    cp   b
    ret  nc
    add  a,l
    cp   b
    ret  c
    ld   a,(ix+$00)
    ld   b,(iy+$00)
    sub  d
    cp   b
    ret  nc
    add  a,e
    cp   b
    ret  c
    exx
    jp   (hl)
    ld   a,(de)
    rrca
    rrca
    rrca
    and  $1F
    ld   c,a
    dec  de
    dec  de
    dec  de
    ld   a,(de)
    neg
    rlca
    rlca
    ld   b,a
    and  $E0
    or   c
    ld   c,a
    ld   a,b
    and  $03
    ld   b,a
    ld   a,$90
    add  a,b
    ld   b,a
    ex   de,hl
    ld   hl,$FFE1
    add  hl,bc
    ld   a,(hl)
    ex   de,hl
    ret

 score_add_request: ; request a score add (score_add_trig=1) with pending BCD
    xor  a
    ld   hl,score_add_trig
    ld   (hl),$01
    ld   c,$00
    ld   e,$00
    inc  hl
    ld   a,c
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  hl
    ld   a,d
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  hl
    ld   a,e
    adc  a,(hl)
    daa
    ld   (hl),a
    ret

 open_bridge_tiles:
    db $F8, $34, $FE, $24, $F7, $33
 closed_bridge_tiles:
    db $F6, $24, $FC, $24, $F6, $24

    inc  bc
    ld   hl,($3291)
    sub  c
    xor  d
    sub  d
    inc  bc
    ld   l,$91
    xor  d
    sub  d
    or   d
    sub  d
    inc  bc
    and  (hl)
    sub  c
    xor  (hl)
    sub  d
    ld   ($0391),a
    ld   h,$92
    xor  (hl)
    sub  d
    cp   d
    sub  d
    ld   hl,$80C0
    ld   a,(hl)
    and  a
    jp   z,$3C86
    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$3C24
    ld   de,$3C1C
    ld   bc,$0007
    ex   de,hl
    ldir
    ld   a,$94
    ld   (watchdog),a
    ret
    ld   bc,$0000
    nop
    nop
    nop
    nop
    nop
    inc  hl
    ld   a,(hl)
    cp   $01
    jp   z,$3C4D
    cp   $02
    jp   z,$3C78
    call bridge_select_cells
    ld   b,(ix+$00)
    ld   a,b
    and  a
    ret  z
    inc  ix
    ld   de,open_bridge_tiles
    call bridge_blit
    ld   hl,$80C2
    ld   (hl),$01
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    ret
    inc  hl
    inc  (hl)
    ld   a,$06
    cp   (hl)
    ret  nc
    ld   (hl),$00
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $08
    ret  c
    call bridge_select_cells
    ld   b,(ix+$00)
    ld   a,b
    and  a
    ret  z
    inc  ix
    ld   de,closed_bridge_tiles
    call bridge_blit
    ld   hl,$80C2
    ld   (hl),$02
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    ret
    inc  hl
    inc  (hl)
    ld   a,$06
    cp   (hl)
    ret  nc
    ld   (hl),$00
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $08
    ret  c
    ld   hl,$80C0
    ld   a,$00
    ld   b,$08
    ld   (hl),a
    inc  hl
    djnz $3C8D
    ret
 bridge_select_cells: ; pick per-maze bridge cell set (table $3BE3)
    call debug_draw_check
    ld   ix,$3BE3
    ld   a,(cur_map)
    and  $03
    ld   de,$0007
    and  a
    ret  z
    add  ix,de
    dec  a
    jp   $3CA1
 bridge_blit: ; blit open/closed bridge tile blocks to VRAM
    ld   l,(ix+$00)
    ld   h,(ix+$01)
    push bc
    push de
    ld   b,$02
    ld   c,$03
    call blit_rect
    pop  de
    pop  bc
    inc  ix
    inc  ix
    djnz $3CA9
    ret
    db   $fd
    rst  $38
    dec  iyh
    dec  h
    dec  h
    dec  h
    db   $fd
    rst  $38
    db   $fd
    cp   TILE_GAP
    cp   TILE_GAP
    cp   $FD
    rst  $38
    db   $fd
    cp   TILE_GAP
    cp   TILE_GAP
    cp   $FD
    rst  $38
    db   $fd
    cp   TILE_GAP
    cp   TILE_GAP
    cp   $FD
    rst  $38
    db   $fd
    cp   TILE_GAP
    cp   TILE_GAP
    cp   $FD
    rst  $38
    dec  iyh
    dec  h
    dec  h
    dec  h
    db   $fd
    rst  $38
    and  (iy-$6f)
    or   (hl)
    sub  d
    nop
    sub  b
    ld   h,$91
    or   (hl)
    sub  b
    nop
    sub  b
    and  (hl)
    sub  d
    ld   (hl),$92
    nop
    sub  b
    ld   l,$91
    or   (hl)
    sub  c
    nop
    sub  b
    ld   hl,$80E0
    ld   a,(hl)
    and  a
    jp   nz,$3D1E
    ld   hl,$80E0
    ld   b,$08
    ld   a,$00
    ld   (hl),a
    inc  hl
    djnz $3D19
    ret
    ld   b,a
    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$3D45
    ld   (hl),$01
    inc  hl
    ld   a,b
    and  $0F
    ld   (hl),a
    ld   a,b
    and  $F0
    rrca
    rrca
    rrca
    rrca
    inc  hl
    ld   (hl),a
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    ld   a,$93
    ld   (watchdog),a
    ret
    nop
    inc  hl
    ld   a,(hl)
    cp   $01
    jp   z,$3D68
    cp   $02
    jp   z,$3DAE
    jp   $3D12
    nop
    nop
    ret
    call $3DF4
    jp   $3D12
    ld   a,$00
    ld   ($8422),a
    ld   a,$01
    ld   ($841F),a
    ret
    inc  hl
    inc  hl
    inc  hl
    inc  (hl)
    ld   a,$03
    cp   (hl)
    ret  nc
    ld   (hl),$00
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $01
    ld   de,$3CCF
    jp   z,$3DA3
    cp   $02
    ld   de,$3CD6
    jp   z,$3DA3
    cp   $03
    ld   de,$3CDD
    jp   z,$3DA3
    cp   $04
    ld   de,$3CE4
    jp   z,$3DA3
    cp   $0C
    ld   de,$3CEB
    jp   z,$3D57
    cp   $05
    jp   z,$3D5D
    ret
    ld   a,(player_x)
    sub  $08
    ld   (player_x),a
    jp   $3DF4
    inc  hl
    inc  hl
    inc  hl
    inc  (hl)
    ld   a,$03
    cp   (hl)
    ret  nc
    ld   (hl),$00
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $01
    ld   de,$3CDD
    jp   z,$3DE9
    cp   $02
    ld   de,$3CD6
    jp   z,$3DE9
    cp   $03
    ld   de,$3CCF
    jp   z,$3DE9
    cp   $04
    ld   de,$3CC8
    jp   z,$3DE9
    cp   $0C
    ld   de,$3CC1
    jp   z,$3D57
    cp   $05
    jp   z,$3D5D
    ret
    ld   a,(player_x)
    add  a,$08
    ld   (player_x),a
    jp   $3DF4
    push de
    call $3E05
    dec  hl
    dec  hl
    dec  hl
    ld   e,(hl)
    ld   d,$00
    add  ix,de
    pop  de
    call $3E19
    ret
    ld   ix,$3CF2
    ld   a,(cur_map)
    and  $03
    ld   de,$0006
    and  a
    ret  z
    add  ix,de
    dec  a
    jp   $3E11
    push hl
    ld   h,(ix+$01)
    ld   l,(ix+$00)
    ld   b,$01
    ld   c,$07
    call blit_rect
    pop  hl
    ret


    ld   hl,food_state
    ld   ix,food_pos_tbl
    ld   iy,food_gfx_ptr_tbl
    ld   de,$0012
    ld   a,(cur_map)
    and  $03
    and  a
    jp   z,$3E48
    add  ix,de
    add  iy,de
    dec  a
    jp   $3E3C
    ld   b,$09
    ld   a,(hl)
    and  a
    jp   z,$3E56
    cp   $02
    jp   nz,$3E8A
    ld   (hl),$00
    push hl
    push de
    push bc
    ld   l,(ix+$00)
    ld   h,(ix+$01)
    ld   e,(iy+$00)
    ld   d,(iy+$01)
    ld   b,$02
    ld   c,$02
    push hl
    call blit_rect
    pop  hl
    ld   a,(de)
    ld   de,$0020
    ld   b,$02
    ld   c,$02
    set  2,h
    call fill_rect
    pop  bc
    pop  de
    pop  hl
    inc  hl
    inc  ix
    inc  ix
    inc  iy
    inc  iy
    djnz $3E4A
    ret
    push hl
    push de
    push bc
    ld   l,(ix+$00)
    ld   h,(ix+$01)
    ld   de,$0020
    ld   a,$25
    ld   b,$02
    ld   c,$02
    push hl
    call fill_rect
    pop  hl
    ld   a,$87
    ld   de,$0020
    ld   b,$02
    ld   c,$02
    set  2,h
    call fill_rect
    jp   $3E7B


    exx
    ld   hl,food_state
    ld   ix,food_pos_tbl
    ld   b,$09
    ld   de,$0012
    ld   a,(cur_map)
    and  $03
    and  a
    jp   z,$3ECE
    add  ix,de
    dec  a
    jp   $3EC4
    exx
    ld   a,(ix+$00)
    inc  a
    cp   l
    jp   z,$3EDD
    add  a,$20
    cp   l
    jp   nz,$3EE8
    ld   a,(ix+$01)
    cp   h
    jp   nz,$3EE8
    ld   a,c
    exx
    ld   (hl),a
    exx
    exx
    inc  hl
    inc  ix
    inc  ix
    djnz $3ECE
    exx
    ret

    ld   hl,food_returned
    ld   bc,$0000
    ld   a,(hl)
    and  a
    jp   z,$3F04
    inc  hl
    inc  hl
    inc  c
    inc  c
    jp   $3EF8
    ld   (hl),d
    inc  hl
    ld   (hl),e
    ld   ix,food_home_pos_tbl
    add  ix,bc
    ld   l,(ix+$00)
    ld   h,(ix+$01)
    ld   (hl),d
    set  2,h
    ld   (hl),e
    ld   hl,score_add_trig
    ld   de,$3F31
    ld   b,$03
    ld   (hl),$01
    inc  hl
    xor  a
    ld   a,(de)
    adc  a,(hl)
    daa
    ld   (hl),a
    inc  hl
    inc  de
    djnz $3F23
    ld   a,$84
    ld   (watchdog),a
    ret
    nop
    dec  b
    nop


    ld   a,$09
    ld   hl,food_returned
    ld   bc,$0000
    ex   af,af' ; '
    ld   a,(hl)
    and  a
    call nz,$3F4C
    inc  hl
    inc  hl
    inc  c
    inc  c
    ex   af,af' ; '
    dec  a
    jp   nz,$3F3C
    ret


    push hl
    ld   d,(hl)
    inc  hl
    ld   e,(hl)
    ld   ix,food_home_pos_tbl
    add  ix,bc
    ld   l,(ix+$00)
    ld   h,(ix+$01)
    ld   (hl),d
    set  2,h
    ld   (hl),e
    pop  hl
    ret


    ld   hl,food_state
    ld   ix,food_pos_tbl
    ld   de,$0012
    ld   a,(cur_map)
    and  $03
    and  a
    jp   z,$3F7B
    add  ix,de
    dec  a
    jp   $3F71
    ld   b,$09
    ld   a,(hl)
    cp   $02
    jp   z,$3F8B
    inc  hl
    inc  ix
    inc  ix
    djnz $3F7D
    ret
    push bc
    push hl
    ld   l,(ix+$00)
    ld   h,(ix+$01)
    ld   de,$0020
    ld   a,$25
    ld   b,$02
    ld   c,$02
    push hl
    call fill_rect
    pop  hl
    ld   a,$87
    ld   de,$0020
    ld   b,$02
    ld   c,$02
    set  2,h
    call fill_rect
    pop  hl
    pop  bc
    jp   $3F83

 food_home_pos_tbl: ; 9x 2-byte LE VRAM cells = returned-food 'home' HUD slots (3x3)
    db   $FD, $91   ; slot 0: VRAM $91FD
    db   $BD, $91   ; slot 1: VRAM $91BD
    db   $DD, $91   ; slot 2: VRAM $91DD
    db   $FC, $91   ; slot 3: VRAM $91FC
    db   $BC, $91   ; slot 4: VRAM $91BC
    db   $DC, $91   ; slot 5: VRAM $91DC
    db   $FB, $91   ; slot 6: VRAM $91FB
    db   $BB, $91   ; slot 7: VRAM $91BB
    db   $DB, $91   ; slot 8: VRAM $91DB

 food_pos_tbl:   ; per-maze food vram-cell pointer table (stride $12, 9x2)
    db   $C4, $90, $DC, $90, $C8, $91, $48, $92, $50, $92, $D8, $92, $44, $93, $50, $93, $5C, $93  ; maze 0: $90C4 $90DC $91C8 $9248 $9250 $92D8 $9344 $9350 $935C
    db   $C4, $90, $CC, $90, $DC, $90, $C8, $91, $D4, $91, $44, $92, $D8, $92, $44, $93, $5C, $93  ; maze 1: $90C4 $90CC $90DC $91C8 $91D4 $9244 $92D8 $9344 $935C
    db   $C4, $90, $CC, $90, $D0, $90, $DC, $90, $CC, $91, $DC, $92, $48, $93, $54, $93, $58, $93  ; maze 2: $90C4 $90CC $90D0 $90DC $91CC $92DC $9348 $9354 $9358
    db   $C4, $90, $CC, $90, $D0, $90, $44, $91, $D0, $91, $44, $93, $48, $93, $4C, $93, $54, $93  ; maze 3: $90C4 $90CC $90D0 $9144 $91D0 $9344 $9348 $934C $9354
 food_gfx_ptr_tbl: ; per-maze 9x 2-byte LE ptr into food_gfx_data (stride $12)
    db   $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40  ; maze 0: 9 food-graphic pointers
    db   $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40  ; maze 1: 9 food-graphic pointers
    db   $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40  ; maze 2: 9 food-graphic pointers
    db   $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40  ; maze 3: 9 food-graphic pointers
 ; -- padding --
    db   $00, $00, $00, $00, $00, $00, $00
 food_gfx_data: ; 5 food types x [2x2 tile block ($DC-$EF) + color $87]
    db   $E0, $E1, $E2, $E3, $87                             ; food type 0: tiles $E0-$E3, color $87
    db   $E4, $E5, $E6, $E7, $87                             ; food type 1: tiles $E4-$E7, color $87
    db   $E8, $E9, $EA, $EB, $87                             ; food type 2: tiles $E8-$EB, color $87
    db   $EC, $ED, $EE, $EF, $87                             ; food type 3: tiles $EC-$EF, color $87
    db   $DC, $DD, $DE, $DF, $87                             ; food type 4: tiles $DC-$DF, color $87
 ; -- padding --
    db   $00, $00, $00, $00, $00, $00, $00

 platform_update:    ; sliding platform (slot 2), block $80A0-$80A8
    ld   a,(carrying_1)
    and  a
    jp   nz,$40A9
    ld   hl,$809C
    ld   a,$00
    ld   b,$0F
    ld   (hl),a
    inc  hl
    djnz $408B
    jp   $4092
    ld   hl,$8008
    ld   a,(carry_x)
    ld   (hl),a
    inc  hl
    ld   a,(carry_tile)
    ld   (hl),a
    inc  hl
    ld   a,($80A7)
    ld   (hl),a
    inc  hl
    ld   a,(carry_y)
    ld   (hl),a
    ret
    ld   a,(carrying_2)
    and  a
    jp   nz,$4120
    ld   de,carrying_2
    ld   hl,$4114
    ld   bc,$0009
    ldir
    ld   a,(player_x)
    add  a,$00
    ld   (carry_x),a
    ld   a,(player_y)
    add  a,$F0  ; y - 16 (on head!)
    ld   (carry_y),a
    ld   a,($809F)
    ld   c,$00
    cp   $7A
    jp   z,$40F4
    inc  c
    inc  c
    cp   $7E
    jp   z,$40F4
    inc  c
    inc  c
    cp   $7C
    jp   z,$40F4
    inc  c
    inc  c
    cp   $7D
    jp   z,$40F4
    inc  c
    inc  c
    cp   $7B
    jp   z,$40F4
    jp   $4084
    ld   hl,pickup_data
    ld   b,$00
    add  hl,bc
    ld   a,(hl)
    ld   (carry_tile),a
    inc  hl
    ld   a,(hl)
    ld   ($80A7),a
    jp   $4092

 pickup_data:
     db $32, $07, $36, $07, $34, $07, $35, $07
     db $33, $07, $00, $00, $00, $00, $01, $01
     db $00, $00, $00, $00, $00, $00, $00, $00
     db $00, $00

    ld   a,(carrying_3)
    cp   $01
    jp   z,$4135
    cp   $02
    jp   z,$4148
    cp   $03
    jp   z,food_return_home
    jp   $4084
    ld   a,(player_x)
    add  a,$00
    ld   (carry_x),a
    ld   a,(player_y)
    add  a,$F0
    ld   (carry_y),a
    jp   $4092
    ld   a,($80A3)
    inc  a
    ld   ($80A3),a
    cp   $0A
    jp   c,$415C
    ld   a,$03
    ld   (carrying_3),a
    jp   $4092
    ld   a,(carry_y)
    add  a,$02
    ld   (carry_y),a
    jp   $4092
    ld   hl,$809E
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    call food_return_add
    ld   hl,($809C)
    ld   c,$01
    call food_set_state
    jp   $4084


    ld   a,$00
    ld   ($8180),a
    ld   a,($8180)
    and  a
    jp   nz,$419B
    ld   a,$39
    ld   ($9065),a
    ld   a,$85
    ld   ($9465),a
    ld   a,$3A
    ld   ($9085),a
    ld   a,$85
    ld   ($9485),a
    ld   a,$00
    ld   ($8181),a
    ld   a,($8181)
    and  a
    jp   nz,$41BB
    ld   a,$39
    ld   ($9385),a
    ld   a,$85
    ld   ($9785),a
    ld   a,$3A
    ld   ($93A5),a
    ld   a,$85
    ld   ($97A5),a
    ret
 boulder_update:  ; boulder: spawn-on-touch / fall / despawn (slot 7)
    call debug_draw_check
    ld   a,(boulder_req)
    and  a
    jp   nz,$41D3
    ld   (boulder),a
    ld   hl,$85C4
    ld   b,$0C
    ld   (hl),a
    inc  hl
    djnz $41CE
    ret

 ;;
    ld   a,($85C4)
    and  a
    jp   nz,$4217
    ld   hl,boulder_req
    ld   de,$85C4
    ld   bc,$0003
    ldir
    ld   a,$95
    ld   (watchdog),a
    ld   a,$01
    ld   (boulder),a
    ld   a,(boulder_x)
    cp   $80
    jp   c,$4207
    ld   a,$25
    ld   ($9065),a
    ld   ($9085),a
    ld   a,$01
    ld   ($8180),a
    jp   $4232
    ld   a,$25
    ld   ($9385),a
    ld   ($93A5),a
    ld   a,$01
    ld   ($8181),a
    jp   $4232
    ld   a,(boulder_y)
    cp   $E0
    jp   nc,$4227
    add  a,$02
    ld   (boulder_y),a
    jp   $4232


    ld   hl,boulder
    ld   b,$10
    ld   a,$00
    ld   (hl),a
    inc  hl
    djnz $422E
    ld   hl,$801C
    ld   a,(boulder_x)
    ld   (hl),a
    inc  hl
    ld   a,$37
    ld   (hl),a
    inc  hl
    ld   a,$05
    ld   (hl),a
    inc  hl
    ld   a,(boulder_y)
    ld   (hl),a
    ret


 gamble_update: ; bonus/score display state machine ($8480)
    call debug_draw_check
    ld   hl,$8479
    ld   a,(hl)
    and  a
    jp   nz,$425D
    ld   (hl),$01
    dec  hl
    ld   a,$03
    ld   (hl),a
    ld   a,$00
    ld   (gamble_credit),a
    ld   a,(gamble_state)
    ld   b,a
    and  a
    jp   z,$441B
    and  $80
    jp   nz,$4306
    ld   a,b
    and  $40
    jp   nz,$42D1
    ld   a,b
    and  $20
    jp   z,$442B
    ld   a,(hw_in_0)
    and  $10
    jp   z,$4443
    ld   a,(is_playing)
    and  a
    jp   z,$4443
    ld   a,$E0
    ld   (watchdog),a
    ld   hl,gamble_reel1
    ld   a,(hl)
    inc  hl
    cp   (hl)
    jr   nz,$42CB
    ld   a,(hl)
    inc  hl
    cp   (hl)
    jr   z,$429C
    sla  a
    inc  a
    jr   $429E
    sla  a
    and  a
    jp   nz,$42A9
    push af
    ld   a,$01
    ld   (gamble_credit),a
    pop  af
    ld   (gamble_outcome),a
    ld   hl,gamble_score_tbl
    ld   b,a
    sla  a
    add  a,b
    add  a,l
    ld   l,a
    jr   nc,$42B8
    inc  h
    ld   de,score_add
    ld   a,$01
    ld   (score_add_trig),a
    ld   bc,$0003
    ldir
    ld   a,$80
    ld   (gamble_state),a
    ret
    ld   a,$40
    ld   (gamble_state),a
    ret
    ld   a,(gamble_state)
    and  $BF
    jr   nz,$42E5
    inc  a
    or   $40
    ld   (gamble_state),a
    ld   hl,$00B4
    ld   ($8481),hl
    ret
    ld   hl,($8481)
    dec  hl
    ld   ($8481),hl
    ld   a,h
    or   l
    ret  nz
    ld   hl,$8478
    ld   a,(hl)
    dec  a
    jp   z,$42FD
    ld   (hl),a
    xor  a
    ld   (gamble_state),a
    ret
    ld   (hl),a
    inc  hl
    ld   (hl),a
    ld   a,$01
    ld   (req_death),a
    ret

 ;;
    ld   a,(gamble_state)
    and  $7F
    cp   $03
    jp   nc,$43E7
    cp   $02
    jp   nc,gamble_award_credit
    inc  a
    or   $80
    ld   (gamble_state),a
    ld   a,(gamble_credit)
    and  a
    jp   z,$4328
    ld   a,$9A
    ld   (watchdog),a
    ret
    ld   a,$91
    ld   (watchdog),a
    ret

 ;;
 gamble_award_credit: ; special bonus: credits+=1 (max 9) + draw 'CREDIT PLUS 1'
    inc  a
    or   $80
    ld   (gamble_state),a
    ld   a,(gamble_outcome)
    sla  a
    ld   hl,gamble_prize_pos
    add  a,l
    ld   l,a
    ld   a,h
    adc  a,$00
    ld   h,a
    ld   a,(hl)
    ld   ($848A),a
    inc  hl
    ld   a,(hl)
    ld   ($848B),a
    ld   a,(gamble_credit)
    and  a
    jp   z,$43E0
    ld   a,(is_playing)
    and  a
    jp   z,$436C
    ld   a,(credits)
    cp   $09
    jp   nc,$43BA
    add  a,$01
    daa
    ld   (credits),a
    ld   b,$01
    call $07BC
    ld   hl,$92EC
    ld   de,$FFE0
    ld   b,$0F
    call gamble_draw_blank
    ld   hl,$92ED
    ld   de,str_special_bonus
    ld   b,$0F
    call gamble_draw_text
    ld   hl,$92EE
    ld   b,$0F
    call gamble_draw_text
    ld   hl,$92EF
    ld   de,$FFE0
    ld   b,$0F
    call gamble_draw_blank
    ld   hl,$00C8
    ld   ($8481),hl
    ret
 gamble_draw_text: ; draw a text column (de=str) + color to VRAM
    ld   a,(de)
    ld   (hl),a
    set  2,h
    ld   (hl),$80
    res  2,h
    push bc
    ld   bc,$FFE0
    add  hl,bc
    pop  bc
    inc  de
    djnz $439C
    ret
 gamble_draw_blank: ; draw a blank/spacer column + color to VRAM
    ld   (hl),$24
    set  2,h
    ld   (hl),$80
    res  2,h
    add  hl,de
    djnz $43AE
    ret
    ld   a,$09
    ld   (credits),a
    jp   $4367
 str_special_bonus: ; 'SPECIAL BONUS  CREDIT PLUS 1' (+$21 marker)
    db   $24, $1C, $19, $0E, $0C, $12, $0A, $15              ; | SPECIAL|
    db   $24, $0B, $18, $17, $1E, $1C, $24, $24              ; | BONUS  |
    db   $0C, $1B, $0E, $0D, $12, $1D, $24, $19              ; |CREDIT P|
    db   $15, $1E, $1C, $24, $01, $24, $21                   ; |LUS 1 X|
    ret  p
    nop
    ld   ($8481),hl
    ret
    ld   hl,($8481)
    dec  hl
    ld   ($8481),hl
    ld   a,l
    or   h
    jr   nz,$4404
    ld   a,$01
    ld   (req_level_done),a
    ld   a,$A0
    ld   (watchdog),a
    xor  a
    ld   hl,$8478
    ld   (hl),a
    inc  hl
    ld   (hl),a
    ret
    ld   a,l
    and  $03
    ret  nz
    ld   hl,($848A)
    ld   de,$0020
    ld   b,$04
    ld   a,(hl)
    inc  a
    and  $07
    or   $84
    ld   (hl),a
    add  hl,de
    djnz $4410
    ret
    inc  a
    ld   (gamble_state),a
    ld   a,$E0
    ld   (watchdog),a
    ld   hl,$0190
    ld   ($8481),hl
    ret
    ld   a,(gamble_state)
    inc  a
    ld   (gamble_state),a
    cp   $04
    jr   nz,$443D
    call gamble_spin_reels
    ld   a,$20
    jr   $442F
    ld   a,$CA
    ld   (watchdog),a
    ret
    ld   hl,($8481)
    dec  hl
    ld   ($8481),hl
    ld   a,h
    or   l
    jp   z,$4285
    ld   a,l
    and  $07
    ret  nz
 gamble_spin_reels: ; advance the 3 reels one step from their strips + redraw
    ld   de,gamble_reel1
    ld   hl,gamble_reel1_strip
    ld   a,(gamble_pos1)
    call gamble_reel_step
    cp   $11
    jr   nz,$4464
    xor  a
    inc  de
    ld   (gamble_pos1),a
    ld   hl,gamble_reel2_strip
    ld   a,(gamble_pos2)
    call gamble_reel_step
    cp   $10
    jr   nz,$4476
    xor  a
    inc  de
    ld   (gamble_pos2),a
    ld   hl,gamble_reel3_strip
    ld   a,(gamble_pos3)
    call gamble_reel_step
    cp   $0F
    jr   nz,$4488
    xor  a
    ld   (gamble_pos3),a
    ld   de,$9268
    ld   a,(gamble_reel1)
    call gamble_reel_draw
    ld   de,$91E8
    ld   a,(gamble_reel2)
    call gamble_reel_draw
    ld   de,$9168
    ld   a,(gamble_reel3)
    call gamble_reel_draw
    ret
 gamble_reel_step: ; reel += strip[pos]; wrap pos; store symbol -> (de)
    push af
    add  a,l
    ld   l,a
    ld   a,h
    adc  a,$00
    ld   h,a
    ld   a,(hl)
    ld   (de),a
    pop  af
    inc  a
    ret
 gamble_reel_draw: ; draw one reel symbol to VRAM (de)
    cp   $03
    jr   nz,$44BD
    ld   a,$92
    ld   c,$86
    jr   $44D5
    cp   $02
    jr   nz,$44C7
    ld   a,$48
    ld   c,$87
    jr   $44D5
    cp   $01
    jr   nz,$44D1
    ld   a,$89
    ld   c,$86
    jr   $44D5
    ld   a,$80
    ld   c,$84
    push de
    push af
    ld   a,$04
    add  a,d
    ld   h,a
    ld   l,e
    pop  af
    pop  de
    ld   b,$03
    push bc
    push de
    ld   b,$03
    ld   (de),a
    inc  a
    inc  de
    ld   (hl),c
    inc  hl
    djnz $44E4
    pop  de
    push af
    ld   a,e
    add  a,$20
    ld   e,a
    ld   a,d
    adc  a,$00
    ld   d,a
    add  a,$04
    ld   h,a
    ld   l,e
    pop  af
    pop  bc
    djnz $44E0
    ret
 gamble_score_tbl: ; 8 outcomes x 3-byte BCD score bonus (index = gamble_outcome)
    db   $00, $15, $00, $00, $08, $00, $00, $10
    db   $00, $00, $05, $00, $00, $08, $00, $00
    db   $04, $00, $00, $06, $00, $00, $02, $00
 gamble_prize_pos: ; 8 outcomes x 2-byte LE VRAM pos for the win display
    db   $31, $96, $35, $96, $39, $96, $3D, $96
    db   $51, $94, $55, $94, $59, $94, $5D, $94
 gamble_reel1_strip: ; reel 1 symbol strip (17 steps, values 0-3)
    db   $01, $00, $01, $02, $03, $02, $01, $03
    db   $01, $03, $02, $01, $03, $02, $00, $01
    db   $02
 gamble_reel2_strip: ; reel 2 symbol strip (16 steps)
    db   $01, $02, $03, $02, $01, $03, $02, $01
    db   $03, $02, $01, $03, $01, $02, $00, $02
 gamble_reel3_strip: ; reel 3 symbol strip (15 steps)
    db   $02, $00, $01, $03, $03, $02, $01, $03
    db   $02, $01, $03, $02, $03, $01, $02
 gamble_tbl_pad: ; trailing bytes ($21,$60,$80)
    db   $21, $60, $80
    ld   a,(hl)
    and  a
    jp   nz,$456D
    inc  hl
    ld   (hl),a
    inc  hl
    ld   (hl),a
    ld   a,$01
    ld   ($8060),a
    ld   a,$D1
    ld   (watchdog),a
    ret
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $06
    ret  nz
    ld   (hl),$00
    inc  hl
    ld   a,(hl)
    inc  (hl)
    cp   $24
    jp   nc,$4593
    rlca
    rlca
    ld   c,a
    ld   b,$00
    ld   hl,lucky_mouse_pic
    add  hl,bc
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    inc  hl
    ld   b,(hl)
    inc  hl
    ld   c,(hl)
    ex   de,hl
    ld   (hl),b
    set  2,h
    ld   (hl),c
    ret

 ;;; win some points
    cp   $2D
    jp   nz,$45D9
    ld   hl,$92F5
    ld   de,str_lucky_mouse
    ld   b,$10
    ld   c,$86
    ld   a,(de)
    ld   (hl),a
    set  2,h
    ld   (hl),c
    res  2,h
    inc  de
    push bc
    ld   bc,$FFE0
    add  hl,bc
    pop  bc
    djnz $45A2
    ld   a,$8C
    ld   (watchdog),a
    ld   a,$3C
    ld   ($920D),a
    inc  a
    ld   ($920E),a
    inc  a
    ld   ($920F),a
    inc  a
    ld   ($91EF),a
    ret

 str_lucky_mouse: ; 'VERY LUCKY MOUSE' ($FE-term)
    db   $1F, $0E, $1B, $22, $24, $15, $1E, $0C              ; |VERY LUC|
    db   $14, $22, $24, $16, $18, $1E, $1C, $0E              ; |KY MOUSE|
    db   $FE                                                 ; |.|
    dec  sp
    jp   z,$45F1
    cp   $46
    ret  nz
    ld   a,$00
    ld   ($8060),a
    ld   a,$01
    ld   (req_death),a
    ld   a,$E0
    ld   (watchdog),a
    ret
    ld   a,$65
    ld   ($920D),a
    inc  a
    ld   ($920E),a
    inc  a
    ld   ($920F),a
    ld   a,$61
    ld   ($91EF),a
    ret
 lucky_mouse_pic: ; 'VERY LUCKY MOUSE' bonus picture: 36x [VRAM_dest_LE, tile, color]
 ;   6x6 grid of unique tiles $51-$74; drawn one record at a time by index (eye winks)
    db   $CC, $91, $58, $84   ; VRAM $91CC tile $58 color $84
    db   $2F, $92, $6D, $84
    db   $CE, $91, $5A, $84
    db   $2D, $92, $6B, $84
    db   $4B, $92, $6F, $84
    db   $50, $92, $74, $84
    db   $D0, $91, $5C, $84
    db   $AB, $91, $51, $84
    db   $EB, $91, $5D, $84
    db   $0E, $92, $66, $84
    db   $AF, $91, $55, $84
    db   $0C, $92, $64, $84
    db   $2B, $92, $69, $84
    db   $4E, $92, $72, $84
    db   $AD, $91, $53, $84
    db   $CB, $91, $57, $84
    db   $10, $92, $68, $84
    db   $AE, $91, $54, $84
    db   $B0, $91, $56, $84
    db   $ED, $91, $5F, $84
    db   $CF, $91, $5B, $84
    db   $4C, $92, $70, $84
    db   $4F, $92, $73, $84
    db   $AC, $91, $52, $84
    db   $F0, $91, $62, $84
    db   $30, $92, $6E, $84
    db   $0B, $92, $63, $84
    db   $EF, $91, $61, $84
    db   $2C, $92, $6A, $84
    db   $CD, $91, $59, $84
    db   $EC, $91, $5E, $84
    db   $2E, $92, $6C, $84
    db   $0F, $92, $67, $84
    db   $0D, $92, $65, $84
    db   $4D, $92, $71, $84
    db   $EE, $91, $60, $84
 ;;; ...
    ld   hl,$8068
    ld   a,(hl)
    and  a
    jp   nz,$4705
    ld   (hl),$01
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    inc  hl
    ld   (hl),$00
    ld   hl,$9065
    ld   de,gamble_frame_tiles
    ld   b,$05
    push hl
    ld   a,(de)
    ld   (hl),a
    inc  de
    inc  hl
    djnz $46B3
    pop  hl
    set  2,h
    ld   b,$05
    ld   a,$84
    ld   (hl),a
    inc  hl
    djnz $46C0
    ld   a,(de)
    ld   hl,$9349
    ld   (hl),a
    set  2,h
    ld   (hl),$84
    inc  de
    ld   a,(de)
    ld   b,$16
    ld   de,$FFE0
    push hl
    res  2,h
    add  hl,de
    ld   (hl),a
    djnz $46D7
    pop  hl
    ld   b,$16
    ld   a,$84
    add  hl,de
    ld   (hl),a
    djnz $46E0
    ld   hl,$9485
    ld   de,$0020
    ld   b,$04
    ld   c,$17
    ld   a,$F5
    push bc
    push hl
    ld   (hl),a
    inc  hl
    djnz $46F2
    pop  hl
    add  hl,de
    pop  bc
    dec  c
    jp   nz,$46F0
    ret
 gamble_frame_tiles: ; border tiles for the 'VERY LUCKY MOUSE' gamble screen (color $84)
 ;   [0..4]=5-tile bottom row  [5]=corner @$9349  [6]=vertical-edge tile (22-col)
    db   $40, $40, $40, $40, $43, $77, $41   ; $40 x4 + $43 corner, $77 corner, $41 v-edge
    inc  hl
    ld   a,(hl)
    and  a
    jp   nz,$4755
    inc  hl
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $05
    ret  c
    ld   (hl),$00
    inc  hl
    ld   a,(hl)
    inc  (hl)
    cp   $2A
    jp   nc,$4732
    rlca
    rlca
    ld   c,a
    ld   b,$00
    ld   hl,$47E3
    add  hl,bc
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    inc  hl
    ld   b,(hl)
    inc  hl
    ld   c,(hl)
    ex   de,hl
    ld   (hl),b
    set  2,h
    ld   (hl),c
    ret
    ld   a,(hl)
    cp   $52
    jp   z,$4749
    sub  $2B
    cp   $24
    ret  nc
    rlca
    rlca
    ld   c,a
    ld   b,$00
    ld   hl,lucky_mouse_pic
    call $4724
    ret
    ld   (hl),$00
    dec  hl
    ld   (hl),$00
    dec  hl
    ld   (hl),$00
    dec  hl
    ld   (hl),$01
    ret
    cp   $01
    jp   z,$4774
    inc  hl
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $06
    ret  c
    ld   (hl),$00
    inc  hl
    inc  (hl)
    ld   a,(hl)
    cp   $28
    ret  c
    ld   a,$00
    ld   ($8068),a
    ld   a,$01
    ld   (req_death),a
    ret
    inc  hl
    ld   a,(hl)
    inc  (hl)
    cp   $10
    jp   z,$4794
    cp   $20
    jp   z,$479B
    cp   $30
    jp   z,$47BB
    cp   $40
    jp   z,$47C2
    cp   $60
    ret  nz
    ld   (hl),$00
    dec  hl
    ld   (hl),$02
    ret
    ld   hl,$488B
    call $47C9
    ret
    ld   hl,$48A3
    call $47C9
    ld   ix,$07D5
    ld   a,($8025)
    rlca
    ld   e,a
    ld   d,$00
    add  ix,de
    ld   a,(ix+$00)
    ld   ($92F8),a
    ld   a,(ix+$01)
    ld   ($91D8),a
    ret
    ld   hl,$48BB
    call $47C9
    ret
    ld   hl,$48D3
    call $47C9
    ret
    ld   e,(hl)
    inc  hl
    ld   d,(hl)
    inc  hl
    ld   b,(hl)
    inc  hl
    ld   c,(hl)
    inc  hl
    ex   de,hl
    ld   a,(de)
    ld   (hl),a
    set  2,h
    ld   (hl),c
    res  2,h
    inc  de
    push de
    ld   de,$FFE0
    add  hl,de
    pop  de
    djnz $47D2
    ret
    ld   h,$93
    inc  h
    push af
    ld   b,$93
    exx
    push af
    and  $92
    rst  $10
    push af
    add  a,$92
    push de
    push af
    and  (hl)
    sub  d
    out  ($F5),a
    add  a,(hl)
    sub  d
    pop  de
    push af
    ld   h,(hl)
    sub  d
    rst  $08
    push af
    ld   b,(hl)
    sub  d
    call $26F5
    sub  d
    set  6,l
    ld   b,$92
    ret
    push af
    and  $91
    rst  $00
    push af
    add  a,$91
    push bc
    push af
    and  (hl)
    sub  c
    jp   $86F5
    sub  c
    pop  bc
    push af
    ld   h,(hl)
    sub  c
    cp   a
    push af
    ld   b,(hl)
    sub  c
    cp   l
    push af
    ld   h,$91
    cp   e
    push af
    ld   b,$91
    cp   c
    push af
    and  $90
    or   a
    push af
    add  a,$90
    or   l
    push af
    and  (hl)
    sub  b
    or   e
    push af
    daa
    sub  e
    inc  h
    push af
    rlca
    sub  e
    jp   c,$E7F5
    sub  d
    ret  c
    push af
    rst  $00
    sub  d
    sub  $F5
    and  a
    sub  d
    call nc,$87F5
    sub  d
    jp   nc,$67F5
    sub  d
    ret  nc
    push af
    ld   b,a
    sub  d
    adc  a,$F5
    daa
    sub  d
    call z,$07F5
    sub  d
    jp   z,$E7F5
    sub  c
    ret  z
    push af
    rst  $00
    sub  c
    add  a,$F5
    and  a
    sub  c
    call nz,$87F5
    sub  c
    jp   nz,$67F5
    sub  c
    ret  nz
    push af
    ld   b,a
    sub  c
    cp   (hl)
    push af
    daa
    sub  c
    cp   h
    push af
    rlca
    sub  c
    cp   d
    push af
    rst  $20
    sub  b
    cp   b
    push af
    rst  $00
    sub  b
    or   (hl)
    push af
    and  a
    sub  b
    or   h
    push af
    ld   (hl),$93
    inc  d
    add  a,(hl)
 coin_copyright_table: ; INSERT COIN / COIN PLAY / (c)1982 CHUO CO.,LTD (text+VRAM addr+color)
    db   $24, $24, $24, $24, $12, $17, $1C, $0E              ; |    INSE|
    db   $1B, $1D, $24, $24, $0C, $18, $12, $17              ; |RT  COIN|
    db   $24, $24, $24, $24, $38, $93, $14, $82              ; |    ..K.|
    db   $24, $24, $24, $24, $24, $0C, $18, $12              ; |     COI|
    db   $17, $24, $24, $24, $24, $24, $19, $15              ; |N     PL|
    db   $0A, $22, $24, $24, $3A, $93, $14, $80              ; |AY  ..K.|
    db   $24, $24, $24, $24, $24, $24, $24, $24              ; |        |
    db   $24, $24, $24, $24, $24, $24, $24, $24              ; |        |
    db   $24, $24, $24, $24, $7C, $93, $18, $86              ; |    ..O.|
    db   $24, $24, $28, $24, $01, $09, $08, $02              ; |  (c) 1982|
    db   $24, $0C, $11, $1E, $18, $24, $0C, $18              ; | CHUO CO|
    db   $31, $24, $15, $1D, $0D, $2B, $24, $24              ; |., LTD.  |
 debug_draw_check: ; if hw_in_1 & $40 draw debug text at $9100 (else no-op)
    push af
    ld   a,(hw_in_1)
    and  $40
    jp   nz,$48FA
    pop  af
    ret
    ld   hl,$9100
    ld   de,$491A
    ld   b,$0E
    call $490E
    ld   a,(watchdog)
    nop
    nop
    nop
    jp   $48FA
    ld   a,(de)
    ld   (hl),a
    inc  de
    push bc
    ld   bc,$0020
    add  hl,bc
    pop  bc
    djnz $490E
    ret
 licensee_text:  ; font tiles -> VRAM $9100 via draw at $48FA; ROT90 reads "CHUO CO.,LTD"
    db   $24, $0D, $1D, $15, $24, $31, $18, $0C  ; _ D T L _ [.,] O C
    db   $24, $18, $1E, $11, $0C, $24            ; _ O U H C _

    org $4fff
    nop
