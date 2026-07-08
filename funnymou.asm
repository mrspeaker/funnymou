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

                ;;; ============ start of suprmous.x1 =============

0000          	start:
0000  00      	    nop
0001  00      	    nop
0002  00      	    nop
0003  3E00    	    ld   a,$00
0005  3200B0  	    ld   (int_enable),a
0008  C3F107  	    jp   init_game_RAM_test

000B  00      	    nop
000C  00      	    nop
000D  00      	    nop

                done_RAM_test:
000E  3A00B8  	    ld   a,(watchdog)
                _clear_ram:
0011  210080  	    ld   hl,ram_start
0014  3E88    	    ld   a,$88
0016  0E00    	    ld   c,$00
                __i01:
0018  71      	    ld   (hl),c
0019  23      	    inc  hl
001A  BC      	    cp   h
001B  C21800  	    jp   nz,__i01
001E  31FE87  	    ld   sp,stack_location
0021  3A00B8  	    ld   a,(watchdog)
0024  CD339  	    call clear_screen
0027  AF      	    xor  a
0028  0608    	    ld   b,$08
002A  2100B0  	    ld   hl,dip_switch
002D  77      	    ld   (hl),a
002E  23      	    inc  hl
002F  10FC    	    djnz $002D
0031  3A00B0  	    ld   a,(dip_switch)
0034  322080  	    ld   (dsw_raw),a
0037  47      	    ld   b,a
0038  E607    	    and  $07
003A  322580  	    ld   ($8025),a
003D  78      	    ld   a,b
003E  E618    	    and  $18
0040  322680  	    ld   ($8026),a
0043  78      	    ld   a,b
0044  E620    	    and  $20
0046  322880  	    ld   ($8028),a
0049  78      	    ld   a,b
004A  E640    	    and  $40
004C  322780  	    ld   ($8027),a
004F  C38005  	    jp   $0580

zeros               dc   20,0

                ;; Non-Maskable Interrupt handler. Fires every frame
NMI_LOOP        NMI_LOOP:
0066  F5      	    push af
0067  3E00    	    ld   a,$00
0069  3200B0  	    ld   (int_enable),a
006C  C5      	    push bc
006D  D5      	    push de
006E  E5      	    push hl
006F  08      	    ex   af,af' ;'
0070  D9      	    exx
0071  F5      	    push af
0072  C5      	    push bc
0073  D5      	    push de
0074  E5      	    push hl
0075  DDE5    	    push ix
0077  FDE5    	    push iy
0079  00      	    nop
007A  00      	    nop
007B  3A00B8  	    ld   a,(watchdog)
007E  00      	    nop
007F  00      	    nop
0080  00      	    nop
0081  00      	    nop
0082  CD0001  	    call main_loop
0085  00      	    nop
0086  00      	    nop
0087  00      	    nop
0088  00      	    nop
0089  00      	    nop
008A  00      	    nop
008B  FDE1    	    pop  iy
008D  DDE1    	    pop  ix
008F  E1      	    pop  hl
0090  D1      	    pop  de
0091  C1      	    pop  bc
0092  F1      	    pop  af
0093  D9      	    exx
0094  08      	    ex   af,af' ; '
0095  E1      	    pop  hl
0096  D1      	    pop  de
0097  C1      	    pop  bc
0098  3E01    	    ld   a,$01
009A  3200B0  	    ld   (int_enable),a
009D  F1      	    pop  af
009E  C9      	    ret

zeros               dc 97,0

                ;; called from NMI
                main_loop:
0100  00            nop
0101  00            nop
0102  00            nop
0103  CD4307  	    call read_inputs
0106  CD2906  	    call copy_sprites_nop_slide
0109  3A3080  	    ld   a,(is_playing)
010C  A7      	    and  a
010D  C2EB01  	    jp   nz,_no_start_buttons
0110  3A00A8  	    ld   a,(hw_in_1)
0113  E608    	    and  $08    ; 2P plutton
0115  C22301  	    jp   nz,_check_2P
                _has_one_credit:
0118  3A00A8  	    ld   a,(hw_in_1) ; reload in_1. for some reason
011B  E604    	    and  $04    ; 1P button
011D  C25B01  	    jp   nz,start_game_p1
0120  C3EB01  	    jp   _no_start_buttons  ; no buttons
                _check_2P:
0123  3A2380  	    ld   a,(credits)
0126  FE02    	    cp   $02    ; has two?
0128  DA1801  	    jp   c,_has_one_credit
012B  3E02    	    ld   a,$02
012D  323080  	    ld   (is_playing),a
0130  3A2380  	    ld   a,(credits)
0133  D602    	    sub  $02
0135  27      	    daa
0136  322380  	    ld   (credits),a
0139  3E01    	    ld   a,$01
013B  323C80  	    ld   (is_2player),a
013E  3A2680  	    ld   a,($8026)
0141  A7      	    and  a
0142  C25001  	    jp   nz,$0150
0145  3E03    	    ld   a,$03
0147  320082  	    ld   (lives_copy),a
014A  320083  	    ld   ($8300),a
014D  C39301  	    jp   start_game
0150  3E05    	    ld   a,$05
0152  320082  	    ld   (lives_copy),a
0155  320083  	    ld   ($8300),a
0158  C39301  	    jp   start_game

                start_game_p1:
015B  3A2380  	    ld   a,(credits)
015E  A7      	    and  a
015F  CAEB01  	    jp   z,_no_start_buttons
0162  3E01    	    ld   a,$01
0164  323080  	    ld   (is_playing),a
0167  3A2380  	    ld   a,(credits)
016A  D601    	    sub  $01
016C  27      	    daa
016D  322380  	    ld   (credits),a
0170  3E00    	    ld   a,$00
0172  323C80  	    ld   (is_2player),a
0175  3A2680  	    ld   a,($8026)
0178  A7      	    and  a
0179  C28901  	    jp   nz,$0189
017C  3E03    	    ld   a,$03
017E  320082  	    ld   (lives_copy),a
0181  3E00    	    ld   a,$00
0183  320083  	    ld   ($8300),a
0186  C39301  	    jp   start_game
0189  3E05    	    ld   a,$05
018B  320082  	    ld   (lives_copy),a
018E  3E00    	    ld   a,$00
0190  320083  	    ld   ($8300),a

                start_game:
0193  3E00    	    ld   a,$00
0195  210081  	    ld   hl,lives
0198  0603    	    ld   b,$03
                __i02:
019A  77      	    ld   (hl),a
019B  2C      	    inc  l
019C  C29A01  	    jp   nz,__i02
019F  24      	    inc  h
01A0  2C      	    inc  l
01A1  10F7    	    djnz __i02
01A3  3E00    	    ld   a,$00
01A5  323180  	    ld   (cur_player),a
01A8  323280  	    ld   (req_level_done),a
01AB  323380  	    ld   (req_death),a
01AE  323480  	    ld   (p1_done),a
01B1  323580  	    ld   (p2_done),a
01B4  323680  	    ld   (flip_state),a
01B7  323A80  	    ld   ($803A),a
01BA  3EF0    	    ld   a,$F0
01BC  323D80  	    ld   (disp_timer),a
01BF  214080  	    ld   hl,score_add_trig
01C2  3E00    	    ld   a,$00
01C4  060A    	    ld   b,$0A
01C6  77      	    ld   (hl),a
01C7  23      	    inc  hl
01C8  10FC    	    djnz $01C6
01CA  00      	    nop
01CB  0601    	    ld   b,$01
01CD  CDBC07  	    call $07BC
01D0  3E01    	    ld   a,$01
01D2  3203B0  	    ld   (sound_enable),a
01D5  3EE0    	    ld   a,$E0
01D7  3200B8  	    ld   (watchdog),a
01DA  3E01    	    ld   a,$01
01DC  323880  	    ld   (first_turn),a
01DF  3A3980  	    ld   a,(screen_state)
01E2  CBE7    	    set  4,a
01E4  323980  	    ld   (screen_state),a
01E7  00      	    nop
01E8  00      	    nop
01E9  00      	    nop
01EA  00      	    nop

    ;; ....
                _no_start_buttons:
01EB  3A3980  	    ld   a,(screen_state)
01EE  A7      	    and  a
01EF  C0      	    ret  nz
01F0  3A3080  	    ld   a,(is_playing)
01F3  A7      	    and  a
01F4  C2C702  	    jp   nz,game_in_progress
01F7  3A2380  	    ld   a,(credits)
01FA  A7      	    and  a
01FB  C20802  	    jp   nz,show_credits_screen
01FE  3A3B80  	    ld   a,(cur_screen)
0201  A7      	    and  a
0202  C24202  	    jp   nz,next_screen_state
0205  C38802  	    jp   _req_attract
                show_credits_screen:
0208  FE02    	    cp   $02
020A  D21B02  	    jp   nc,$021B
                _press_p1:
020D  3A3B80  	    ld   a,(cur_screen)
0210  FE02    	    cp   SCR_PUSH_P1
0212  C8      	    ret  z
0213  3E01    	    ld   a,$01
0215  323980  	    ld   (screen_state),a
0218  C32902  	    jp   _press_either
                _press_p2:
021B  3A3B80  	    ld   a,(cur_screen)
021E  FE03    	    cp   SCR_PUSH_P1P2
0220  C8      	    ret  z
0221  3E02    	    ld   a,$02
0223  323980  	    ld   (screen_state),a
0226  C32902  	    jp   _press_either
                _press_either:
0229  210081  	    ld   hl,lives
022C  3E00    	    ld   a,$00
022E  0603    	    ld   b,$03
0230  77      	    ld   (hl),a
0231  2C      	    inc  l
0232  C23002  	    jp   nz,$0230
0235  24      	    inc  h
0236  10F8    	    djnz $0230
0238  216880  	    ld   hl,$8068
023B  0606    	    ld   b,$06
023D  77      	    ld   (hl),a
023E  23      	    inc  hl
023F  10FC    	    djnz $023D
0241  C9      	    ret

                next_screen_state: ; pending req_death/req_level_done + cur_screen -> set screen_state request bit
0242  3A3380  	    ld   a,(req_death)
0245  A7      	    and  a
0246  CA5E02  	    jp   z,$025E
0249  3A3B80  	    ld   a,(cur_screen)
024C  FE01    	    cp   SCR_SPLASH
024E  CA7502  	    jp   z,_req_start_play
0251  FE06    	    cp   SCR_GAME
0253  CA9902  	    jp   z,_req_intermission
0256  FE07    	    cp   SCR_GAMBLE
0258  CA8802  	    jp   z,_req_attract
025B  C38802  	    jp   _req_attract
025E  3A3280  	    ld   a,(req_level_done)
0261  A7      	    and  a
0262  CAAA02  	    jp   z,_screen_dispatch
0265  3A3B80  	    ld   a,(cur_screen)
0268  FE06    	    cp   SCR_GAME
026A  CA9902  	    jp   z,_req_intermission
026D  FE07    	    cp   SCR_GAMBLE
026F  CA8802  	    jp   z,_req_attract
0272  C38802  	    jp   _req_attract
                _req_start_play: ; req_death on splash -> set 5 (build maze / START PLAY)
0275  3E00    	    ld   a,$00
0277  323380  	    ld   (req_death),a
027A  323280  	    ld   (req_level_done),a
027D  3A3980  	    ld   a,(screen_state)
0280  CBEF    	    set  5,a
0282  323980  	    ld   (screen_state),a
0285  C32902  	    jp   $0229
                _req_attract:   ; set 7 (attract reset)
0288  3E00    	    ld   a,$00
028A  323380  	    ld   (req_death),a
028D  323280  	    ld   (req_level_done),a
0290  3A3980  	    ld   a,(screen_state)
0293  CBFF    	    set  7,a
0295  323980  	    ld   (screen_state),a
0298  C9      	    ret
                _req_intermission: ; set 6 (level-clear intermission)
0299  3E00    	    ld   a,$00
029B  323380  	    ld   (req_death),a
029E  323280  	    ld   (req_level_done),a
02A1  3A3980  	    ld   a,(screen_state)
02A4  CBF7    	    set  6,a
02A6  323980  	    ld   (screen_state),a
02A9  C9      	    ret
                _screen_dispatch: ; no pending req -> dispatch by cur_screen
02AA  3A3B80  	    ld   a,(cur_screen)
02AD  FE01    	    cp   SCR_SPLASH
02AF  CA9446  	    jp   z,$4694
02B2  FE06    	    cp   SCR_GAME
02B4  CABF02  	    jp   z,$02BF
02B7  FE07    	    cp   SCR_GAMBLE
02B9  CAC302  	    jp   z,$02C3
02BC  C38802  	    jp   _req_attract
02BF  CD9123  	    call $2391
02C2  C9      	    ret
02C3  CD6824  	    call $2468
02C6  C9      	    ret

                game_in_progress:
02C7  CD3806  	    call $0638
02CA  3A3380  	    ld   a,(req_death)
02CD  A7      	    and  a
02CE  C29803  	    jp   nz,$0398
02D1  3A3280  	    ld   a,(req_level_done)
02D4  A7      	    and  a
02D5  C2E004  	    jp   nz,$04E0
02D8  3A3B80  	    ld   a,(cur_screen)
02DB  FE04    	    cp   SCR_GAME_OVER
02DD  CAF502  	    jp   z,_scr_game_over_2
02E0  FE05    	    cp   SCR_READY
02E2  CA6D03  	    jp   z,$036D
02E5  FE06    	    cp   SCR_GAME
02E7  CA9123  	    jp   z,$2391
02EA  FE07    	    cp   SCR_GAMBLE
02EC  CA6824  	    jp   z,$2468
02EF  FE08    	    cp   SCR_LUCKY
02F1  CA5645  	    jp   z,$4556
02F4  C9      	    ret

                _scr_game_over_2:
02F5  3A3D80  	    ld   a,(disp_timer)
02F8  3D      	    dec  a
02F9  323D80  	    ld   (disp_timer),a
02FC  FE7E    	    cp   $7E
02FE  C20803  	    jp   nz,$0308
0301  08      	    ex   af,af' ; '
0302  3EA0    	    ld   a,$A0
0304  3200B8  	    ld   (watchdog),a
0307  08      	    ex   af,af' ; '
0308  FE77    	    cp   $77
030A  C21403  	    jp   nz,$0314
030D  08      	    ex   af,af' ; '
030E  3EE0    	    ld   a,$E0
0310  3200B8  	    ld   (watchdog),a
0313  08      	    ex   af,af' ; '
0314  A7      	    and  a
0315  CA1903  	    jp   z,$0319
0318  C9      	    ret
0319  3A3080  	    ld   a,(is_playing)
031C  FE02    	    cp   $02
031E  CA3203  	    jp   z,$0332
0321  3E00    	    ld   a,$00
0323  323080  	    ld   (is_playing),a
0326  323B80  	    ld   (cur_screen),a ; SCR_NONE
0329  3A3980  	    ld   a,(screen_state)
032C  CBD7    	    set  2,a
032E  323980  	    ld   (screen_state),a
0331  C9      	    ret
0332  3A3180  	    ld   a,(cur_player)
0335  A7      	    and  a
0336  C25303  	    jp   nz,$0353
0339  3E01    	    ld   a,$01
033B  323480  	    ld   (p1_done),a
033E  3A3580  	    ld   a,(p2_done)
0341  A7      	    and  a
0342  C22103  	    jp   nz,$0321
0345  3E01    	    ld   a,$01
0347  323180  	    ld   (cur_player),a
034A  3A3980  	    ld   a,(screen_state)
034D  CBE7    	    set  4,a
034F  323980  	    ld   (screen_state),a
0352  C9      	    ret
0353  3E01    	    ld   a,$01
0355  323580  	    ld   (p2_done),a
0358  3A3480  	    ld   a,(p1_done)
035B  A7      	    and  a
035C  C22103  	    jp   nz,$0321
035F  3E00    	    ld   a,$00
0361  323180  	    ld   (cur_player),a
0364  3A3980  	    ld   a,(screen_state)
0367  CBE7    	    set  4,a
0369  323980  	    ld   (screen_state),a
036C  C9      	    ret
036D  3A3D80  	    ld   a,(disp_timer)
0370  3D      	    dec  a
0371  323D80  	    ld   (disp_timer),a
0374  FE3E    	    cp   $3E
0376  CA8303  	    jp   z,$0383
0379  FE37    	    cp   $37
037B  CA8903  	    jp   z,$0389
037E  A7      	    and  a
037F  CA8F03  	    jp   z,$038F
0382  C9      	    ret
0383  3EA0    	    ld   a,$A0
0385  3200B8  	    ld   (watchdog),a
0388  C9      	    ret
0389  3EE0    	    ld   a,$E0
038B  3200B8  	    ld   (watchdog),a
038E  C9      	    ret
038F  3A3980  	    ld   a,(screen_state)
0392  CBEF    	    set  5,a
0394  323980  	    ld   (screen_state),a
0397  C9      	    ret

0398  3A3B80  	    ld   a,(cur_screen)
039B  FE06    	    cp   SCR_GAME
039D  CAB503  	    jp   z,_scr_game_1
03A0  FE07    	    cp   SCR_GAMBLE
03A2  CAAB03  	    jp   z,_scr_gamble_1
03A5  FE08    	    cp   SCR_LUCKY
03A7  CAAB03  	    jp   z,_scr_gamble_1
03AA  C9      	    ret
                _scr_gamble_1:
03AB  3A3180  	    ld   a,(cur_player)
03AE  A7      	    and  a
03AF  CAC104  	    jp   z,$04C1
03B2  C38B04  	    jp   $048B
                _scr_game_1:
03B5  3A3C80  	    ld   a,(is_2player)
03B8  A7      	    and  a
03B9  C21D04  	    jp   nz,$041D
                ;;; 1p mode
03BC  210081  	    ld   hl,lives
03BF  3E00    	    ld   a,$00
03C1  BE      	    cp   (hl)
03C2  CAE903  	    jp   z,$03E9
03C5  35      	    dec  (hl)   ; lose a life, 1P mode
03C6  210081  	    ld   hl,lives
03C9  110082  	    ld   de,lives_copy
03CC  01FF00  	    ld   bc,$00FF
03CF  EDB0    	    ldir
03D1  3A0081  	    ld   a,(lives)
03D4  A7      	    and  a
03D5  CAE903  	    jp   z,$03E9
03D8  3E00    	    ld   a,$00
03DA  323380  	    ld   (req_death),a
03DD  323280  	    ld   (req_level_done),a
03E0  3A3980  	    ld   a,(screen_state)
03E3  CBE7    	    set  4,a
03E5  323980  	    ld   (screen_state),a
03E8  C9      	    ret
                ;;
03E9  3203B0  	    ld   (sound_enable),a
03EC  3206B0  	    ld   (flip_scr_x),a
03EF  3207B0  	    ld   (flip_scr_y),a
03F2  3E01    	    ld   a,$01
03F4  323480  	    ld   (p1_done),a
03F7  323580  	    ld   (p2_done),a
03FA  210081  	    ld   hl,lives
03FD  0684    	    ld   b,$84
03FF  3E00    	    ld   a,$00
0401  77      	    ld   (hl),a
0402  2C      	    inc  l
0403  C20104  	    jp   nz,$0401
0406  24      	    inc  h
0407  78      	    ld   a,b
0408  BC      	    cp   h
0409  C2FF03  	    jp   nz,$03FF
040C  3E00    	    ld   a,$00
040E  323380  	    ld   (req_death),a
0411  323280  	    ld   (req_level_done),a
0414  3A3980  	    ld   a,(screen_state)
0417  CBDF    	    set  3,a
0419  323980  	    ld   (screen_state),a
041C  C9      	    ret
                ;;; 2p mode
041D  210081  	    ld   hl,lives
0420  3E00    	    ld   a,$00
0422  BE      	    cp   (hl)
0423  CA2704  	    jp   z,$0427
0426  35      	    dec  (hl)   ; lose a life?
0427  3A3180  	    ld   a,(cur_player)
042A  A7      	    and  a
042B  CA3C04  	    jp   z,$043C
042E  210081  	    ld   hl,lives
0431  110083  	    ld   de,$8300
0434  01FF00  	    ld   bc,$00FF
0437  EDB0    	    ldir
0439  C34704  	    jp   $0447
043C  210081  	    ld   hl,lives
043F  110082  	    ld   de,lives_copy
0442  01FF00  	    ld   bc,$00FF
0445  EDB0    	    ldir
0447  3A0081  	    ld   a,(lives)
044A  A7      	    and  a
044B  C27304  	    jp   nz,$0473
044E  3A3180  	    ld   a,(cur_player)
0451  A7      	    and  a
0452  CA5D04  	    jp   z,$045D
0455  3E01    	    ld   a,$01
0457  323580  	    ld   (p2_done),a
045A  C36204  	    jp   $0462
045D  3E01    	    ld   a,$01
045F  323480  	    ld   (p1_done),a
0462  3E00    	    ld   a,$00
0464  323380  	    ld   (req_death),a
0467  323280  	    ld   (req_level_done),a
046A  3A3980  	    ld   a,(screen_state)
046D  CBDF    	    set  3,a
046F  323980  	    ld   (screen_state),a
0472  C9      	    ret
0473  3A3180  	    ld   a,(cur_player)
0476  A7      	    and  a
0477  CA8404  	    jp   z,$0484
047A  3A0082  	    ld   a,(lives_copy)
047D  A7      	    and  a
047E  C2C104  	    jp   nz,$04C1
0481  C38B04  	    jp   $048B
0484  3A0083  	    ld   a,($8300)
0487  A7      	    and  a
0488  CAC104  	    jp   z,$04C1
048B  3A2780  	    ld   a,($8027)
048E  A7      	    and  a
048F  C2A004  	    jp   nz,$04A0
0492  3E00    	    ld   a,$00
0494  323680  	    ld   (flip_state),a
0497  3206B0  	    ld   (flip_scr_x),a
049A  3207B0  	    ld   (flip_scr_y),a
049D  C3AB04  	    jp   $04AB
04A0  3E01    	    ld   a,$01
04A2  323680  	    ld   (flip_state),a
04A5  3206B0  	    ld   (flip_scr_x),a
04A8  3207B0  	    ld   (flip_scr_y),a
04AB  3E00    	    ld   a,$00
04AD  323380  	    ld   (req_death),a
04B0  323280  	    ld   (req_level_done),a
04B3  3E01    	    ld   a,$01
04B5  323180  	    ld   (cur_player),a
04B8  3A3980  	    ld   a,(screen_state)
04BB  CBE7    	    set  4,a
04BD  323980  	    ld   (screen_state),a
04C0  C9      	    ret
04C1  3E00    	    ld   a,$00
04C3  323380  	    ld   (req_death),a
04C6  323280  	    ld   (req_level_done),a
04C9  3E00    	    ld   a,$00
04CB  323680  	    ld   (flip_state),a
04CE  3206B0  	    ld   (flip_scr_x),a
04D1  3207B0  	    ld   (flip_scr_y),a
04D4  323180  	    ld   (cur_player),a
04D7  3A3980  	    ld   a,(screen_state)
04DA  CBE7    	    set  4,a
04DC  323980  	    ld   (screen_state),a
04DF  C9      	    ret
04E0  3A3B80  	    ld   a,(cur_screen)
04E3  FE06    	    cp   $06
04E5  CA0405  	    jp   z,$0504
04E8  FE07    	    cp   $07
04EA  CAEE04  	    jp   z,$04EE
04ED  C9      	    ret
04EE  3E00    	    ld   a,$00
04F0  323280  	    ld   (req_level_done),a
04F3  323380  	    ld   (req_death),a
04F6  3E08    	    ld   a,$08
04F8  323B80  	    ld   (cur_screen),a
04FB  3A3980  	    ld   a,(screen_state)
04FE  CBD7    	    set  2,a
0500  323980  	    ld   (screen_state),a
0503  C9      	    ret
0504  3A0181  	    ld   a,(cur_map)
0507  C601    	    add  a,$01
0509  27      	    daa
050A  320181  	    ld   (cur_map),a
050D  210381  	    ld   hl,$8103
0510  3E00    	    ld   a,$00
0512  06FC    	    ld   b,$FC
0514  77      	    ld   (hl),a
0515  2C      	    inc  l
0516  10FC    	    djnz $0514
0518  3A3180  	    ld   a,(cur_player)
051B  A7      	    and  a
051C  CA2D05  	    jp   z,$052D
051F  210081  	    ld   hl,lives
0522  110083  	    ld   de,$8300
0525  01FF00  	    ld   bc,$00FF
0528  EDB0    	    ldir
052A  C33805  	    jp   $0538
052D  210081  	    ld   hl,lives
0530  110082  	    ld   de,lives_copy
0533  01FF00  	    ld   bc,$00FF
0536  EDB0    	    ldir
0538  3E00    	    ld   a,$00
053A  323280  	    ld   (req_level_done),a
053D  323380  	    ld   (req_death),a
0540  3A3980  	    ld   a,(screen_state)
0543  CBF7    	    set  6,a
0545  323980  	    ld   (screen_state),a
0548  C9      	    ret

zeros               dc   55,0

0580  CDC005  	    call $05C0
0583  CDE205  	    call $05E2
0586  3A00B8  	    ld   a,(watchdog)
0589  00      	    nop
058A  00      	    nop
058B  00      	    nop
058C  3E01    	    ld   a,$01
058E  3200B0  	    ld   (int_enable),a
0591  3202B0  	    ld   (coin_lockout),a
0594  00      	    nop
0595  00      	    nop
0596  00      	    nop
0597  C3D11F  	    jp   $1FD1

                    dc   38,0

05C0  218093  	    ld   hl,$9380
05C3  11FA05  	    ld   de,hud_score_hdr
05C6  061A    	    ld   b,$1A
05C8  CD1D06  	    call $061D
05CB  215F91  	    ld   hl,$915F
05CE  111406  	    ld   de,$0614
05D1  0609    	    ld   b,$09
05D3  CD1D06  	    call $061D
05D6  3E00    	    ld   a,$00
05D8  32C192  	    ld   ($92C1),a
05DB  326190  	    ld   ($9061),a
05DE  328191  	    ld   ($9181),a
05E1  C9      	    ret

05E2  210194  	    ld   hl,$9401
05E5  112000  	    ld   de,$0020
05E8  0620    	    ld   b,$20
05EA  3E82    	    ld   a,$82
05EC  77      	    ld   (hl),a
05ED  19      	    add  hl,de
05EE  10FC    	    djnz $05EC
05F0  211F94  	    ld   hl,$941F
05F3  0610    	    ld   b,$10
05F5  77      	    ld   (hl),a
05F6  19      	    add  hl,de
05F7  10FC    	    djnz $05F5
05F9  C9      	    ret

                hud_score_hdr: ; SCORE-1 / HI-SCORE / SCORE-2 / CREDIT-0 (drawn down columns)
05FA               db   $1C, $0C, $18, $1B, $0E, $2E, $01, $24              ; |SCORE-1 |
0602               db   $24, $11, $12, $2E, $1C, $0C, $18, $1B              ; | HI-SCOR|
060A               db   $0E, $24, $24, $1C, $0C, $18, $1B, $0E              ; |E  SCORE|
0612               db   $2E, $02, $0C, $1B, $0E, $0D, $12, $1D              ; |-2CREDIT|
061A               db   $2E, $00, $24                                       ; |-0 |
061D  1A      	    ld   a,(de)
061E  77      	    ld   (hl),a
061F  D5      	    push de
0620  11E0FF  	    ld   de,$FFE0
0623  19      	    add  hl,de
0624  D1      	    pop  de
0625  13      	    inc  de
0626  10F5    	    djnz $061D
0628  C9      	    ret

                copy_sprites_nop_slide:
0629  00      	    nop
062A  00      	    nop
062B  00      	    nop

                copy_sprites:   ; DMA sprite_mirror ($8000) -> sprite_ram each frame
062C  210080  	    ld   hl,ram_start
062F  114098  	    ld   de,$9840
0632  012000  	    ld   bc,$0020
0635  EDB0    	    ldir
0637  C9      	    ret

0638  00      	    nop
0639  00      	    nop
063A  00      	    nop

                score_add_apply: ; apply pending score_add to score
063B  3A4080  	    ld   a,(score_add_trig)
063E  A7      	    and  a
063F  C8      	    ret  z
0640  AF      	    xor  a
0641  324080  	    ld   (score_add_trig),a
0644  3A3180  	    ld   a,(cur_player)
0647  A7      	    and  a
0648  C25306  	    jp   nz,$0653
064B  214480  	    ld   hl,score_lo
064E  0E00    	    ld   c,$00
0650  C35806  	    jp   $0658
0653  214780  	    ld   hl,$8047
0656  0E01    	    ld   c,$01
0658  114180  	    ld   de,score_add
065B  0603    	    ld   b,$03
065D  AF      	    xor  a
065E  1A      	    ld   a,(de)
065F  8E      	    adc  a,(hl)
0660  27      	    daa
0661  77      	    ld   (hl),a
0662  13      	    inc  de
0663  23      	    inc  hl
0664  10F8    	    djnz $065E
0666  C5      	    push bc
0667  D5      	    push de
0668  3A0281  	    ld   a,($8102)
066B  A7      	    and  a
066C  C28A06  	    jp   nz,$068A
066F  3A2880  	    ld   a,($8028)
0672  A7      	    and  a
0673  C28006  	    jp   nz,$0680
0676  2B      	    dec  hl
0677  7E      	    ld   a,(hl)
0678  FE01    	    cp   $01
067A  DABD06  	    jp   c,$06BD
067D  C3AA06  	    jp   $06AA
0680  2B      	    dec  hl
0681  7E      	    ld   a,(hl)
0682  FE02    	    cp   $02
0684  DABD06  	    jp   c,$06BD
0687  C3AA06  	    jp   $06AA
068A  FE01    	    cp   $01
068C  C2BD06  	    jp   nz,$06BD
068F  3A2880  	    ld   a,($8028)
0692  A7      	    and  a
0693  C2A006  	    jp   nz,$06A0
0696  2B      	    dec  hl
0697  7E      	    ld   a,(hl)
0698  FE05    	    cp   $05
069A  DABD06  	    jp   c,$06BD
069D  C3AA06  	    jp   $06AA
06A0  2B      	    dec  hl
06A1  7E      	    ld   a,(hl)
06A2  FE10    	    cp   $10
06A4  DABD06  	    jp   c,$06BD
06A7  C3AA06  	    jp   $06AA
06AA  3A0081  	    ld   a,(lives)
06AD  C601    	    add  a,$01
06AF  320081  	    ld   (lives),a
06B2  3A0281  	    ld   a,($8102)
06B5  C601    	    add  a,$01
06B7  320281  	    ld   ($8102),a
06BA  CD2E23  	    call draw_lives
06BD  D1      	    pop  de
06BE  C1      	    pop  bc
06BF  1B      	    dec  de
06C0  3E00    	    ld   a,$00
06C2  12      	    ld   (de),a
06C3  1B      	    dec  de
06C4  12      	    ld   (de),a
06C5  1B      	    dec  de
06C6  12      	    ld   (de),a
06C7  00      	    nop
06C8  C3EF06  	    jp   $06EF
06CB  61      	    ld   h,c
06CC  93      	    sub  e
06CD  41      	    ld   b,c
06CE  93      	    sub  e
06CF  219301  	    ld   hl,start_game
06D2  93      	    sub  e
06D3  E1      	    pop  hl
06D4  92      	    sub  d
06D5  C1      	    pop  bc
06D6  92      	    sub  d
06D7  0191E1  	    ld   bc,$E191
06DA  90      	    sub  b
06DB  C1      	    pop  bc
06DC  90      	    sub  b
06DD  A1      	    and  c
06DE  90      	    sub  b
06DF  81      	    add  a,c
06E0  90      	    sub  b
06E1  61      	    ld   h,c
06E2  90      	    sub  b
06E3  219201  	    ld   hl,$0192
06E6  92      	    sub  d
06E7  E1      	    pop  hl
06E8  91      	    sub  c
06E9  C1      	    pop  bc
06EA  91      	    sub  c
06EB  A1      	    and  c
06EC  91      	    sub  c
06ED  81      	    add  a,c
06EE  91      	    sub  c
06EF  79      	    ld   a,c
06F0  A7      	    and  a
06F1  C2FF06  	    jp   nz,$06FF
06F4  DD214680	    ld   ix,score_hi
06F8  21CB06  	    ld   hl,$06CB
06FB  CD0A07  	    call $070A
06FE  C9      	    ret
06FF  DD214980	    ld   ix,$8049
0703  21D706  	    ld   hl,$06D7
0706  CD0A07  	    call $070A
0709  C9      	    ret
070A  0603    	    ld   b,$03
070C  08      	    ex   af,af' ; '
070D  3E06    	    ld   a,$06
070F  08      	    ex   af,af' ; '
0710  DD7E00  	    ld   a,(ix+$00)
0713  4F      	    ld   c,a
0714  0F      	    rrca
0715  0F      	    rrca
0716  0F      	    rrca
0717  0F      	    rrca
0718  CD2407  	    call $0724
071B  79      	    ld   a,c
071C  CD2407  	    call $0724
071F  DD2B    	    dec  ix
0721  10ED    	    djnz $0710
0723  C9      	    ret
0724  5E      	    ld   e,(hl)
0725  23      	    inc  hl
0726  56      	    ld   d,(hl)
0727  23      	    inc  hl
0728  E60F    	    and  $0F
072A  A7      	    and  a
072B  CA3407  	    jp   z,$0734
072E  12      	    ld   (de),a
072F  08      	    ex   af,af' ; '
0730  3E01    	    ld   a,$01
0732  08      	    ex   af,af' ; '
0733  C9      	    ret
0734  08      	    ex   af,af' ; '
0735  FE01    	    cp   $01
0737  C23D07  	    jp   nz,$073D
073A  08      	    ex   af,af' ; '
073B  12      	    ld   (de),a
073C  C9      	    ret
073D  3D      	    dec  a
073E  08      	    ex   af,af' ; '
073F  3E24    	    ld   a,$24
0741  12      	    ld   (de),a
0742  C9      	    ret

                read_inputs:    ; read joystick / coin inputs
0743  FD212080	    ld   iy,dsw_raw
0747  3A00A8  	    ld   a,(hw_in_1)
074A  FD7701  	    ld   (iy+$01),a
074D  4F      	    ld   c,a
074E  0600    	    ld   b,$00
0750  E601    	    and  $01
0752  CA5B07  	    jp   z,$075B
0755  FD7709  	    ld   (iy+$09),a
0758  C39607  	    jp   $0796
075B  FD7E09  	    ld   a,(iy+$09)
075E  A7      	    and  a
075F  CA9607  	    jp   z,$0796
0762  FD360900	    ld   (iy+$09),$00
0766  FD7E05  	    ld   a,(iy+$05)
0769  07      	    rlca
076A  5F      	    ld   e,a
076B  1600    	    ld   d,$00
076D  DD21D507	    ld   ix,$07D5
0771  DD19    	    add  ix,de
0773  DD7E00  	    ld   a,(ix+$00)
0776  FD3404  	    inc  (iy+$04)
0779  FDBE04  	    cp   (iy+$04)
077C  C29607  	    jp   nz,$0796
077F  FD360400	    ld   (iy+$04),$00
0783  DD7E01  	    ld   a,(ix+$01)
0786  04      	    inc  b
0787  FD8603  	    add  a,(iy+$03)
078A  27      	    daa
078B  FE09    	    cp   $09
078D  CAE507  	    jp   z,$07E5
0790  D2E507  	    jp   nc,$07E5
0793  FD7703  	    ld   (iy+$03),a
0796  79      	    ld   a,c
0797  E602    	    and  $02
0799  CAA207  	    jp   z,$07A2
079C  FD770A  	    ld   (iy+$0a),a
079F  C3BC07  	    jp   $07BC
07A2  FD7E0A  	    ld   a,(iy+$0a)
07A5  A7      	    and  a
07A6  CABC07  	    jp   z,$07BC
07A9  AF      	    xor  a
07AA  FD770A  	    ld   (iy+$0a),a
07AD  FD7E03  	    ld   a,(iy+$03)
07B0  FE09    	    cp   $09
07B2  D2E507  	    jp   nc,$07E5
07B5  04      	    inc  b
07B6  C601    	    add  a,$01
07B8  27      	    daa
07B9  FD7703  	    ld   (iy+$03),a
07BC  78      	    ld   a,b
07BD  A7      	    and  a
07BE  C8      	    ret  z
07BF  3A2380  	    ld   a,(credits)
07C2  47      	    ld   b,a
07C3  E60F    	    and  $0F
07C5  327F90  	    ld   ($907F),a
07C8  78      	    ld   a,b
07C9  0F      	    rrca
07CA  0F      	    rrca
07CB  0F      	    rrca
07CC  0F      	    rrca
07CD  E60F    	    and  $0F
07CF  3E24    	    ld   a,$24
07D1  325F90  	    ld   ($905F),a
07D4  C9      	    ret
07D5  02      	    ld   (bc),a
07D6  010101  	    ld   bc,$0101
07D9  010201  	    ld   bc,$0102
07DC  03      	    inc  bc
07DD  010401  	    ld   bc,$0104
07E0  05      	    dec  b
07E1  010601  	    ld   bc,$0106
07E4  07      	    rlca
07E5  FD360309	    ld   (iy+$03),$09
07E9  AF      	    xor  a
07EA  3202B0  	    ld   (coin_lockout),a
07ED  04      	    inc  b
07EE  C3BC07  	    jp   $07BC

                init_game_RAM_test:      ; RAM test
07F1  3A00B8  	    ld   a,(watchdog)
07F4  210090  	    ld   hl,screen_ram
07F7  0604    	    ld   b,$04
07F9  3E24    	    ld   a,$24
07FB  77      	    ld   (hl),a
07FC  2C      	    inc  l
07FD  C2FB07  	    jp   nz,$07FB
0800  3A00B8  	    ld   a,(watchdog)
0803  24      	    inc  h
0804  10F3    	    djnz $07F9
0806  210094  	    ld   hl,$9400
0809  0604    	    ld   b,$04
080B  3E80    	    ld   a,$80
080D  77      	    ld   (hl),a
080E  2C      	    inc  l
080F  C20D08  	    jp   nz,$080D
0812  3A00B8  	    ld   a,(watchdog)
0815  24      	    inc  h
0816  10F3    	    djnz $080B
0818  210098  	    ld   hl,x_offset
081B  3600    	    ld   (hl),$00
081D  2C      	    inc  l
081E  C21B08  	    jp   nz,$081B
0821  2100B0  	    ld   hl,dip_switch
0824  0608    	    ld   b,$08
0826  3600    	    ld   (hl),$00
0828  2C      	    inc  l
0829  10FB    	    djnz $0826
082B  3A00B8  	    ld   a,(watchdog)
082E  1600    	    ld   d,$00
0830  0E20    	    ld   c,$20
0832  210080  	    ld   hl,ram_start
0835  0608    	    ld   b,$08
0837  79      	    ld   a,c
0838  C62F    	    add  a,$2F
083A  77      	    ld   (hl),a
083B  2C      	    inc  l
083C  20FA    	    jr   nz,$0838
083E  3C      	    inc  a
083F  24      	    inc  h
0840  10F6    	    djnz $0838
0842  210080  	    ld   hl,ram_start
0845  0608    	    ld   b,$08
0847  3A00B8  	    ld   a,(watchdog)
084A  79      	    ld   a,c
084B  C62F    	    add  a,$2F
084D  BE      	    cp   (hl)
084E  C2DD08  	    jp   nz,$08DD
0851  2C      	    inc  l
0852  20F7    	    jr   nz,$084B
0854  3C      	    inc  a
0855  24      	    inc  h
0856  10F3    	    djnz $084B
0858  3A00B8  	    ld   a,(watchdog)
085B  0D      	    dec  c
085C  20D4    	    jr   nz,$0832
085E  14      	    inc  d
085F  0E20    	    ld   c,$20
0861  210090  	    ld   hl,screen_ram
0864  0604    	    ld   b,$04
0866  79      	    ld   a,c
0867  C62F    	    add  a,$2F
0869  77      	    ld   (hl),a
086A  2C      	    inc  l
086B  20FA    	    jr   nz,$0867
086D  3C      	    inc  a
086E  24      	    inc  h
086F  10F6    	    djnz $0867
0871  3A00B8  	    ld   a,(watchdog)
0874  210090  	    ld   hl,screen_ram
0877  0604    	    ld   b,$04
0879  79      	    ld   a,c
087A  C62F    	    add  a,$2F
087C  BE      	    cp   (hl)
087D  C2DD08  	    jp   nz,$08DD
0880  2C      	    inc  l
0881  20F7    	    jr   nz,$087A
0883  3C      	    inc  a
0884  24      	    inc  h
0885  10F3    	    djnz $087A
0887  3A00B8  	    ld   a,(watchdog)
088A  0D      	    dec  c
088B  20D4    	    jr   nz,$0861
088D  14      	    inc  d
088E  0E20    	    ld   c,$20
0890  210094  	    ld   hl,$9400
0893  0604    	    ld   b,$04
0895  79      	    ld   a,c
0896  C62F    	    add  a,$2F
0898  77      	    ld   (hl),a
0899  2C      	    inc  l
089A  20FA    	    jr   nz,$0896
089C  3C      	    inc  a
089D  24      	    inc  h
089E  10F6    	    djnz $0896
08A0  210094  	    ld   hl,$9400
08A3  0604    	    ld   b,$04
08A5  79      	    ld   a,c
08A6  C62F    	    add  a,$2F
08A8  BE      	    cp   (hl)
08A9  C2DD08  	    jp   nz,$08DD
08AC  2C      	    inc  l
08AD  20F7    	    jr   nz,$08A6
08AF  3C      	    inc  a
08B0  24      	    inc  h
08B1  10F3    	    djnz $08A6
08B3  3A00B8  	    ld   a,(watchdog)
08B6  0D      	    dec  c
08B7  20D7    	    jr   nz,$0890
08B9  14      	    inc  d
08BA  0E20    	    ld   c,$20
08BC  210098  	    ld   hl,x_offset
08BF  79      	    ld   a,c
08C0  C62F    	    add  a,$2F
08C2  77      	    ld   (hl),a
08C3  2C      	    inc  l
08C4  20FA    	    jr   nz,$08C0
08C6  210098  	    ld   hl,x_offset
08C9  79      	    ld   a,c
08CA  C62F    	    add  a,$2F
08CC  BE      	    cp   (hl)
08CD  C2DD08  	    jp   nz,$08DD
08D0  2C      	    inc  l
08D1  C2CA08  	    jp   nz,$08CA
08D4  3A00B8  	    ld   a,(watchdog)
08D7  0D      	    dec  c
08D8  20E2    	    jr   nz,$08BC
08DA  C30E00  	    jp   done_RAM_test
08DD  210509  	    ld   hl,$0905
08E0  7A      	    ld   a,d
08E1  A7      	    and  a
08E2  2805    	    jr   z,$08E9
08E4  23      	    inc  hl
08E5  23      	    inc  hl
08E6  3D      	    dec  a
08E7  20FB    	    jr   nz,$08E4
08E9  31FE87  	    ld   sp,stack_location
08EC  E5      	    push hl
08ED  CD3309  	    call $0933
08F0  E1      	    pop  hl
08F1  5E      	    ld   e,(hl)
08F2  23      	    inc  hl
08F3  56      	    ld   d,(hl)
08F4  215092  	    ld   hl,$9250
08F7  01E0FF  	    ld   bc,$FFE0
08FA  1A      	    ld   a,(de)
08FB  FEFF    	    cp   $FF
08FD  CA2D09  	    jp   z,$092D
0900  77      	    ld   (hl),a
0901  13      	    inc  de
0902  09      	    add  hl,bc
0903  18F5    	    jr   $08FA
0905  0D      	    dec  c
0906  09      	    add  hl,bc
0907  15      	    dec  d
0908  09      	    add  hl,bc
0909  1D      	    dec  e
090A  09      	    add  hl,bc
090B  25      	    dec  h
090C  09      	    add  hl,bc
                str_ram_test_msgs: ; boot self-test fail: sRAM/vRAM/cRAM/oRAM 'NG' ($FF-term)
090D               db   $1C, $1B, $0A, $16, $24, $17, $10, $FF              ; |SRAM NG||
0915               db   $1F, $1B, $0A, $16, $24, $17, $10, $FF              ; |VRAM NG||
091D               db   $0C, $1B, $0A, $16, $24, $17, $10, $FF              ; |CRAM NG||
0925               db   $18, $1B, $0A, $16, $24, $17, $10, $FF              ; |ORAM NG||
092D  3A00B8  	    ld   a,(watchdog) ; infinite loop
0930  C32D09  	    jp   $092D

                clear_screen:
0933  3A00B8  	    ld   a,(watchdog)
0936  210090  	    ld   hl,screen_ram
0939  0604    	    ld   b,$04
093B  3624    	    ld   (hl),TILE_BLANK
093D  2C      	    inc  l
093E  20FB    	    jr   nz,$093B
0940  24      	    inc  h
0941  10F8    	    djnz $093B
0943  3A00B8  	    ld   a,(watchdog)
0946  210094  	    ld   hl,$9400
0949  0604    	    ld   b,$04
094B  3680    	    ld   (hl),$80
094D  2C      	    inc  l
094E  20FB    	    jr   nz,$094B
0950  24      	    inc  h
0951  10F8    	    djnz $094B
0953  3A00B8  	    ld   a,(watchdog)
0956  210098  	    ld   hl,x_offset
0959  3600    	    ld   (hl),$00
095B  2C      	    inc  l
095C  20FB    	    jr   nz,$0959
095E  3A00B8  	    ld   a,(watchdog)
0961  C9      	    ret
0962  00      	    nop
0963  00      	    nop
0964  00      	    nop
0965  21CE92  	    ld   hl,$92CE
0968  060D    	    ld   b,$0D
096A  11A109  	    ld   de,str_please_press
096D  CD9509  	    call $0995
0970  21CE96  	    ld   hl,$96CE
0973  CD8A09  	    call $098A
0976  21CF92  	    ld   hl,$92CF
0979  060D    	    ld   b,$0D
097B  11AE09  	    ld   de,$09AE
097E  CD9509  	    call $0995
0981  21CF96  	    ld   hl,$96CF
0984  CD8A09  	    call $098A
0987  00      	    nop
0988  00      	    nop
0989  C9      	    ret
098A  11E0FF  	    ld   de,$FFE0
098D  060D    	    ld   b,$0D
098F  3687    	    ld   (hl),$87
0991  19      	    add  hl,de
0992  10FB    	    djnz $098F
0994  C9      	    ret
0995  C5      	    push bc
0996  01E0FF  	    ld   bc,$FFE0
0999  1A      	    ld   a,(de)
099A  77      	    ld   (hl),a
099B  09      	    add  hl,bc
099C  13      	    inc  de
099D  C1      	    pop  bc
099E  10F5    	    djnz $0995
09A0  C9      	    ret
                str_please_press: ; 'PLEASE PRESS SHOT BUTTON' attract prompt
09A1               db   $24, $19, $15, $0E, $0A, $1C, $0E, $24              ; | PLEASE |
09A9               db   $19, $1B, $0E, $1C, $1C, $24, $1C, $11              ; |PRESS SH|
09B1               db   $18, $1D, $24, $0B, $1E, $1D, $1D, $18              ; |OT BUTTO|
09B9               db   $17, $24                                            ; |N |
                draw_intermission:  ; blit intermission screen ($1C x $1D) to VRAM $9043 via blit_rect_up
09BB  00      	    nop
09BC  00      	    nop
09BD  00      	    nop
09BE  214390  	    ld   hl,$9043
09C1  061C    	    ld   b,$1C
09C3  0E1D    	    ld   c,$1D
09C5  11EF09  	    ld   de,intermission_screen
09C8  CDDC09  	    call blit_rect_up
09CB  214394  	    ld   hl,$9443
09CE  061C    	    ld   b,$1C
09D0  0E1D    	    ld   c,$1D
09D2  11FF0C  	    ld   de,intermission_screen_color
09D5  CDDC09  	    call blit_rect_up
09D8  CD6209  	    call $0962
09DB  C9      	    ret

                blit_rect_up: ; blit_rect clone (row stride -$20), used by draw_intermission
09DC  C5      	    push bc
09DD  E5      	    push hl
09DE  1A      	    ld   a,(de)
09DF  77      	    ld   (hl),a
09E0  23      	    inc  hl
09E1  13      	    inc  de
09E2  10FA    	    djnz $09DE
09E4  E1      	    pop  hl
09E5  012000  	    ld   bc,$0020
09E8  09      	    add  hl,bc
09E9  C1      	    pop  bc
09EA  0D      	    dec  c
09EB  C2DC09  	    jp   nz,$09DC
09EE  C9      	    ret

                intermission_screen:
09EF               db   $24, $24, $24, $24, $24, $24, $24, $24
09F7               db   $24, $24, $A1, $A2, $A2, $24, $00, $24
09FF               db   $24, $24, $00, $24, $24, $24, $00, $24
0A07               db   $24, $24, $00, $24, $24, $24, $24, $24
0A0F               db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
0A17               db   $A2, $24, $00, $24, $24, $24, $00, $24
0A1F               db   $24, $24, $00, $24, $24, $24, $00, $24
0A27               db   $24, $24, $24, $24, $24, $24, $24, $24
0A2F               db   $9E, $9F, $A0, $A2, $A2, $24, $08, $24
0A37               db   $24, $24, $04, $24, $24, $24, $06, $24
0A3F               db   $24, $24, $02, $24, $24, $24, $24, $24
0A47               db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
0A4F               db   $A2, $24, $24, $24, $24, $24, $24, $24
0A57               db   $24, $24, $24, $24, $24, $24, $24, $24
0A5F               db   $24, $24, $24, $24, $24, $24, $24, $24
0A67               db   $9E, $9F, $A0, $A2, $A2, $48, $49, $4A
0A6F               db   $24, $24, $24, $24, $24, $92, $93, $94
0A77               db   $24, $24, $24, $24, $24, $24, $24, $24
0A7F               db   $24, $24, $24, $24, $24, $24, $A1, $A2
0A87               db   $A2, $4B, $4C, $4D, $24, $24, $A7, $24
0A8F               db   $24, $95, $96, $97, $24, $24, $A7, $24
0A97               db   $24, $24, $A4, $A6, $A6, $A6, $A6, $A6
0A9F               db   $A6, $A6, $A6, $A2, $A2, $4E, $4F, $50
0AA7               db   $24, $24, $24, $24, $24, $98, $99, $9A
0AAF               db   $24, $24, $24, $24, $24, $A4, $A3, $A6
0AB7               db   $A6, $A6, $A6, $A6, $A6, $A6, $A6, $A2
0ABF               db   $A2, $48, $49, $4A, $24, $48, $49, $4A
0AC7               db   $24, $92, $93, $94, $24, $92, $93, $94
0ACF               db   $A4, $A3, $A3, $A6, $A8, $A9, $A9, $A9
0AD7               db   $AA, $A6, $A6, $A2, $A2, $4B, $4C, $4D
0ADF               db   $24, $4B, $4C, $4D, $24, $95, $96, $97
0AE7               db   $24, $95, $96, $97, $A3, $A3, $A3, $A6
0AEF               db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
0AF7               db   $A2, $4E, $4F, $50, $24, $4E, $4F, $50
0AFF               db   $24, $98, $99, $9A, $24, $98, $99, $9A
0B07               db   $A3, $A3, $A3, $A6, $AB, $24, $24, $24
0B0F               db   $AC, $A6, $A6, $A2, $A2, $48, $49, $4A
0B17               db   $24, $48, $49, $4A, $24, $92, $93, $94
0B1F               db   $24, $92, $93, $94, $A3, $A3, $A3, $A6
0B27               db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
0B2F               db   $A2, $4B, $4C, $4D, $24, $4B, $4C, $4D
0B37               db   $24, $95, $96, $97, $24, $95, $96, $97
0B3F               db   $A3, $A3, $A3, $A6, $AD, $AE, $AE, $AE
0B47               db   $AF, $A6, $A6, $A2, $A2, $4E, $4F, $50
0B4F               db   $24, $4E, $4F, $50, $24, $98, $99, $9A
0B57               db   $24, $98, $99, $9A, $A3, $A3, $A3, $A6
0B5F               db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
0B67               db   $A2, $24, $24, $24, $24, $24, $24, $24
0B6F               db   $24, $24, $24, $24, $24, $24, $24, $24
0B77               db   $A3, $A3, $A3, $A6, $AB, $24, $24, $24
0B7F               db   $AC, $A6, $A6, $A2, $A2, $24, $24, $24
0B87               db   $24, $24, $24, $24, $24, $24, $24, $24
0B8F               db   $24, $24, $24, $24, $A3, $A3, $A3, $A6
0B97               db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
0B9F               db   $A2, $24, $00, $24, $24, $24, $00, $24
0BA7               db   $24, $24, $00, $24, $24, $24, $00, $24
0BAF               db   $A3, $A3, $A3, $A6, $AD, $AE, $AE, $AE
0BB7               db   $AF, $A6, $A6, $A2, $A2, $24, $00, $24
0BBF               db   $24, $24, $00, $24, $24, $24, $00, $24
0BC7               db   $24, $24, $00, $24, $A3, $A3, $A3, $A6
0BCF               db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
0BD7               db   $A2, $24, $05, $24, $24, $24, $08, $24
0BDF               db   $24, $24, $00, $24, $24, $24, $05, $24
0BE7               db   $A3, $A3, $A3, $A6, $AB, $24, $24, $24
0BEF               db   $AC, $A6, $A6, $A2, $A2, $24, $01, $24
0BF7               db   $24, $24, $24, $24, $24, $24, $01, $24
0BFF               db   $24, $24, $24, $24, $A3, $A3, $A3, $A6
0C07               db   $AB, $24, $24, $24, $AC, $A6, $A6, $A2
0C0F               db   $A2, $80, $81, $82, $24, $24, $24, $24
0C17               db   $24, $89, $8A, $8B, $24, $24, $24, $24
0C1F               db   $A5, $A3, $A3, $A6, $B0, $B1, $B1, $B1
0C27               db   $B2, $A6, $A6, $A2, $A2, $83, $84, $85
0C2F               db   $24, $24, $A7, $24, $24, $8C, $8D, $8E
0C37               db   $24, $24, $A7, $24, $24, $A5, $A3, $A6
0C3F               db   $A6, $A6, $A6, $A6, $A6, $A6, $A6, $A2
0C47               db   $A2, $86, $87, $88, $24, $24, $24, $24
0C4F               db   $24, $8F, $90, $91, $24, $24, $24, $24
0C57               db   $24, $24, $A5, $A6, $A6, $A6, $A6, $A6
0C5F               db   $A6, $A6, $A6, $A2, $A2, $80, $81, $82
0C67               db   $24, $80, $81, $82, $24, $89, $8A, $8B
0C6F               db   $24, $89, $8A, $8B, $24, $24, $24, $24
0C77               db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
0C7F               db   $A2, $83, $84, $85, $24, $83, $84, $85
0C87               db   $24, $8C, $8D, $8E, $24, $8C, $8D, $8E
0C8F               db   $24, $24, $24, $24, $24, $24, $24, $24
0C97               db   $9E, $9F, $A0, $A2, $A2, $86, $87, $88
0C9F               db   $24, $86, $87, $88, $24, $8F, $90, $91
0CA7               db   $24, $8F, $90, $91, $24, $24, $24, $24
0CAF               db   $24, $24, $24, $24, $9B, $9C, $9D, $A2
0CB7               db   $A2, $80, $81, $82, $24, $80, $81, $82
0CBF               db   $24, $89, $8A, $8B, $24, $89, $8A, $8B
0CC7               db   $24, $24, $24, $24, $24, $24, $24, $24
0CCF               db   $9E, $9F, $A0, $A2, $A2, $83, $84, $85
0CD7               db   $24, $83, $84, $85, $24, $8C, $8D, $8E
0CDF               db   $24, $8C, $8D, $8E, $24, $24, $24, $24
0CE7               db   $24, $24, $24, $24, $24, $24, $A1, $A2
0CEF               db   $A2, $86, $87, $88, $24, $86, $87, $88
0CF7               db   $24, $8F, $90, $91, $24, $8F, $90, $91
                intermission_screen_color:
0CFF               db   $83, $83, $83, $83, $83, $83, $83, $83
0D07               db   $83, $83, $81, $81, $81, $80, $86, $80
0D0F               db   $80, $80, $86, $80, $80, $80, $86, $80
0D17               db   $80, $80, $86, $80, $83, $83, $83, $83
0D1F               db   $83, $83, $83, $83, $81, $81, $81, $81
0D27               db   $81, $80, $86, $80, $80, $80, $86, $80
0D2F               db   $80, $80, $86, $80, $80, $80, $86, $80
0D37               db   $83, $83, $83, $83, $83, $83, $83, $83
0D3F               db   $81, $81, $81, $81, $81, $80, $86, $80
0D47               db   $80, $80, $86, $80, $80, $80, $86, $80
0D4F               db   $80, $80, $86, $80, $83, $83, $83, $83
0D57               db   $83, $83, $83, $83, $81, $81, $81, $81
0D5F               db   $81, $80, $80, $80, $80, $80, $80, $80
0D67               db   $80, $80, $80, $80, $80, $80, $80, $80
0D6F               db   $83, $83, $83, $83, $83, $83, $83, $83
0D77               db   $81, $81, $81, $81, $81, $87, $87, $87
0D7F               db   $80, $80, $80, $80, $80, $86, $86, $86
0D87               db   $80, $80, $80, $80, $83, $83, $83, $83
0D8F               db   $83, $83, $83, $83, $83, $83, $81, $81
0D97               db   $81, $87, $87, $87, $80, $80, $87, $80
0D9F               db   $80, $86, $86, $86, $80, $80, $87, $80
0DA7               db   $83, $83, $83, $86, $86, $86, $86, $86
0DAF               db   $86, $86, $86, $81, $81, $87, $87, $87
0DB7               db   $80, $80, $80, $80, $80, $86, $86, $86
0DBF               db   $80, $80, $80, $80, $83, $83, $83, $86
0DC7               db   $86, $86, $86, $86, $86, $86, $86, $81
0DCF               db   $81, $87, $87, $87, $80, $87, $87, $87
0DD7               db   $80, $86, $86, $86, $80, $86, $86, $86
0DDF               db   $83, $83, $83, $86, $85, $85, $85, $85
0DE7               db   $85, $86, $86, $81, $81, $87, $87, $87
0DEF               db   $80, $87, $87, $87, $80, $86, $86, $86
0DF7               db   $80, $86, $86, $86, $83, $83, $83, $86
0DFF               db   $85, $80, $80, $80, $85, $86, $86, $81
0E07               db   $81, $87, $87, $87, $80, $87, $87, $87
0E0F               db   $80, $86, $86, $86, $80, $86, $86, $86
0E17               db   $83, $83, $83, $86, $85, $80, $80, $80
0E1F               db   $85, $86, $86, $81, $81, $87, $87, $87
0E27               db   $80, $87, $87, $87, $80, $86, $86, $86
0E2F               db   $80, $86, $86, $86, $83, $83, $83, $86
0E37               db   $85, $80, $80, $80, $85, $86, $86, $81
0E3F               db   $81, $87, $87, $87, $80, $87, $87, $87
0E47               db   $80, $86, $86, $86, $80, $86, $86, $86
0E4F               db   $83, $83, $83, $86, $85, $85, $85, $85
0E57               db   $85, $86, $86, $81, $81, $87, $87, $87
0E5F               db   $80, $87, $87, $87, $80, $86, $86, $86
0E67               db   $80, $86, $86, $86, $83, $83, $83, $86
0E6F               db   $85, $80, $80, $80, $85, $86, $86, $81
0E77               db   $81, $80, $80, $80, $80, $80, $80, $80
0E7F               db   $80, $80, $80, $80, $80, $80, $80, $80
0E87               db   $83, $83, $83, $86, $85, $80, $80, $80
0E8F               db   $85, $86, $86, $81, $81, $80, $80, $80
0E97               db   $80, $80, $80, $80, $80, $80, $80, $80
0E9F               db   $80, $80, $80, $80, $83, $83, $83, $86
0EA7               db   $85, $80, $80, $80, $85, $86, $86, $81
0EAF               db   $81, $80, $86, $80, $80, $80, $86, $80
0EB7               db   $80, $80, $86, $80, $80, $80, $86, $80
0EBF               db   $83, $83, $83, $86, $85, $85, $85, $85
0EC7               db   $85, $86, $86, $81, $81, $80, $86, $80
0ECF               db   $80, $80, $86, $80, $80, $80, $86, $80
0ED7               db   $80, $80, $86, $80, $83, $83, $83, $86
0EDF               db   $85, $80, $80, $80, $85, $86, $86, $81
0EE7               db   $81, $80, $86, $80, $80, $80, $86, $80
0EEF               db   $80, $80, $86, $80, $80, $80, $86, $80
0EF7               db   $83, $83, $83, $86, $85, $80, $80, $80
0EFF               db   $85, $86, $86, $81, $81, $80, $86, $80
0F07               db   $80, $80, $80, $80, $80, $80, $86, $80
0F0F               db   $80, $80, $80, $80, $83, $83, $83, $86
0F17               db   $85, $80, $80, $80, $85, $86, $86, $81
0F1F               db   $81, $84, $84, $84, $80, $80, $80, $80
0F27               db   $80, $86, $86, $86, $80, $80, $80, $80
0F2F               db   $83, $83, $83, $86, $85, $85, $85, $85
0F37               db   $85, $86, $86, $81, $81, $84, $84, $84
0F3F               db   $80, $80, $87, $80, $80, $86, $86, $86
0F47               db   $80, $80, $87, $80, $83, $83, $83, $86
0F4F               db   $86, $86, $86, $86, $86, $86, $86, $81
0F57               db   $81, $84, $84, $84, $80, $80, $80, $80
0F5F               db   $80, $86, $86, $86, $80, $80, $80, $80
0F67               db   $83, $83, $83, $86, $86, $86, $86, $86
0F6F               db   $86, $86, $86, $81, $81, $84, $84, $84
0F77               db   $80, $84, $84, $84, $80, $86, $86, $86
0F7F               db   $80, $86, $86, $86, $83, $83, $83, $83
0F87               db   $83, $83, $83, $83, $81, $81, $81, $81
0F8F               db   $81, $84, $84, $84, $80, $84, $84, $84
0F97               db   $80, $86, $86, $86, $80, $86, $86, $86
0F9F               db   $83, $83, $83, $83, $83, $83, $83, $83
0FA7               db   $81, $81, $81, $81, $81, $84, $84, $84
0FAF               db   $80, $84, $84, $84, $80, $86, $86, $86
0FB7               db   $80, $86, $86, $86, $83, $83, $83, $83
0FBF               db   $83, $83, $83, $83, $81, $81, $81, $81
0FC7               db   $81, $84, $84, $84, $80, $84, $84, $84
0FCF               db   $80, $86, $86, $86, $80, $86, $86, $86
0FD7               db   $83, $83, $83, $83, $83, $83, $83, $83
0FDF               db   $81, $81, $81, $81, $81, $84, $84, $84
0FE7               db   $80, $84, $84, $84, $80, $86, $86, $86
0FEF               db   $80, $86, $86, $86, $83, $83, $83, $83
0FF7               db   $83, $83, $83, $83, $83, $83, $81, $81
0FFF               db   $81
                ;;; ============ start of suprmous.x2 =============
1000               db   $84, $84, $84, $80, $84, $84, $84
1007               db   $80, $86, $86, $86, $80, $86, $86, $86

                bomb_update: ; drop / arm+detonate / explode dispatch
100F  3A3E80  	    ld   a,(endlevel_active)
1012  A7      	    and  a
1013  C23810  	    jp   nz,$1038
1016  3A1F84  	    ld   a,($841F)
1019  FE02    	    cp   $02
101B  CA3810  	    jp   z,$1038
101E  3A1F84  	    ld   a,($841F)
1021  FE00    	    cp   $00
1023  CA3810  	    jp   z,$1038
1026  3A8086  	    ld   a,(bomb_placed)
1029  A7      	    and  a
102A  C2ED10  	    jp   nz,$10ED
102D  328386  	    ld   (bomb_lethal),a
1030  3A7F86  	    ld   a,(bombs)
1033  A7      	    and  a
1034  C8      	    ret  z
1035  C34610  	    jp   $1046
                bomb_clear: ; zero the 16-byte bomb block $8680
1038  218086  	    ld   hl,bomb_placed
103B  3E00    	    ld   a,$00
103D  0610    	    ld   b,$10
103F  77      	    ld   (hl),a
1040  23      	    inc  hl
1041  10FC    	    djnz $103F
1043  C3D610  	    jp   $10D6
1046  3AC185  	    ld   a,(boulder_req)
1049  A7      	    and  a
104A  C0      	    ret  nz
104B  3A0184  	    ld   a,(controls)
104E  E610    	    and  $10    ; fire pressed?
1050  C8      	    ret  z
1051  CD1B25  	    call get_player_tile_pos
1054  11E2FF  	    ld   de,$FFE2
1057  19      	    add  hl,de
1058  7E      	    ld   a,(hl)
1059  FEF0    	    cp   $F0
105B  D8      	    ret  c
105C  3A7F86  	    ld   a,(bombs) ;(only here when holding a bomb
105F  A7      	    and  a
1060  C8      	    ret  z      ; out of bombs
1061  D601    	    sub  $01    ; use a bomb
1063  327F86  	    ld   (bombs),a
1066  CD6C10  	    call bomb_count_redraw
1069  C39E10  	    jp   $109E

                ;; drop bomb?
                bomb_count_redraw: ; redraw on-screen bomb-count row ($91C3/$95C3)
106C  E5      	    push hl
106D  D5      	    push de
106E  C5      	    push bc
106F  F5      	    push af
1070  21C391  	    ld   hl,$91C3
1073  3A7F86  	    ld   a,(bombs)
1076  0E06    	    ld   c,$06
1078  112000  	    ld   de,$0020
107B  A7      	    and  a
107C  CA8710  	    jp   z,$1087
107F  47      	    ld   b,a
1080  3E32    	    ld   a,$32
1082  77      	    ld   (hl),a
1083  19      	    add  hl,de
1084  0D      	    dec  c
1085  10FB    	    djnz $1082
1087  3624    	    ld   (hl),$24
1089  19      	    add  hl,de
108A  0D      	    dec  c
108B  C28710  	    jp   nz,$1087
108E  21C395  	    ld   hl,$95C3
1091  3E86    	    ld   a,$86
1093  0605    	    ld   b,$05
1095  77      	    ld   (hl),a
1096  19      	    add  hl,de
1097  10FC    	    djnz $1095
1099  F1      	    pop  af
109A  C1      	    pop  bc
109B  D1      	    pop  de
109C  E1      	    pop  hl
109D  C9      	    ret

                ;; (after?) set bomb?
109E  3E00    	    ld   a,$00
10A0  328386  	    ld   (bomb_lethal),a
10A3  328186  	    ld   ($8681),a
10A6  328286  	    ld   ($8682),a
10A9  328886  	    ld   ($8688),a
10AC  328986  	    ld   ($8689),a
10AF  328A86  	    ld   (bomb_set_timer),a
10B2  328B86  	    ld   (bomb_exploding),a
10B5  3E01    	    ld   a,$01
10B7  328086  	    ld   (bomb_placed),a
10BA  218486  	    ld   hl,bomb_x
10BD  3A0684  	    ld   a,(player_x) ; set bomb pos to player pos
10C0  77      	    ld   (hl),a
10C1  23      	    inc  hl
10C2  3A0784  	    ld   a,(player_y)
10C5  77      	    ld   (hl),a
10C6  23      	    inc  hl
10C7  3E3C    	    ld   a,$3C  ; ?
10C9  77      	    ld   (hl),a
10CA  23      	    inc  hl
10CB  3E86    	    ld   a,$86  ;
10CD  77      	    ld   (hl),a
10CE  3E85    	    ld   a,$85
10D0  3200B8  	    ld   (watchdog),a
10D3  C3D610  	    jp   $10D6
10D6  211C80  	    ld   hl,$801C
10D9  3A8486  	    ld   a,(bomb_x)
10DC  77      	    ld   (hl),a
10DD  23      	    inc  hl
10DE  3A8686  	    ld   a,(bomb_um1)
10E1  77      	    ld   (hl),a
10E2  23      	    inc  hl
10E3  3A8786  	    ld   a,(bomb_um2)
10E6  77      	    ld   (hl),a
10E7  23      	    inc  hl
10E8  3A8586  	    ld   a,(bomb_y)
10EB  77      	    ld   (hl),a
10EC  C9      	    ret

    ;;
10ED  3A8B86  	    ld   a,(bomb_exploding)
10F0  A7      	    and  a
10F1  C20D11  	    jp   nz,$110D
10F4  3A8A86  	    ld   a,(bomb_set_timer)
10F7  FE14    	    cp   $14
10F9  CA0111  	    jp   z,$1101
10FC  3C      	    inc  a      ; too soon to detonate
10FD  328A86  	    ld   (bomb_set_timer),a
1100  C9      	    ret
1101  3A0184  	    ld   a,(controls)
1104  E610    	    and  $10    ; fire pressed?
1106  C8      	    ret  z
                _detonate_bomb:
1107  3E01    	    ld   a,$01  ; yep... explode bomb
1109  328B86  	    ld   (bomb_exploding),a
110C  C9      	    ret

110D  218886  	    ld   hl,$8688
1110  34      	    inc  (hl)
1111  7E      	    ld   a,(hl)
1112  FE06    	    cp   $06
1114  D8      	    ret  c
1115  3600    	    ld   (hl),$00
1117  23      	    inc  hl
1118  34      	    inc  (hl)
1119  7E      	    ld   a,(hl)
111A  FE01    	    cp   $01
111C  CA3411  	    jp   z,$1134
111F  FE02    	    cp   $02
1121  CA4B11  	    jp   z,$114B
1124  FE05    	    cp   $05
1126  CA4E11  	    jp   z,$114E
1129  FE09    	    cp   $09
112B  CA5B11  	    jp   z,$115B
112E  FE0E    	    cp   $0E
1130  CA6811  	    jp   z,$1168
1133  C9      	    ret
1134  3E3E    	    ld   a,$3E
1136  328686  	    ld   ($8686),a
1139  3E87    	    ld   a,$87
113B  328786  	    ld   ($8687),a
113E  3E01    	    ld   a,$01
1140  328386  	    ld   (bomb_lethal),a
1143  3E88    	    ld   a,$88
1145  3200B8  	    ld   (watchdog),a
1148  C3D610  	    jp   $10D6
114B  C3D610  	    jp   $10D6
114E  3E3F    	    ld   a,$3F
1150  328686  	    ld   ($8686),a
1153  3E84    	    ld   a,$84
1155  328786  	    ld   ($8687),a
1158  C3D610  	    jp   $10D6
115B  3E3D    	    ld   a,$3D
115D  328686  	    ld   ($8686),a
1160  3E87    	    ld   a,$87
1162  328786  	    ld   ($8687),a
1165  C3D610  	    jp   $10D6
1168  C33810  	    jp   bomb_clear
116B  00      	    nop
116C  00      	    nop

                bomb_collide:   ; explosion AABB vs player + each cat/snake
116D  3A8386  	    ld   a,(bomb_lethal)
1170  A7      	    and  a
1171  C8      	    ret  z
1172  3A00B0  	    ld   a,(int_enable)
1175  E680    	    and  $80
1177  C28C11  	    jp   nz,$118C
117A  3A1F84  	    ld   a,($841F)
117D  FE01    	    cp   $01
117F  C28C11  	    jp   nz,$118C
1182  3A3E80  	    ld   a,(endlevel_active)
1185  A7      	    and  a
1186  C28C11  	    jp   nz,$118C
1189  CD9F11  	    call bomb_kill_player
118C  CDD911  	    call bomb_vs_catA
118F  CD0512  	    call bomb_vs_slot
1192  CD3112  	    call bomb_vs_catB
1195  CD5D12  	    call bomb_vs_catC
1198  CD9112  	    call bomb_vs_snakeA
119B  CDBD12  	    call bomb_vs_snakeB
119E  C9      	    ret
                bomb_kill_player: ; explosion AABB vs player -> $841F=2
119F  DD210080	    ld   ix,ram_start
11A3  FD211C80	    ld   iy,$801C
11A7  21B411  	    ld   hl,$11B4
11AA  D9      	    exx
11AB  111008  	    ld   de,$0810
11AE  211008  	    ld   hl,$0810
11B1  C3BF11  	    jp   $11BF
11B4  3E81    	    ld   a,$81
11B6  3200B8  	    ld   (watchdog),a
11B9  211F84  	    ld   hl,$841F
11BC  3602    	    ld   (hl),$02
11BE  C9      	    ret
11BF  DD7E03  	    ld   a,(ix+$03)
11C2  FD4603  	    ld   b,(iy+$03)
11C5  94      	    sub  h
11C6  B8      	    cp   b
11C7  D0      	    ret  nc
11C8  85      	    add  a,l
11C9  B8      	    cp   b
11CA  D8      	    ret  c
11CB  DD7E00  	    ld   a,(ix+$00)
11CE  FD4600  	    ld   b,(iy+$00)
11D1  92      	    sub  d
11D2  B8      	    cp   b
11D3  D0      	    ret  nc
11D4  83      	    add  a,e
11D5  B8      	    cp   b
11D6  D8      	    ret  c
11D7  D9      	    exx
11D8  E9      	    jp   (hl)
                bomb_vs_catA: ; explosion AABB vs cat A ($8501) -> state $06
11D9  3A0185  	    ld   a,($8501)
11DC  A7      	    and  a
11DD  C8      	    ret  z
11DE  3A2B85  	    ld   a,(cat1_busy)
11E1  A7      	    and  a
11E2  C0      	    ret  nz
11E3  DD211C80	    ld   ix,$801C
11E7  FD210480	    ld   iy,$8004
11EB  21F811  	    ld   hl,$11F8
11EE  D9      	    exx
11EF  111C0E  	    ld   de,$0E1C
11F2  211C0E  	    ld   hl,$0E1C
11F5  C3BF11  	    jp   $11BF
11F8  211785  	    ld   hl,cat1_state
11FB  3606    	    ld   (hl),$06
11FD  212B85  	    ld   hl,cat1_busy
1200  3601    	    ld   (hl),$01
1202  C38612  	    jp   $1286
                bomb_vs_slot: ; explosion AABB vs unused enemy slot ($8503)
1205  3A0385  	    ld   a,($8503)
1208  A7      	    and  a
1209  C8      	    ret  z
120A  3A4B85  	    ld   a,($854B)
120D  A7      	    and  a
120E  C0      	    ret  nz
120F  DD211C80	    ld   ix,$801C
1213  FD210880	    ld   iy,$8008
1217  212412  	    ld   hl,$1224
121A  D9      	    exx
121B  111C0E  	    ld   de,$0E1C
121E  211C0E  	    ld   hl,$0E1C
1221  C3BF11  	    jp   $11BF
1224  213785  	    ld   hl,$8537
1227  3606    	    ld   (hl),$06
1229  214B85  	    ld   hl,$854B
122C  3601    	    ld   (hl),$01
122E  C38612  	    jp   $1286
                bomb_vs_catB: ; explosion AABB vs cat B ($8504) -> state $06
1231  3A0485  	    ld   a,($8504)
1234  A7      	    and  a
1235  C8      	    ret  z
1236  3A6B85  	    ld   a,(cat2_busy)
1239  A7      	    and  a
123A  C0      	    ret  nz
123B  DD211C80	    ld   ix,$801C
123F  FD210C80	    ld   iy,$800C
1243  215012  	    ld   hl,$1250
1246  D9      	    exx
1247  111C0E  	    ld   de,$0E1C
124A  211C0E  	    ld   hl,$0E1C
124D  C3BF11  	    jp   $11BF
1250  215785  	    ld   hl,cat2_state
1253  3606    	    ld   (hl),$06
1255  216B85  	    ld   hl,cat2_busy
1258  3601    	    ld   (hl),$01
125A  C38612  	    jp   $1286
                bomb_vs_catC: ; explosion AABB vs cat C ($8507) -> state $06
125D  3A0785  	    ld   a,($8507)
1260  A7      	    and  a
1261  C8      	    ret  z
1262  3A8B85  	    ld   a,(cat3_busy)
1265  A7      	    and  a
1266  C0      	    ret  nz
1267  DD211C80	    ld   ix,$801C
126B  FD211080	    ld   iy,$8010
126F  217C12  	    ld   hl,$127C
1272  D9      	    exx
1273  111C0E  	    ld   de,$0E1C
1276  211C0E  	    ld   hl,$0E1C
1279  C3BF11  	    jp   $11BF
127C  217785  	    ld   hl,cat3_state
127F  3606    	    ld   (hl),$06
1281  218B85  	    ld   hl,cat3_busy
1284  3601    	    ld   (hl),$01
1286  3E83    	    ld   a,$83
1288  3200B8  	    ld   (watchdog),a
128B  1604    	    ld   d,$04
128D  CDF112  	    call $12F1
1290  C9      	    ret
                bomb_vs_snakeA: ; explosion AABB vs snake A ($8601) -> state $06
1291  3A0186  	    ld   a,($8601)
1294  A7      	    and  a
1295  C8      	    ret  z
1296  3A2B86  	    ld   a,(snake1_busy)
1299  A7      	    and  a
129A  C0      	    ret  nz
129B  DD211C80	    ld   ix,$801C
129F  FD211480	    ld   iy,$8014
12A3  21B012  	    ld   hl,$12B0
12A6  D9      	    exx
12A7  11180C  	    ld   de,$0C18
12AA  21180C  	    ld   hl,$0C18
12AD  C3BF11  	    jp   $11BF
12B0  211786  	    ld   hl,snake1_state
12B3  3606    	    ld   (hl),$06
12B5  212B86  	    ld   hl,snake1_busy
12B8  3601    	    ld   (hl),$01
12BA  C3E612  	    jp   $12E6
                bomb_vs_snakeB: ; explosion AABB vs snake B ($8603) -> state $06
12BD  3A0386  	    ld   a,($8603)
12C0  A7      	    and  a
12C1  C8      	    ret  z
12C2  3A4B86  	    ld   a,(snake2_busy)
12C5  A7      	    and  a
12C6  C0      	    ret  nz
12C7  DD211C80	    ld   ix,$801C
12CB  FD211880	    ld   iy,$8018
12CF  21DC12  	    ld   hl,$12DC
12D2  D9      	    exx
12D3  11180C  	    ld   de,$0C18
12D6  21180C  	    ld   hl,$0C18
12D9  C3BF11  	    jp   $11BF
12DC  213786  	    ld   hl,snake2_state
12DF  3606    	    ld   (hl),$06
12E1  214B86  	    ld   hl,snake2_busy
12E4  3601    	    ld   (hl),$01
12E6  3E82    	    ld   a,$82
12E8  3200B8  	    ld   (watchdog),a
12EB  1608    	    ld   d,$08
12ED  CDF112  	    call $12F1
12F0  C9      	    ret
12F1  AF      	    xor  a
12F2  214080  	    ld   hl,score_add_trig
12F5  3601    	    ld   (hl),$01
12F7  0E00    	    ld   c,$00
12F9  1E00    	    ld   e,$00
12FB  23      	    inc  hl
12FC  79      	    ld   a,c
12FD  8E      	    adc  a,(hl)
12FE  27      	    daa
12FF  77      	    ld   (hl),a
1300  23      	    inc  hl
1301  7A      	    ld   a,d
1302  8E      	    adc  a,(hl)
1303  27      	    daa
1304  77      	    ld   (hl),a
1305  23      	    inc  hl
1306  7B      	    ld   a,e
1307  8E      	    adc  a,(hl)
1308  27      	    daa
1309  77      	    ld   (hl),a
130A  C9      	    ret

                draw_cur_level_map:
130B  3A0181  	    ld   a,(cur_map)
130E  E603    	    and  $03
1310  CA2213  	    jp   z,map_1
1313  FE01    	    cp   $01
1315  CA2B13  	    jp   z,$132B
1318  FE02    	    cp   $02
131A  CA3413  	    jp   z,$1334
131D  FE03    	    cp   $03
131F  CA3D13  	    jp   z,$133D
                map_1:
1322  3E83    	    ld   a,$83
1324  119113  	    ld   de,level_1_map
1327  CD4613  	    call draw_map
132A  C9      	    ret
132B  3E83    	    ld   a,$83
132D  11A116  	    ld   de,level_2_map
1330  CD4613  	    call draw_map
1333  C9      	    ret
1334  3E83    	    ld   a,$83
1336  11B119  	    ld   de,level_3_map
1339  CD4613  	    call draw_map
133C  C9      	    ret
133D  3E83    	    ld   a,$83
133F  11C11C  	    ld   de,level_4_map
1342  CD4613  	    call draw_map
1345  C9      	    ret

                draw_map:
1346  214390  	    ld   hl,$9043
1349  061C    	    ld   b,SCR_COLS
134B  0E1C    	    ld   c,SCR_ROWS
134D  08      	    ex   af,af' ; '
134E  CD6013  	    call blit_rect
1351  08      	    ex   af,af' ; '
1352  112000  	    ld   de,$0020
1355  214394  	    ld   hl,$9443
1358  061C    	    ld   b,SCR_COLS
135A  0E1C    	    ld   c,SCR_ROWS
135C  CD8413  	    call fill_rect
135F  C9      	    ret

                blit_rect:          ; copy b(cols) x c(rows) tile rect from (de) -> VRAM (hl); row stride $20, de reads linearly
1360  C5      	    push bc
1361  E5      	    push hl
1362  1A      	    ld   a,(de)
1363  77      	    ld   (hl),a
1364  23      	    inc  hl
1365  13      	    inc  de
1366  10FA    	    djnz $1362
1368  E1      	    pop  hl
1369  012000  	    ld   bc,$0020
136C  09      	    add  hl,bc
136D  C1      	    pop  bc
136E  0D      	    dec  c
136F  20EF    	    jr   nz,blit_rect
1371  C9      	    ret

1372  C5      	    push bc
1373  E5      	    push hl
1374  1A      	    ld   a,(de)
1375  77      	    ld   (hl),a
1376  13      	    inc  de
1377  23      	    inc  hl
1378  10FA    	    djnz $1374
137A  E1      	    pop  hl
137B  01E0FF  	    ld   bc,$FFE0
137E  09      	    add  hl,bc
137F  C1      	    pop  bc
1380  0D      	    dec  c
1381  20EF    	    jr   nz,$1372
1383  C9      	    ret

                fill_rect:          ; fill b(cols) x c(rows) rect at (hl) with byte a; row stride = de
1384  C5      	    push bc
1385  E5      	    push hl
1386  77      	    ld   (hl),a
1387  23      	    inc  hl
1388  10FC    	    djnz $1386
138A  E1      	    pop  hl
138B  19      	    add  hl,de
138C  C1      	    pop  bc
138D  0D      	    dec  c
138E  20F4    	    jr   nz,fill_rect
1390  C9      	    ret

                ;;; very chunky data
                ;;; Looks like a lot of level data down to $1FD0 (3136 bytes)
                ;;; 27 cells per column, running top-to-bottom, right to left
                level_1_map:     ; next map at 16A1 (784 bytes per screen)
1391                db   $25, $25, $25, $25, $25, $25, $25, $25
XXXX                db   $25, $25, $25, $25, $25, $25, $25, $25
XXXX                db   $25, $25, $25, $25, $25, $25, $25, $25
XXXX                db   $25, $25, $25, $25, $25, $25, $25, $25
XXXX                db   $25, $25, $25, $25, $25, $25, $25, $25
XXXX                db   $25, $25, $25, $25, $25, $25, $25, $25
XXXX        	    db   $25, $25, $25, $25, $25, $25, $25, $25
                ;;; Right ladder column
XXXX                db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
XXXX                db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
XXXX                db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
XXXX                db   $F5, $F5, $F5, $F4, $25, $25, $25, $f4
13E4        	    db   $25, $25, $25, $F4, $25, $25, $25, $25
13EC         	    db   $25, $25, $25, $F4, $25, $25, $25, $25
13F4         	    db   $25, $25, $25, $F4, $25, $25, $25, $f4
13FC        	    db   $25, $25, $25, $F4, $25, $25, $25, $f4
1404        	    db   $25, $25, $25, $25, $25, $25, $25, $f4
140C         	    db   $25, $25, $25, $25, $25, $25, $25, $f4
1414         	    db   $25, $25, $25, $f4, $25, $25, $25, $f4
141C         	    db   $25, $25, $25, $f4, $25, $25, $25, $25
1424         	    db   $25, $25, $25, $f4, $25, $25, $25, $25
142C        	    db   $25, $25, $25, $f4, $25, $25, $25, $f4
1434         	    db   $25, $25, $25, $f5, $f5, $f5, $f5, $f4
143C        	    db   $35, $35, $35, $35, $25, $25, $25, $f4
1449               db   $35, $35, $35, $35, $25, $25, $25, $F5
1451               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1459               db   $25, $25, $25, $F6, $25, $37, $38, $35
1461               db   $25, $25, $25, $F6, $25, $37, $38, $35
1469               db   $25, $25, $25, $F4, $25, $25, $25, $25
1471               db   $25, $25, $25, $F4, $25, $25, $25, $FC
1479               db   $25, $37, $38, $35, $25, $25, $25, $FC
1481               db   $25, $37, $38, $35, $25, $25, $25, $F4
1489               db   $25, $25, $25, $25, $25, $25, $25, $F4
1491               db   $25, $25, $25, $F6, $25, $37, $38, $35
1499               db   $25, $25, $25, $F6, $25, $37, $38, $35
14A1               db   $25, $25, $25, $F4, $25, $25, $25, $25
14A9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
14B1               db   $35, $35, $35, $35, $25, $25, $25, $F4
14B9               db   $35, $35, $35, $35, $25, $25, $25, $F4
14C1               db   $36, $36, $36, $36, $25, $25, $25, $25
14C9               db   $25, $25, $25, $F4, $25, $25, $25, $25
14D1               db   $25, $25, $25, $F4, $25, $25, $25, $25
14D9               db   $25, $25, $25, $F4, $25, $25, $25, $36
14E1               db   $25, $25, $25, $25, $25, $25, $25, $F4
14E9               db   $25, $25, $25, $25, $25, $25, $25, $F4
14F1               db   $25, $25, $25, $25, $25, $25, $25, $F9
14F9               db   $25, $25, $25, $36, $25, $25, $25, $25
1501               db   $25, $25, $25, $F4, $25, $25, $25, $25
1509               db   $25, $25, $25, $F4, $25, $25, $25, $25
1511               db   $25, $25, $25, $F4, $25, $25, $25, $36
1519               db   $25, $25, $25, $25, $25, $25, $25, $F5
1521               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1529               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
1531               db   $36, $36, $36, $36, $25, $25, $25, $FD
1539               db   $25, $25, $25, $F4, $25, $25, $25, $25
1541               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1549               db   $25, $25, $25, $F4, $25, $25, $25, $25
1551               db   $25, $25, $25, $FF, $25, $25, $25, $F4
1559               db   $25, $25, $25, $25, $25, $25, $25, $F4
1561               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1569               db   $25, $25, $25, $25, $25, $25, $25, $FD
1571               db   $25, $25, $25, $F4, $25, $25, $25, $25
1579               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1581               db   $25, $25, $25, $F4, $25, $25, $25, $25
1589               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1591               db   $35, $35, $35, $35, $25, $25, $25, $F5
1599               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
15A1               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
15A9               db   $25, $25, $25, $F6, $25, $37, $38, $35
15B1               db   $25, $25, $25, $F4, $25, $25, $25, $FD
15B9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
15C1               db   $25, $25, $25, $F4, $25, $25, $25, $FC
15C9               db   $25, $37, $38, $35, $25, $25, $25, $F4
15D1               db   $25, $25, $25, $FF, $25, $25, $25, $F4
15D9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
15E1               db   $25, $25, $25, $F6, $25, $37, $38, $35
15E9               db   $25, $25, $25, $F4, $25, $25, $25, $FD
15F1               db   $25, $25, $25, $F4, $25, $25, $25, $F4
15F9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1601               db   $35, $35, $35, $35, $25, $25, $25, $F4
1609               db   $25, $25, $25, $25, $25, $25, $25, $F5
1611               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1619               db   $25, $25, $25, $F4, $25, $25, $25, $25
1621               db   $25, $25, $25, $F4, $25, $25, $25, $25
1629               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1631               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1639               db   $25, $25, $25, $25, $25, $25, $25, $F4
1641               db   $25, $25, $25, $25, $25, $25, $25, $F4
1649               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1651               db   $25, $25, $25, $F4, $25, $25, $25, $25
1659               db   $25, $25, $25, $F4, $25, $25, $25, $25
1661               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1669               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1671               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1679               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1681               db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
1689               db   $25, $25, $25, $25, $25, $25, $25, $25
1691               db   $25, $25, $25, $25, $25, $25, $25, $25
1699               db   $25, $25, $25, $25, $25, $25, $25, $25
                level_2_map:     ; next map at 19B1 (784 bytes per screen)
16A1               db   $25, $25, $25, $25, $25, $25, $25, $25
16A9               db   $25, $25, $25, $25, $25, $25, $25, $25
16B1               db   $25, $25, $25, $25, $25, $25, $25, $25
16B9               db   $25, $25, $25, $25, $25, $25, $25, $25
16C1               db   $25, $25, $25, $25, $25, $25, $25, $25
16C9               db   $25, $25, $25, $25, $25, $25, $25, $25
16D1               db   $25, $25, $25, $25, $25, $25, $25, $25
16D9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
16E1               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
16E9               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
16F1               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
16F9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1701               db   $25, $25, $25, $25, $25, $25, $25, $FD
1709               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1711               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1719               db   $25, $25, $25, $F4, $25, $25, $25, $25
1721               db   $25, $25, $25, $FF, $25, $25, $25, $F4
1729               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1731               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1739               db   $25, $25, $25, $25, $25, $25, $25, $FD
1741               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1749               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1751               db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
1759               db   $25, $25, $25, $25, $25, $25, $25, $F5
1761               db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
1769               db   $25, $25, $25, $F4, $25, $25, $25, $F6
1771               db   $25, $37, $38, $35, $25, $25, $25, $25
1779               db   $25, $25, $25, $F4, $25, $25, $25, $25
1781               db   $25, $25, $25, $25, $25, $25, $25, $F4
1789               db   $25, $25, $25, $FC, $25, $37, $38, $35
1791               db   $25, $25, $25, $25, $25, $25, $25, $F4
1799               db   $25, $25, $25, $25, $25, $25, $25, $25
17A1               db   $25, $25, $25, $F4, $25, $25, $25, $F6
17A9               db   $25, $37, $38, $35, $25, $25, $25, $25
17B1               db   $25, $25, $25, $F4, $25, $25, $25, $25
17B9               db   $25, $25, $25, $25, $25, $25, $25, $F5
17C1               db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
17C9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
17D1               db   $36, $36, $36, $36, $25, $25, $25, $FD
17D9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
17E1               db   $25, $25, $25, $25, $25, $25, $25, $F4
17E9               db   $25, $25, $25, $F4, $25, $25, $25, $36
17F1               db   $25, $25, $25, $FF, $25, $25, $25, $F4
17F9               db   $25, $25, $25, $F4, $25, $25, $25, $25
1801               db   $25, $25, $25, $F4, $25, $25, $25, $F9
1809               db   $25, $25, $25, $36, $25, $25, $25, $FD
1811               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1819               db   $25, $25, $25, $25, $25, $25, $25, $F4
1821               db   $25, $25, $25, $F4, $25, $25, $25, $36
1829               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1831               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1839               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
1841               db   $36, $36, $36, $36, $25, $25, $25, $F4
1849               db   $25, $25, $25, $F4, $25, $25, $25, $25
1851               db   $25, $25, $25, $F4, $25, $25, $25, $25
1859               db   $25, $25, $25, $F4, $25, $25, $25, $25
1861               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1869               db   $25, $25, $25, $25, $25, $25, $25, $F4
1871               db   $25, $25, $25, $25, $25, $25, $25, $F4
1879               db   $25, $25, $25, $25, $25, $25, $25, $F4
1881               db   $25, $25, $25, $F4, $25, $25, $25, $25
1889               db   $25, $25, $25, $F4, $25, $25, $25, $25
1891               db   $25, $25, $25, $F4, $25, $25, $25, $25
1899               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
18A1               db   $35, $35, $35, $35, $25, $25, $25, $F4
18A9               db   $35, $35, $35, $35, $25, $25, $25, $F5
18B1               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
18B9               db   $25, $25, $25, $F6, $25, $37, $38, $35
18C1               db   $25, $25, $25, $F6, $25, $37, $38, $35
18C9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
18D1               db   $25, $25, $25, $F4, $25, $25, $25, $FC
18D9               db   $25, $37, $38, $35, $25, $25, $25, $FC
18E1               db   $25, $37, $38, $35, $25, $25, $25, $F4
18E9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
18F1               db   $25, $25, $25, $F6, $25, $37, $38, $35
18F9               db   $25, $25, $25, $F6, $25, $37, $38, $35
1901               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1909               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1911               db   $35, $35, $35, $35, $25, $25, $25, $F4
1919               db   $35, $35, $35, $35, $25, $25, $25, $F5
1921               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1929               db   $25, $25, $25, $F4, $25, $25, $25, $25
1931               db   $25, $25, $25, $F4, $25, $25, $25, $25
1939               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1941               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1949               db   $25, $25, $25, $25, $25, $25, $25, $F4
1951               db   $25, $25, $25, $25, $25, $25, $25, $F4
1959               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1961               db   $25, $25, $25, $F4, $25, $25, $25, $25
1969               db   $25, $25, $25, $F4, $25, $25, $25, $25
1971               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1979               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1981               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1989               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1991               db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
1999               db   $25, $25, $25, $25, $25, $25, $25, $25
19A1               db   $25, $25, $25, $25, $25, $25, $25, $25
19A9               db   $25, $25, $25, $25, $25, $25, $25, $25

                level_3_map:     ; next map at 1CC1 (784 bytes per screen)
19B1               db   $25, $25, $25, $25, $25, $25, $25, $25
19B9               db   $25, $25, $25, $25, $25, $25, $25, $25
19C1               db   $25, $25, $25, $25, $25, $25, $25, $25
19C9               db   $25, $25, $25, $25, $25, $25, $25, $25
19D1               db   $25, $25, $25, $25, $25, $25, $25, $25
19D9               db   $25, $25, $25, $25, $25, $25, $25, $25
19E1               db   $25, $25, $25, $25, $25, $25, $25, $25
19E9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
19F1               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
19F9               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1A01               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1A09               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A11               db   $25, $25, $25, $F4, $25, $25, $25, $25
1A19               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A21               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A29               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A31               db   $25, $25, $25, $25, $25, $25, $25, $F4
1A39               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A41               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A49               db   $25, $25, $25, $F4, $25, $25, $25, $25
1A51               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1A59               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1A61               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
1A69               db   $35, $35, $35, $35, $25, $25, $25, $F5
1A71               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1A79               db   $25, $25, $25, $25, $25, $25, $25, $F4
1A81               db   $25, $25, $25, $F6, $25, $37, $38, $35
1A89               db   $25, $25, $25, $F4, $25, $25, $25, $25
1A91               db   $25, $25, $25, $F4, $25, $25, $25, $25
1A99               db   $25, $25, $25, $F4, $25, $25, $25, $FC
1AA1               db   $25, $37, $38, $35, $25, $25, $25, $F4
1AA9               db   $25, $25, $25, $25, $25, $25, $25, $F4
1AB1               db   $25, $25, $25, $25, $25, $25, $25, $F4
1AB9               db   $25, $25, $25, $F6, $25, $37, $38, $35
1AC1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1AC9               db   $25, $25, $25, $F4, $35, $35, $35, $35
1AD1               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1AD9               db   $35, $35, $35, $35, $25, $25, $25, $F4
1AE1               db   $36, $36, $36, $36, $25, $25, $25, $F6
1AE9               db   $25, $37, $38, $35, $25, $25, $25, $F4
1AF1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1AF9               db   $25, $25, $25, $F4, $25, $25, $25, $36
1B01               db   $25, $25, $25, $FC, $25, $37, $38, $35
1B09               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1B11               db   $25, $25, $25, $25, $25, $25, $25, $F9
1B19               db   $25, $25, $25, $36, $25, $25, $25, $F6
1B21               db   $25, $37, $38, $35, $25, $25, $25, $F4
1B29               db   $25, $25, $25, $F4, $25, $25, $25, $25
1B31               db   $25, $25, $25, $F4, $25, $25, $25, $36
1B39               db   $25, $25, $25, $F4, $35, $35, $35, $35
1B41               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1B49               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
1B51               db   $36, $36, $36, $36, $25, $25, $25, $F4
1B59               db   $25, $25, $25, $25, $25, $25, $25, $F4
1B61               db   $25, $25, $25, $25, $25, $25, $25, $FD
1B69               db   $25, $25, $25, $F4, $25, $25, $25, $25
1B71               db   $25, $25, $25, $F4, $25, $25, $25, $25
1B79               db   $25, $25, $25, $F4, $25, $25, $25, $25
1B81               db   $25, $25, $25, $FF, $25, $25, $25, $F4
1B89               db   $25, $25, $25, $25, $25, $25, $25, $F4
1B91               db   $25, $25, $25, $25, $25, $25, $25, $F4
1B99               db   $25, $25, $25, $25, $25, $25, $25, $FD
1BA1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1BA9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1BB1               db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
1BB9               db   $25, $25, $25, $25, $25, $25, $25, $F5
1BC1               db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
1BC9               db   $25, $25, $25, $F4, $25, $25, $25, $F6
1BD1               db   $25, $37, $38, $35, $25, $25, $25, $25
1BD9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1BE1               db   $25, $25, $25, $25, $25, $25, $25, $F4
1BE9               db   $25, $25, $25, $FC, $25, $37, $38, $35
1BF1               db   $25, $25, $25, $25, $25, $25, $25, $F4
1BF9               db   $25, $25, $25, $F4, $25, $25, $25, $25
1C01               db   $25, $25, $25, $F4, $25, $25, $25, $F6
1C09               db   $25, $37, $38, $35, $25, $25, $25, $25
1C11               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1C19               db   $25, $25, $25, $25, $25, $25, $25, $F5
1C21               db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
1C29               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1C31               db   $F5, $F5, $F5, $F4, $25, $25, $25, $FD
1C39               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1C41               db   $25, $25, $25, $25, $25, $25, $25, $F4
1C49               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1C51               db   $25, $25, $25, $FF, $25, $25, $25, $F4
1C59               db   $25, $25, $25, $F4, $25, $25, $25, $25
1C61               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1C69               db   $25, $25, $25, $F4, $25, $25, $25, $FD
1C71               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1C79               db   $25, $25, $25, $25, $25, $25, $25, $F4
1C81               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1C89               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1C91               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1C99               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1CA1               db   $F5, $F5, $F5, $F4, $25, $25, $25, $25
1CA9               db   $25, $25, $25, $25, $25, $25, $25, $25
1CB1               db   $25, $25, $25, $25, $25, $25, $25, $25
1CB9               db   $25, $25, $25, $25, $25, $25, $25, $25
                level_4_map:     ; end of level data at 1FD0 (784 bytes per screen)
1CC1               db   $25, $25, $25, $25, $25, $25, $25, $25
1CC9               db   $25, $25, $25, $25, $25, $25, $25, $25
1CD1               db   $25, $25, $25, $25, $25, $25, $25, $25
1CD9               db   $25, $25, $25, $25, $25, $25, $25, $25
1CE1               db   $25, $25, $25, $25, $25, $25, $25, $25
1CE9               db   $25, $25, $25, $25, $25, $25, $25, $25
1CF1               db   $25, $25, $25, $25, $25, $25, $25, $25
1CF9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1D01               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1D09               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1D11               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1D19               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D21               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D29               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D31               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D39               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D41               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D49               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D51               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D59               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D61               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D69               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1D71               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1D79               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1D81               db   $F5, $F5, $F5, $F4, $25, $25, $25, $F4
1D89               db   $25, $25, $25, $F4, $25, $25, $25, $25
1D91               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1D99               db   $25, $25, $25, $F4, $25, $25, $25, $25
1DA1               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1DA9               db   $25, $25, $25, $25, $25, $25, $25, $F4
1DB1               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1DB9               db   $25, $25, $25, $25, $25, $25, $25, $F4
1DC1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1DC9               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1DD1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1DD9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1DE1               db   $25, $25, $25, $25, $25, $25, $25, $F5
1DE9               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
1DF1               db   $36, $36, $36, $36, $25, $25, $25, $F4
1DF9               db   $25, $25, $25, $25, $25, $25, $25, $FD
1E01               db   $25, $25, $25, $F4, $25, $25, $25, $25
1E09               db   $25, $25, $25, $F4, $25, $25, $25, $36
1E11               db   $25, $25, $25, $F4, $25, $25, $25, $25
1E19               db   $25, $25, $25, $FF, $25, $25, $25, $F4
1E21               db   $25, $25, $25, $25, $25, $25, $25, $F9
1E29               db   $25, $25, $25, $36, $25, $25, $25, $F4
1E31               db   $25, $25, $25, $25, $25, $25, $25, $FD
1E39               db   $25, $25, $25, $F4, $25, $25, $25, $25
1E41               db   $25, $25, $25, $F4, $25, $25, $25, $36
1E49               db   $25, $25, $25, $F4, $35, $35, $35, $35
1E51               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1E59               db   $25, $25, $25, $25, $25, $25, $25, $F4
1E61               db   $36, $36, $36, $36, $25, $25, $25, $F6
1E69               db   $25, $37, $38, $35, $25, $25, $25, $F4
1E71               db   $25, $25, $25, $25, $25, $25, $25, $FD
1E79               db   $25, $25, $25, $F4, $25, $25, $25, $25
1E81               db   $25, $25, $25, $FC, $25, $37, $38, $35
1E89               db   $25, $25, $25, $F4, $25, $25, $25, $25
1E91               db   $25, $25, $25, $FF, $25, $25, $25, $F4
1E99               db   $25, $25, $25, $25, $25, $25, $25, $F6
1EA1               db   $25, $37, $38, $35, $25, $25, $25, $F4
1EA9               db   $25, $25, $25, $25, $25, $25, $25, $FD
1EB1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1EB9               db   $25, $25, $25, $F4, $35, $35, $35, $35
1EC1               db   $25, $25, $25, $F4, $35, $35, $35, $35
1EC9               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1ED1               db   $35, $35, $35, $35, $25, $25, $25, $F4
1ED9               db   $25, $25, $25, $25, $25, $25, $25, $F6
1EE1               db   $25, $37, $38, $35, $25, $25, $25, $F4
1EE9               db   $25, $25, $25, $F6, $25, $37, $38, $35
1EF1               db   $25, $25, $25, $F4, $25, $25, $25, $25
1EF9               db   $25, $25, $25, $FC, $25, $37, $38, $35
1F01               db   $25, $25, $25, $F4, $25, $25, $25, $FC
1F09               db   $25, $37, $38, $35, $25, $25, $25, $F4
1F11               db   $25, $25, $25, $25, $25, $25, $25, $F6
1F19               db   $25, $37, $38, $35, $25, $25, $25, $F4
1F21               db   $25, $25, $25, $F6, $25, $37, $38, $35
1F29               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1F31               db   $F5, $F5, $F5, $F4, $35, $35, $35, $35
1F39               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F4
1F41               db   $35, $35, $35, $35, $25, $25, $25, $F4
1F49               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1F51               db   $25, $25, $25, $25, $25, $25, $25, $F4
1F59               db   $25, $25, $25, $F4, $25, $25, $25, $25
1F61               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1F69               db   $25, $25, $25, $F4, $25, $25, $25, $25
1F71               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1F79               db   $25, $25, $25, $25, $25, $25, $25, $F4
1F81               db   $25, $25, $25, $F4, $25, $25, $25, $F4
1F89               db   $25, $25, $25, $25, $25, $25, $25, $F4
1F91               db   $25, $25, $25, $F4, $25, $25, $25, $25
1F99               db   $25, $25, $25, $F5, $F5, $F5, $F5, $F5
1FA1               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5
1FA9               db   $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F4
1FB1               db   $25, $25, $25, $25, $25, $25, $25, $25
1FB9               db   $25, $25, $25, $25, $25, $25, $25, $25
1FC1               db   $25, $25, $25, $25, $25, $25, $25, $25
1FC9               db   $25, $25, $25, $25, $25, $25, $25, $25

                main_game_loop:
1FD1  3A3980  	    ld   a,(screen_state)
1FD4  A7      	    and  a
1FD5  C2E31F  	    jp   nz,$1FE3
1FD8  3A3B80  	    ld   a,(cur_screen)
1FDB  FE06    	    cp   SCR_GAME
1FDD  C2E01F  	    jp   nz,$1FE0
1FE0  C3D11F  	    jp   main_game_loop
1FE3  0F      	    rrca
1FE4  DA9E21  	    jp   c,$219E
1FE7  0F      	    rrca
1FE8  DACA21  	    jp   c,$21CA
1FEB  0F      	    rrca
1FEC  DAF621  	    jp   c,$21F6
1FEF  0F      	    rrca
1FF0  DA0422  	    jp   c,$2204
1FF3  0F      	    rrca
1FF4  DA8422  	    jp   c,$2284
1FF7  0F      	    rrca
1FF8  DA0A20  	    jp   c,$200A
1FFB  0F      	    rrca
1FFC  DAB320  	    jp   c,$20B3
1FFF  0F      	    rrca
                ;;; ============ start of suprmous.x3 =============
2000  DAD920  	    jp   c,$20D9
2003  AF      	    xor  a
2004  323980  	    ld   (screen_state),a
2007  C3D11F  	    jp   main_game_loop

200A  CDEC20  	    call clear_playfield
200D  210085  	    ld   hl,cat1_enable ; clear cat enable data
2010  0610    	    ld   b,$10          ; 16 bytes
2012  3E00    	    ld   a,$00
2014  77      	    ld   (hl),a
2015  23      	    inc  hl
2016  10FC    	    djnz $2014
2018  210086  	    ld   hl,snake1_enable ; clear snake enable data
201B  0610    	    ld   b,$10            ; 16 bytes
201D  77      	    ld   (hl),a
201E  23      	    inc  hl
201F  10FC    	    djnz $201D
2021  320084  	    ld   (player_bytes),a
2024  219C80  	    ld   hl,$809C
2027  0660    	    ld   b,$60  ; 96 bytes cleared
2029  77      	    ld   (hl),a
202A  23      	    inc  hl
202B  10FC    	    djnz $2029
202D  3A3180  	    ld   a,(cur_player)
2030  A7      	    and  a
2031  C23A20  	    jp   nz,$203A
2034  210082  	    ld   hl,lives_copy
2037  C33D20  	    jp   $203D
203A  210083  	    ld   hl,$8300
203D  110081  	    ld   de,lives
2040  01FF00  	    ld   bc,$00FF
2043  EDB0    	    ldir
2045  CD8220  	    call $2082
2048  CD9D20  	    call $209D
204B  CD0B13  	    call draw_cur_level_map
204E  CD293E  	    call food_maze_redraw
2051  CD343F  	    call food_log_redraw_all
2054  CD7B41  	    call $417B
2057  CD2742  	    call $4227
205A  3EA0    	    ld   a,$A0
205C  3200B8  	    ld   (watchdog),a
205F  214080  	    ld   hl,score_add_trig
2062  3E00    	    ld   a,$00
2064  0604    	    ld   b,$04
2066  77      	    ld   (hl),a
2067  23      	    inc  hl
2068  10FC    	    djnz $2066
206A  3E05    	    ld   a,$05
206C  327F86  	    ld   (bombs),a
206F  CD6C10  	    call bomb_count_redraw
2072  3E06    	    ld   a,$06
2074  323B80  	    ld   (cur_screen),a
2077  3A3980  	    ld   a,(screen_state)
207A  CBAF    	    res  5,a
207C  323980  	    ld   (screen_state),a
207F  C3D11F  	    jp   $1FD1


2082  216292  	    ld   hl,$9262
2085  11AB20  	    ld   de,str_player
2088  0608    	    ld   b,$08
208A  C5      	    push bc
208B  1A      	    ld   a,(de)
208C  77      	    ld   (hl),a
208D  01E0FF  	    ld   bc,$FFE0
2090  09      	    add  hl,bc
2091  13      	    inc  de
2092  C1      	    pop  bc
2093  10F5    	    djnz $208A
2095  3A3180  	    ld   a,(cur_player)
2098  3C      	    inc  a
2099  328291  	    ld   ($9182),a
209C  C9      	    ret


209D  216296  	    ld   hl,$9662
20A0  11E0FF  	    ld   de,$FFE0
20A3  0608    	    ld   b,$08
20A5  3687    	    ld   (hl),$87
20A7  19      	    add  hl,de
20A8  10FB    	    djnz $20A5
20AA  C9      	    ret
                str_player: ; 'PLAYER  ' (player-ready)
20AB               db   $19, $15, $0A, $22, $0E, $1B, $24, $24              ; |PLAYER  |
20B3  CDEC20  	    call clear_playfield
20B6  CD8220  	    call $2082
20B9  CD9D20  	    call $209D
20BC  CDBB09  	    call draw_intermission
20BF  3E07    	    ld   a,$07
20C1  323B80  	    ld   (cur_screen),a
20C4  3EE0    	    ld   a,$E0
20C6  3200B8  	    ld   (watchdog),a
20C9  3E00    	    ld   a,$00
20CB  328084  	    ld   (gamble_state),a
20CE  3A3980  	    ld   a,(screen_state)
20D1  CBB7    	    res  6,a
20D3  323980  	    ld   (screen_state),a
20D6  C3D11F  	    jp   $1FD1
20D9  CDEC20  	    call clear_playfield
20DC  3E01    	    ld   a,$01
20DE  323B80  	    ld   (cur_screen),a
20E1  3A3980  	    ld   a,(screen_state)
20E4  CBBF    	    res  7,a
20E6  323980  	    ld   (screen_state),a
20E9  C3D11F  	    jp   $1FD1

                clear_playfield: ; fill VRAM $9002 region ($20x$1D) with blank tile $24
20EC  210290  	    ld   hl,$9002
20EF  112000  	    ld   de,$0020
20F2  0620    	    ld   b,$20
20F4  0E1D    	    ld   c,$1D
20F6  C5      	    push bc
20F7  E5      	    push hl
20F8  3624    	    ld   (hl),$24
20FA  2C      	    inc  l
20FB  0D      	    dec  c
20FC  C2F820  	    jp   nz,$20F8
20FF  E1      	    pop  hl
2100  19      	    add  hl,de
2101  C1      	    pop  bc
2102  10F2    	    djnz $20F6
2104  210294  	    ld   hl,$9402
2107  0620    	    ld   b,$20
2109  0E1D    	    ld   c,$1D
210B  C5      	    push bc
210C  E5      	    push hl
210D  3684    	    ld   (hl),$84
210F  2C      	    inc  l
2110  0D      	    dec  c
2111  C20D21  	    jp   nz,$210D
2114  E1      	    pop  hl
2115  19      	    add  hl,de
2116  C1      	    pop  bc
2117  10F2    	    djnz $210B
2119  210098  	    ld   hl,x_offset
211C  0640    	    ld   b,$40
211E  3600    	    ld   (hl),$00
2120  2C      	    inc  l
2121  10FB    	    djnz $211E
2123  210080  	    ld   hl,ram_start
2126  0620    	    ld   b,$20
2128  3600    	    ld   (hl),$00
212A  2C      	    inc  l
212B  10FB    	    djnz $2128
212D  C9      	    ret

                draw_column: ; draw [VRAM_addr_LE, tiles.., $FF] column upward (-$20 stride)
212E  5E      	    ld   e,(hl)
212F  23      	    inc  hl
2130  56      	    ld   d,(hl)
2131  23      	    inc  hl
2132  EB      	    ex   de,hl
2133  01E0FF  	    ld   bc,$FFE0
2136  1A      	    ld   a,(de)
2137  FEFF    	    cp   $FF
2139  C8      	    ret  z
213A  77      	    ld   (hl),a
213B  13      	    inc  de
213C  09      	    add  hl,bc
213D  18F7    	    jr   $2136

                hiscore_compare: ; compare 3-byte score at (de) vs hiscore_hi (carry=lower)
213F  214C80  	    ld   hl,hiscore_hi
2142  D5      	    push de
2143  0603    	    ld   b,$03
2145  1A      	    ld   a,(de)
2146  BE      	    cp   (hl)
2147  DA5421  	    jp   c,$2154
214A  CA5021  	    jp   z,$2150
214D  D25621  	    jp   nc,$2156
2150  1B      	    dec  de
2151  2B      	    dec  hl
2152  10F1    	    djnz $2145
2154  D1      	    pop  de
2155  C9      	    ret
2156  D1      	    pop  de
2157  214C80  	    ld   hl,hiscore_hi
215A  0603    	    ld   b,$03
215C  1A      	    ld   a,(de)
215D  77      	    ld   (hl),a
215E  2B      	    dec  hl
215F  1B      	    dec  de
2160  10FA    	    djnz $215C
2162  114C80  	    ld   de,hiscore_hi
2165  212192  	    ld   hl,$9221
2168  0606    	    ld   b,$06
216A  48      	    ld   c,b
216B  CB38    	    srl  b
216D  DC8221  	    call c,$2182
2170  78      	    ld   a,b
2171  A7      	    and  a
2172  C8      	    ret  z
2173  CD7921  	    call $2179
2176  C37021  	    jp   $2170
2179  1A      	    ld   a,(de)
217A  0F      	    rrca
217B  0F      	    rrca
217C  0F      	    rrca
217D  0F      	    rrca
217E  CD8421  	    call $2184
2181  05      	    dec  b

2182  1A      	    ld   a,(de)
2183  1B      	    dec  de
2184  E60F    	    and  $0F
2186  C29221  	    jp   nz,$2192
2189  0D      	    dec  c
218A  CA9221  	    jp   z,$2192
218D  3E24    	    ld   a,$24
218F  C39621  	    jp   $2196
2192  0E01    	    ld   c,$01
2194  C600    	    add  a,$00
2196  77      	    ld   (hl),a
2197  C5      	    push bc
2198  01E0FF  	    ld   bc,$FFE0
219B  09      	    add  hl,bc
219C  C1      	    pop  bc
219D  C9      	    ret
219E  CDEC20  	    call clear_playfield
21A1  214223  	    ld   hl,attract_display_list
21A4  CD2E21  	    call draw_column
21A7  215223  	    ld   hl,$2352
21AA  CD2E21  	    call draw_column
21AD  215923  	    ld   hl,$2359
21B0  CD2E21  	    call draw_column
21B3  AF      	    xor  a
21B4  323380  	    ld   (req_death),a
21B7  323280  	    ld   (req_level_done),a
21BA  3E02    	    ld   a,$02
21BC  323B80  	    ld   (cur_screen),a
21BF  3A3980  	    ld   a,(screen_state)
21C2  CB87    	    res  0,a
21C4  323980  	    ld   (screen_state),a
21C7  C3D11F  	    jp   $1FD1
21CA  CDEC20  	    call clear_playfield
21CD  216223  	    ld   hl,$2362
21D0  CD2E21  	    call draw_column
21D3  215223  	    ld   hl,$2352
21D6  CD2E21  	    call draw_column
21D9  215923  	    ld   hl,$2359
21DC  CD2E21  	    call draw_column
21DF  AF      	    xor  a
21E0  323380  	    ld   (req_death),a
21E3  323280  	    ld   (req_level_done),a
21E6  3E03    	    ld   a,$03
21E8  323B80  	    ld   (cur_screen),a
21EB  3A3980  	    ld   a,(screen_state)
21EE  CB8F    	    res  1,a
21F0  323980  	    ld   (screen_state),a
21F3  C3D11F  	    jp   $1FD1
21F6  CDEC20  	    call clear_playfield
21F9  3A3980  	    ld   a,(screen_state)
21FC  CB97    	    res  2,a
21FE  323980  	    ld   (screen_state),a
2201  C3D11F  	    jp   $1FD1
2204  CDEC20  	    call clear_playfield
2207  217223  	    ld   hl,$2372
220A  CD2E21  	    call draw_column
220D  3A3080  	    ld   a,(is_playing)
2210  FE01    	    cp   $01
2212  CA4022  	    jp   z,$2240
2215  3A3580  	    ld   a,(p2_done)
2218  0E01    	    ld   c,$01
221A  A7      	    and  a
221B  CA2622  	    jp   z,$2226
221E  3A3480  	    ld   a,(p1_done)
2221  A7      	    and  a
2222  C27122  	    jp   nz,$2271
2225  0C      	    inc  c
2226  79      	    ld   a,c
2227  08      	    ex   af,af' ; '
2228  217E23  	    ld   hl,$237E
222B  CD2E21  	    call draw_column
222E  08      	    ex   af,af' ; '
222F  77      	    ld   (hl),a
2230  114680  	    ld   de,score_hi
2233  0F      	    rrca
2234  DA3A22  	    jp   c,$223A
2237  114980  	    ld   de,$8049
223A  CD3F21  	    call hiscore_compare
223D  C36122  	    jp   $2261
2240  114680  	    ld   de,score_hi
2243  CD3F21  	    call hiscore_compare
2246  AF      	    xor  a
2247  323680  	    ld   (flip_state),a
224A  3203B0  	    ld   (sound_enable),a
224D  2106B0  	    ld   hl,flip_scr_x
2250  77      	    ld   (hl),a
2251  2C      	    inc  l
2252  77      	    ld   (hl),a
2253  214480  	    ld   hl,score_lo
2256  0606    	    ld   b,$06
2258  77      	    ld   (hl),a
2259  23      	    inc  hl
225A  10FC    	    djnz $2258
225C  3E80    	    ld   a,$80
225E  323D80  	    ld   (disp_timer),a
2261  3E04    	    ld   a,$04
2263  323B80  	    ld   (cur_screen),a
2266  3A3980  	    ld   a,(screen_state)
2269  CB9F    	    res  3,a
226B  323980  	    ld   (screen_state),a
226E  C3D11F  	    jp   $1FD1
2271  114680  	    ld   de,score_hi
2274  CD3F21  	    call hiscore_compare
2277  00      	    nop
2278  00      	    nop
2279  00      	    nop
227A  00      	    nop
227B  114980  	    ld   de,$8049
227E  CD3F21  	    call hiscore_compare
2281  C34622  	    jp   $2246
2284  CDEC20  	    call clear_playfield
2287  3A3880  	    ld   a,(first_turn)
228A  A7      	    and  a
228B  CAAE22  	    jp   z,$22AE
228E  AF      	    xor  a
228F  323880  	    ld   (first_turn),a
2292  216193  	    ld   hl,$9361
2295  11E0FF  	    ld   de,$FFE0
2298  CDA422  	    call $22A4
229B  210191  	    ld   hl,$9101
229E  CDA422  	    call $22A4
22A1  C3AE22  	    jp   $22AE
22A4  0605    	    ld   b,$05
22A6  3624    	    ld   (hl),$24
22A8  19      	    add  hl,de
22A9  10FB    	    djnz $22A6
22AB  3600    	    ld   (hl),$00
22AD  C9      	    ret

22AE  3A3180  	    ld   a,(cur_player)
22B1  A7      	    and  a
22B2  CABE22  	    jp   z,$22BE
22B5  3A2780  	    ld   a,($8027)
22B8  A7      	    and  a
22B9  CABE22  	    jp   z,$22BE
22BC  3E01    	    ld   a,$01
22BE  2106B0  	    ld   hl,flip_scr_x
22C1  77      	    ld   (hl),a
22C2  2C      	    inc  l
22C3  77      	    ld   (hl),a
22C4  217E23  	    ld   hl,$237E
22C7  CD2E21  	    call draw_column
22CA  3A3180  	    ld   a,(cur_player)
22CD  3C      	    inc  a
22CE  77      	    ld   (hl),a
22CF  3D      	    dec  a
22D0  210182  	    ld   hl,$8201
22D3  A7      	    and  a
22D4  CAD822  	    jp   z,$22D8
22D7  24      	    inc  h
22D8  7E      	    ld   a,(hl)
22D9  C601    	    add  a,$01
22DB  27      	    daa
22DC  08      	    ex   af,af' ; '
22DD  218823  	    ld   hl,$2388
22E0  CD2E21  	    call draw_column
22E3  08      	    ex   af,af' ; '
22E4  323780  	    ld   ($8037),a
22E7  113780  	    ld   de,$8037
22EA  0602    	    ld   b,$02
22EC  CD6A21  	    call $216A
22EF  CD0723  	    call draw_player_lives
22F2  3E05    	    ld   a,$05
22F4  323B80  	    ld   (cur_screen),a
22F7  3E40    	    ld   a,$40
22F9  323D80  	    ld   (disp_timer),a
22FC  3A3980  	    ld   a,(screen_state)
22FF  CBA7    	    res  4,a
2301  323980  	    ld   (screen_state),a
2304  C3D11F  	    jp   $1FD1

                draw_player_lives: ; draw cur_player remaining lives (lives_copy) as tile $79 at $939F
2307  3A3180  	    ld   a,(cur_player)
230A  210082  	    ld   hl,lives_copy
230D  A7      	    and  a
230E  CA1223  	    jp   z,$2312
2311  24      	    inc  h
2312  7E      	    ld   a,(hl)
2313  0607    	    ld   b,$07
2315  219F93  	    ld   hl,$939F
2318  11E0FF  	    ld   de,$FFE0
231B  3D      	    dec  a
231C  A7      	    and  a
231D  CA2823  	    jp   z,$2328
2320  3679    	    ld   (hl),$79
2322  19      	    add  hl,de
2323  05      	    dec  b
2324  3D      	    dec  a
2325  C22023  	    jp   nz,$2320
2328  3624    	    ld   (hl),$24
232A  19      	    add  hl,de
232B  10FB    	    djnz $2328
232D  C9      	    ret

                draw_lives: ; draw active lives count as tile $79 icons at $939F
232E  210081  	    ld   hl,lives
2331  7E      	    ld   a,(hl)
2332  3D      	    dec  a
2333  219F93  	    ld   hl,$939F
2336  11E0FF  	    ld   de,$FFE0
2339  0607    	    ld   b,$07
233B  A7      	    and  a
233C  CA2823  	    jp   z,$2328
233F  C31C23  	    jp   $231C

                attract_display_list: ; [VRAM_addr_LE, text.., $FF] records, drawn by draw_column
2342               db   $AE, $92, $18, $17, $15, $22, $24, $01              ; |..ONLY 1|
234A               db   $24, $19, $15, $0A, $22, $0E, $1B, $FF              ; | PLAYER||
2352               db   $2C, $92, $19, $1E, $1C, $11, $FF, $50              ; |..PUSH|.|
235A               db   $92, $0B, $1E, $1D, $1D, $18, $17, $FF              ; |.BUTTON||
2362               db   $AE, $92, $01, $24, $18, $1B, $24, $02              ; |..1 OR 2|
236A               db   $24, $19, $15, $0A, $22, $0E, $1B, $FF              ; | PLAYER||
2372               db   $8C, $92, $10, $0A, $16, $0E, $24, $18              ; |..GAME O|
237A               db   $1F, $0E, $1B, $FF, $8F, $92, $19, $15              ; |VER|..PL|
2382               db   $0A, $22, $0E, $1B, $24, $FF, $94, $92              ; |AYER |..|
238A               db   $15, $0E, $1F, $0E, $15, $24, $FF                   ; |LEVEL ||
2391  3A1F84  	    ld   a,($841F)
2394  FE02    	    cp   $02
2396  CAC523  	    jp   z,$23C5
2399  3A3E80  	    ld   a,(endlevel_active)
239C  A7      	    and  a
239D  C2C923  	    jp   nz,$23C9

                ingame_update:  ; main loop. per-frame game pipeline (cats,snakes,player,bombs,...)
23A0  CD7D40  	    call platform_update
23A3  CDFF3B  	    call bridge_update
23A6  CD0A3D  	    call scripted_move
23A9  CD512A  	    call cat_manager
23AC  CD0632  	    call snake_mgr
23AF  CD3925  	    call player_update
23B2  CD4B39  	    call enemy_eaten_sm
23B5  CDD323  	    call level_end_seq
23B8  CD2A39  	    call player_vs_enemy
23BB  CD6D11  	    call bomb_collide
23BE  CD0F10  	    call bomb_update
23C1  CDBC41  	    call boulder_update
23C4  C9      	    ret

23C5  CD3925  	    call player_update
23C8  C9      	    ret
23C9  CD512A  	    call cat_manager
23CC  CD0632  	    call snake_mgr
23CF  CDD323  	    call level_end_seq
23D2  C9      	    ret

                level_end_seq:  ; run check_level_done, else end timer -> req_level_done
23D3  3A3380  	    ld   a,(req_death)
23D6  A7      	    and  a
23D7  C0      	    ret  nz
23D8  3A1F84  	    ld   a,($841F)
23DB  FE02    	    cp   $02
23DD  C8      	    ret  z
23DE  3A3E80  	    ld   a,(endlevel_active)
23E1  A7      	    and  a
23E2  CA2924  	    jp   z,check_level_done
23E5  3A3F80  	    ld   a,(endlevel_ctr)
23E8  3C      	    inc  a
23E9  323F80  	    ld   (endlevel_ctr),a
23EC  FE02    	    cp   $02
23EE  CA0624  	    jp   z,$2406
23F1  FE04    	    cp   $04
23F3  CA0624  	    jp   z,$2406
23F6  FEE8    	    cp   $E8
23F8  CA0C24  	    jp   z,$240C
23FB  FEEC    	    cp   $EC
23FD  CA1224  	    jp   z,$2412
2400  FEF0    	    cp   $F0
2402  CA1824  	    jp   z,$2418
2405  C9      	    ret
2406  3E91    	    ld   a,$91
2408  3200B8  	    ld   (watchdog),a
240B  C9      	    ret
240C  3EA0    	    ld   a,$A0
240E  3200B8  	    ld   (watchdog),a
2411  C9      	    ret
2412  3EE0    	    ld   a,$E0
2414  3200B8  	    ld   (watchdog),a
2417  C9      	    ret
2418  3E00    	    ld   a,$00
241A  328084  	    ld   (gamble_state),a
241D  323E80  	    ld   (endlevel_active),a
2420  323F80  	    ld   (endlevel_ctr),a
2423  3E01    	    ld   a,$01
2425  323280  	    ld   (req_level_done),a
2428  C9      	    ret

                check_level_done:   ; all 9 food_returned set? -> start end-of-level seq
2429  214081  	    ld   hl,food_returned
242C  3E00    	    ld   a,$00
242E  0609    	    ld   b,$09
2430  BE      	    cp   (hl)
2431  C8      	    ret  z
2432  23      	    inc  hl
2433  23      	    inc  hl
2434  10FA    	    djnz $2430
2436  1600    	    ld   d,$00
2438  3A2B86  	    ld   a,(snake1_busy)
243B  A7      	    and  a
243C  C24924  	    jp   nz,$2449
243F  3E06    	    ld   a,$06
2441  321786  	    ld   (snake1_state),a
2444  3E08    	    ld   a,$08
2446  82      	    add  a,d
2447  27      	    daa
2448  57      	    ld   d,a
2449  3A4B86  	    ld   a,(snake2_busy)
244C  A7      	    and  a
244D  C25A24  	    jp   nz,$245A
2450  3E06    	    ld   a,$06
2452  323786  	    ld   (snake2_state),a
2455  3E08    	    ld   a,$08
2457  82      	    add  a,d
2458  27      	    daa
2459  57      	    ld   d,a
245A  CD8C3A  	    call kill_enemies_bonus
245D  3E01    	    ld   a,$01
245F  323E80  	    ld   (endlevel_active),a
2462  3EE0    	    ld   a,$E0
2464  3200B8  	    ld   (watchdog),a
2467  C9      	    ret

                ;;; called several times
2468  CD4742  	    call gamble_update
246B  C9      	    ret

                player_init_template:  ; ldir'd to player record $8400 (46 = $2E bytes)
246C               db   $01, $00, $00, $00, $00, $00, $74, $C2
2474               db   $00, $00, $FF, $FE, $01, $02, $01, $02
247C               db   $FF, $FE, $05, $00, $00, $00, $00, $00
2484               db   $00, $00, $00, $00, $00, $00, $00, $01
248C               db   $00, $00, $00, $00, $9B, $24, $00, $00
2494               db   $00, $00, $00, $00, $00, $00
249A               db   $00           ; pad
                attract_demo_script:  ; FF-terminated joystick script for attract demo
249B               db   $0F, $01, $0F, $01, $04, $10, $0F, $02
24A3               db   $0F, $02, $0F, $02, $0F, $01, $0F, $01
24AB               db   $6F, $08, $04, $10, $6F, $08, $0F, $02
24B3               db   $4F, $02, $2F, $02, $0F, $01, $0F, $01
24BB               db   $0F, $08, $0F, $08, $0F, $01, $0F, $01
24C3               db   $6F, $08, $3F, $02, $1F, $02, $0F, $02
24CB               db   $04, $10, $0F, $01, $04, $10, $0F, $04
24D3               db   $0F, $02, $6F, $02, $0F, $08, $0F, $01
24DB               db   $3F, $01, $1F, $01, $0F, $01, $0F, $01
24E3               db   $0F, $04, $0F, $02, $0F, $02, $0F, $02
24EB               db   $0F, $04, $0F, $04, $0F, $04, $0F, $04
24F3               db   $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
24FB               db   $FF, $FF
24FD  23      	    inc  hl
24FE  5E      	    ld   e,(hl)
24FF  23      	    inc  hl
2500  56      	    ld   d,(hl)
2501  1A      	    ld   a,(de)
2502  FEFF    	    cp   $FF
2504  C20D25  	    jp   nz,$250D
2507  119B24  	    ld   de,attract_demo_script
250A  C30125  	    jp   $2501
250D  08      	    ex   af,af' ; '
250E  13      	    inc  de
250F  1A      	    ld   a,(de)
2510  13      	    inc  de
2511  72      	    ld   (hl),d
2512  2B      	    dec  hl
2513  73      	    ld   (hl),e
2514  2B      	    dec  hl
2515  08      	    ex   af,af' ; '
2516  77      	    ld   (hl),a
2517  08      	    ex   af,af' ; '
2518  C37425  	    jp   $2574

                get_player_tile_pos:
251B  3A0784  	    ld   a,(player_y)
251E  0F      	    rrca
251F  0F      	    rrca
2520  0F      	    rrca
2521  E61F    	    and  $1F
2523  5F      	    ld   e,a
2524  3A0684  	    ld   a,(player_x)
2527  ED44    	    neg
2529  07      	    rlca
252A  07      	    rlca
252B  57      	    ld   d,a
252C  E6E0    	    and  $E0
252E  B3      	    or   e
252F  5F      	    ld   e,a
2530  7A      	    ld   a,d
2531  E603    	    and  $03
2533  57      	    ld   d,a
2534  210090  	    ld   hl,screen_ram
2537  19      	    add  hl,de
2538  C9      	    ret

                player_update:  ; player state machine
2539  3A0084  	    ld   a,($8400)
253C  A7      	    and  a
253D  C25425  	    jp   nz,$2554
2540  110084  	    ld   de,$8400
2543  216C24  	    ld   hl,player_init_template
2546  012E00  	    ld   bc,$002E
2549  EDB0    	    ldir
254B  3EC9    	    ld   a,$C9
254D  3200B8  	    ld   (watchdog),a
2550  CD3810  	    call bomb_clear
2553  C9      	    ret
2554  210284  	    ld   hl,$8402
2557  34      	    inc  (hl)
2558  CB46    	    bit  0,(hl)
255A  CAD228  	    jp   z,$28D2
255D  3A3080  	    ld   a,(is_playing)
2560  A7      	    and  a
2561  C27125  	    jp   nz,$2571
2564  212384  	    ld   hl,$8423
2567  7E      	    ld   a,(hl)
2568  35      	    dec  (hl)
2569  A7      	    and  a
256A  CAFD24  	    jp   z,$24FD
256D  AF      	    xor  a
256E  C37425  	    jp   $2574
2571  3A00A0  	    ld   a,(hw_in_0)
2574  320184  	    ld   (controls),a
2577  CD9825  	    call player_update_move
257A  3A2284  	    ld   a,($8422)
257D  A7      	    and  a
257E  C29425  	    jp   nz,$2594
2581  CDB626  	    call move_player
2584  3A0884  	    ld   a,(player_sp_x)
2587  47      	    ld   b,a
2588  3A0984  	    ld   a,(player_sp_y)
258B  B0      	    or   b
258C  C29425  	    jp   nz,$2594
258F  3E00    	    ld   a,$00
2591  321684  	    ld   ($8416),a
2594  CD5328  	    call player_commit
2597  C9      	    ret

                player_update_move: ; player state machine, stage 2 (reads $841F)
2598  3A1F84  	    ld   a,($841F)
259B  FE01    	    cp   $01
259D  CABC25  	    jp   z,$25BC
25A0  08      	    ex   af,af' ; '
25A1  3E00    	    ld   a,$00
25A3  321684  	    ld   ($8416),a
25A6  08      	    ex   af,af' ; '
25A7  FE02    	    cp   $02
25A9  CAC225  	    jp   z,$25C2
25AC  FE00    	    cp   $00
25AE  CA1926  	    jp   z,$2619
25B1  FE04    	    cp   $04
25B3  CA2D26  	    jp   z,$262D
25B6  FE05    	    cp   $05
25B8  CAB226  	    jp   z,$26B2
25BB  C9      	    ret
25BC  3E01    	    ld   a,$01
25BE  321684  	    ld   ($8416),a
25C1  C9      	    ret
25C2  212084  	    ld   hl,$8420
25C5  7E      	    ld   a,(hl)
25C6  A7      	    and  a
25C7  C2DF25  	    jp   nz,$25DF
25CA  3E01    	    ld   a,$01
25CC  77      	    ld   (hl),a
25CD  3E80    	    ld   a,$80
25CF  23      	    inc  hl
25D0  77      	    ld   (hl),a
25D1  3E01    	    ld   a,$01
25D3  322284  	    ld   ($8422),a
25D6  3E0C    	    ld   a,$0C
25D8  321384  	    ld   ($8413),a
25DB  CD1828  	    call player_stop
25DE  C9      	    ret
25DF  23      	    inc  hl
25E0  35      	    dec  (hl)
25E1  7E      	    ld   a,(hl)
25E2  FE7E    	    cp   $7E
25E4  CAF725  	    jp   z,$25F7
25E7  FE40    	    cp   $40
25E9  CAFD25  	    jp   z,$25FD
25EC  FE30    	    cp   $30
25EE  CA0326  	    jp   z,$2603
25F1  FE20    	    cp   $20
25F3  CA0926  	    jp   z,$2609
25F6  C9      	    ret
25F7  3EE0    	    ld   a,$E0
25F9  3200B8  	    ld   (watchdog),a
25FC  C9      	    ret
25FD  3E0D    	    ld   a,$0D
25FF  321384  	    ld   ($8413),a
2602  C9      	    ret
2603  3E0E    	    ld   a,$0E
2605  321384  	    ld   ($8413),a
2608  C9      	    ret
2609  3E0F    	    ld   a,$0F
260B  321384  	    ld   ($8413),a
260E  3E00    	    ld   a,$00
2610  321F84  	    ld   ($841F),a
2613  3EA0    	    ld   a,$A0
2615  3200B8  	    ld   (watchdog),a
2618  C9      	    ret

    ;; reset somthing
2619  3E00    	    ld   a,$00
261B  320084  	    ld   ($8400),a
261E  322084  	    ld   ($8420),a
2621  320684  	    ld   (player_x),a
2624  320784  	    ld   (player_y),a
2627  3E01    	    ld   a,$01
2629  323380  	    ld   (req_death),a
262C  C9      	    ret

262D  212084  	    ld   hl,$8420
2630  7E      	    ld   a,(hl)
2631  A7      	    and  a
2632  C24726  	    jp   nz,$2647
2635  3E01    	    ld   a,$01
2637  77      	    ld   (hl),a
2638  322284  	    ld   ($8422),a
263B  3E00    	    ld   a,$00
263D  322984  	    ld   ($8429),a
2640  322A84  	    ld   ($842A),a
2643  CD1828  	    call player_stop
2646  C9      	    ret

2647  3A2A84  	    ld   a,($842A)
264A  A7      	    and  a
264B  C27426  	    jp   nz,$2674
264E  3A0784  	    ld   a,(player_y)
2651  C602    	    add  a,$02
2653  320784  	    ld   (player_y),a
2656  FEE0    	    cp   $E0
2658  D28B26  	    jp   nc,$268B
265B  CD1B25  	    call get_player_tile_pos
265E  01E2FF  	    ld   bc,$FFE2
2661  09      	    add  hl,bc
2662  7E      	    ld   a,(hl)
2663  FE37    	    cp   TILE_WATER ; fell in water
2665  CA6E26  	    jp   z,player_fell_water
2668  FE38    	    cp   TILE_WATER_2
266A  CA6E26  	    jp   z,player_fell_water
266D  C9      	    ret

                player_fell_water: ; can you fall in water? NO!
266E  3E01    	    ld   a,$01
2670  322A84  	    ld   ($842A),a ; hmm?
2673  C9      	    ret

2674  3A2984  	    ld   a,($8429)
2677  3C      	    inc  a
2678  322984  	    ld   ($8429),a
267B  FE02    	    cp   $02
267D  CA9626  	    jp   z,$2696
2680  FE0A    	    cp   $0A
2682  CA9C26  	    jp   z,$269C
2685  FE14    	    cp   $14
2687  CAA226  	    jp   z,$26A2
268A  C9      	    ret
268B  3E00    	    ld   a,$00
268D  322084  	    ld   ($8420),a
2690  3E02    	    ld   a,$02
2692  321F84  	    ld   ($841F),a
2695  C9      	    ret
2696  3E0D    	    ld   a,$0D
2698  321384  	    ld   ($8413),a
269B  C9      	    ret
269C  3E0E    	    ld   a,$0E
269E  321384  	    ld   ($8413),a
26A1  C9      	    ret
26A2  3E0F    	    ld   a,$0F
26A4  321384  	    ld   ($8413),a
26A7  3E00    	    ld   a,$00
26A9  321F84  	    ld   ($841F),a
26AC  3EA0    	    ld   a,$A0
26AE  3200B8  	    ld   (watchdog),a
26B1  C9      	    ret
26B2  CD0A3D  	    call scripted_move
26B5  C9      	    ret

                move_player:
26B6  3A0784  	    ld   a,(player_y)
26B9  E607    	    and  $07
26BB  FE02    	    cp   $02    ; only allow change dir ever 02 on y
26BD  C0      	    ret  nz
26BE  3A0684  	    ld   a,(player_x)
26C1  E607    	    and  $07
26C3  FE04    	    cp   $04    ; only allow change dir every 04 on x
26C5  C0      	    ret  nz
26C6  3A0184  	    ld   a,(controls)
26C9  0F      	    rrca
26CA  DA1027  	    jp   c,move_player_left
26CD  0F      	    rrca
26CE  DA5227  	    jp   c,move_player_right
26D1  0F      	    rrca
26D2  DA9427  	    jp   c,move_player_down
26D5  0F      	    rrca
26D6  DAD627  	    jp   c,move_player_up
26D9  00      	    nop
26DA  3A0684  	    ld   a,(player_x)
26DD  57      	    ld   d,a
26DE  3E14    	    ld   a,$14
26E0  0E20    	    ld   c,$20
26E2  0607    	    ld   b,$07
26E4  BA      	    cp   d
26E5  CAEE26  	    jp   z,$26EE
26E8  81      	    add  a,c
26E9  10F9    	    djnz $26E4
26EB  C3FF26  	    jp   $26FF
26EE  3A0784  	    ld   a,(player_y)
26F1  57      	    ld   d,a
26F2  3E22    	    ld   a,$22
26F4  0E20    	    ld   c,$20
26F6  0607    	    ld   b,$07
26F8  BA      	    cp   d
26F9  CA1828  	    jp   z,$2818
26FC  81      	    add  a,c
26FD  10F9    	    djnz $26F8
26FF  3A0884  	    ld   a,(player_sp_x)
2702  A7      	    and  a
2703  CA2928  	    jp   z,$2829
2706  3A0984  	    ld   a,(player_sp_y)
2709  A7      	    and  a
270A  CA3E28  	    jp   z,$283E
270D  C31828  	    jp   player_stop

                move_player_left:
2710  3A0684  	    ld   a,(player_x)
2713  FE14    	    cp   $14
2715  CA2928  	    jp   z,$2829
2718  D22327  	    jp   nc,$2723
271B  3E14    	    ld   a,$14  ; min $14 x
271D  320684  	    ld   (player_x),a
2720  C32928  	    jp   player_stop_x
2723  CD1B25  	    call get_player_tile_pos
2726  010200  	    ld   bc,$0002
2729  E5      	    push hl
272A  09      	    add  hl,bc
272B  3EFE    	    ld   a,TILE_GAP
272D  BE      	    cp   (hl)
272E  CA3727  	    jp   z,$2737
2731  3EEF    	    ld   a,$EF
2733  BE      	    cp   (hl)
2734  DA3B27  	    jp   c,$273B
2737  E1      	    pop  hl
2738  C32928  	    jp   player_stop_x
273B  E1      	    pop  hl
273C  3A0B84  	    ld   a,($840B)
273F  320884  	    ld   (player_sp_x),a
2742  3E00    	    ld   a,$00
2744  320984  	    ld   (player_sp_y),a
2747  3E01    	    ld   a,$01
2749  320484  	    ld   ($8404),a
274C  3E00    	    ld   a,$00
274E  321484  	    ld   ($8414),a
2751  C9      	    ret

                move_player_right:
2752  3A0684  	    ld   a,(player_x)
2755  FED4    	    cp   $D4
2757  CA2928  	    jp   z,$2829
275A  DA6527  	    jp   c,$2765
275D  3ED4    	    ld   a,$D4  ; max $d4 x
275F  320684  	    ld   (player_x),a
2762  C32928  	    jp   player_stop_x
2765  CD1B25  	    call get_player_tile_pos
2768  01C2FF  	    ld   bc,$FFC2
276B  E5      	    push hl
276C  09      	    add  hl,bc
276D  3EFE    	    ld   a,TILE_GAP
276F  BE      	    cp   (hl)
2770  CA7927  	    jp   z,$2779
2773  3EEF    	    ld   a,$EF
2775  BE      	    cp   (hl)
2776  DA7D27  	    jp   c,$277D
2779  E1      	    pop  hl
277A  C32928  	    jp   player_stop_x
277D  E1      	    pop  hl
277E  3A0D84  	    ld   a,($840D)
2781  320884  	    ld   (player_sp_x),a
2784  3E00    	    ld   a,$00
2786  320984  	    ld   (player_sp_y),a
2789  3E02    	    ld   a,$02
278B  320484  	    ld   ($8404),a
278E  3E80    	    ld   a,$80
2790  321484  	    ld   ($8414),a
2793  C9      	    ret

                ;;
                move_player_down:
2794  3A0784  	    ld   a,(player_y)
2797  FEE2    	    cp   $E2
2799  CA3E28  	    jp   z,$283E
279C  DAA727  	    jp   c,$27A7
279F  3EE2    	    ld   a,$E2
27A1  320784  	    ld   (player_y),a
27A4  C33E28  	    jp   player_stop_y
27A7  CD1B25  	    call get_player_tile_pos
27AA  01E3FF  	    ld   bc,$FFE3
27AD  E5      	    push hl
27AE  09      	    add  hl,bc
27AF  3EFE    	    ld   a,TILE_GAP
27B1  BE      	    cp   (hl)
27B2  CABB27  	    jp   z,$27BB
27B5  3EEF    	    ld   a,$EF
27B7  BE      	    cp   (hl)
27B8  DABF27  	    jp   c,$27BF
27BB  E1      	    pop  hl
27BC  C33E28  	    jp   player_stop_y
27BF  E1      	    pop  hl
27C0  3A0F84  	    ld   a,($840F)
27C3  320984  	    ld   (player_sp_y),a
27C6  3E00    	    ld   a,$00
27C8  320884  	    ld   (player_sp_x),a
27CB  3E04    	    ld   a,$04
27CD  320484  	    ld   ($8404),a
27D0  3E04    	    ld   a,$04
27D2  321484  	    ld   ($8414),a
27D5  C9      	    ret

                move_player_up:
27D6  3A0784  	    ld   a,(player_y)
27D9  FE22    	    cp   $22
27DB  CA3E28  	    jp   z,$283E
27DE  D2E927  	    jp   nc,$27E9
27E1  3E22    	    ld   a,$22
27E3  320784  	    ld   (player_y),a
27E6  C33E28  	    jp   player_stop_y
27E9  CD1B25  	    call get_player_tile_pos
27EC  01E1FF  	    ld   bc,$FFE1
27EF  E5      	    push hl
27F0  09      	    add  hl,bc
27F1  3EFE    	    ld   a,TILE_GAP
27F3  BE      	    cp   (hl)
27F4  CAFD27  	    jp   z,$27FD
27F7  3EEF    	    ld   a,$EF
27F9  BE      	    cp   (hl)
27FA  DA0128  	    jp   c,$2801
27FD  E1      	    pop  hl
27FE  C33E28  	    jp   player_stop_y
2801  E1      	    pop  hl
2802  3A1184  	    ld   a,($8411)
2805  320984  	    ld   (player_sp_y),a
2808  3E00    	    ld   a,$00
280A  320884  	    ld   (player_sp_x),a
280D  3E08    	    ld   a,$08
280F  320484  	    ld   ($8404),a
2812  3E08    	    ld   a,$08
2814  321484  	    ld   ($8414),a
2817  C9      	    ret


                player_stop: ; zero player speed x/y + moving flag $8416
2818  3E00    	    ld   a,$00
281A  320884  	    ld   (player_sp_x),a
281D  3E00    	    ld   a,$00
281F  320984  	    ld   (player_sp_y),a
2822  3E00    	    ld   a,$00
2824  321684  	    ld   ($8416),a
2827  00      	    nop
2828  C9      	    ret

                player_stop_x: ; zero player x-speed (checks y-speed)
2829  3E00    	    ld   a,$00
282B  320884  	    ld   (player_sp_x),a
282E  00      	    nop
282F  3A0984  	    ld   a,(player_sp_y)
2832  A7      	    and  a
2833  C8      	    ret  z
2834  FE80    	    cp   $80
2836  DA9427  	    jp   c,$2794
2839  C3D627  	    jp   $27D6
283C  00      	    nop
283D  C9      	    ret

                player_stop_y: ; zero player y-speed (checks x-speed)
283E  3E00    	    ld   a,$00
2840  320984  	    ld   (player_sp_y),a
2843  00      	    nop
2844  3A0884  	    ld   a,(player_sp_x)
2847  A7      	    and  a
2848  C8      	    ret  z
2849  FE80    	    cp   $80
284B  DA5227  	    jp   c,$2752
284E  C31027  	    jp   $2710
2851  00      	    nop
2852  C9      	    ret

                player_commit: ; commit player pos/tile into sprite mirror (checks $8422)
2853  3A2284  	    ld   a,($8422)
2856  A7      	    and  a
2857  C2BB28  	    jp   nz,$28BB
285A  3A0884  	    ld   a,(player_sp_x)
285D  47      	    ld   b,a
285E  3A0684  	    ld   a,(player_x)
2861  80      	    add  a,b
2862  320684  	    ld   (player_x),a
2865  3A0984  	    ld   a,(player_sp_y)
2868  47      	    ld   b,a
2869  3A0784  	    ld   a,(player_y)
286C  80      	    add  a,b
286D  320784  	    ld   (player_y),a
2870  3A1684  	    ld   a,($8416)
2873  A7      	    and  a
2874  CABB28  	    jp   z,$28BB
2877  3A1784  	    ld   a,($8417)
287A  3C      	    inc  a
287B  CB47    	    bit  0,a
287D  CAAC28  	    jp   z,$28AC
2880  3A1884  	    ld   a,($8418)
2883  3C      	    inc  a
2884  E603    	    and  $03
2886  321884  	    ld   ($8418),a
2889  FE00    	    cp   $00
288B  C29328  	    jp   nz,$2893
288E  3E00    	    ld   a,$00
2890  C3A928  	    jp   $28A9
2893  FE01    	    cp   $01
2895  C29D28  	    jp   nz,$289D
2898  3E01    	    ld   a,$01
289A  C3A928  	    jp   $28A9
289D  FE02    	    cp   $02
289F  C2A728  	    jp   nz,$28A7
28A2  3E02    	    ld   a,$02
28A4  C3A928  	    jp   $28A9
28A7  3E03    	    ld   a,$03
28A9  321584  	    ld   ($8415),a
28AC  3A1484  	    ld   a,($8414)
28AF  E6FC    	    and  $FC
28B1  47      	    ld   b,a
28B2  3A1884  	    ld   a,($8418)
28B5  E603    	    and  $03
28B7  B0      	    or   b
28B8  321384  	    ld   ($8413),a
28BB  210080  	    ld   hl,ram_start
28BE  3A0684  	    ld   a,(player_x)
28C1  77      	    ld   (hl),a
28C2  23      	    inc  hl
28C3  3A1384  	    ld   a,($8413)
28C6  77      	    ld   (hl),a
28C7  23      	    inc  hl
28C8  3A1284  	    ld   a,($8412)
28CB  77      	    ld   (hl),a
28CC  23      	    inc  hl
28CD  3A0784  	    ld   a,(player_y)
28D0  77      	    ld   (hl),a
28D1  C9      	    ret
28D2  3A0784  	    ld   a,(player_y)
28D5  E607    	    and  $07
28D7  FE02    	    cp   $02
28D9  C0      	    ret  nz
28DA  3A0684  	    ld   a,(player_x)
28DD  E607    	    and  $07
28DF  FE04    	    cp   $04
28E1  C0      	    ret  nz
28E2  CD1B25  	    call get_player_tile_pos
28E5  E5      	    push hl
28E6  01E2FF  	    ld   bc,$FFE2
28E9  09      	    add  hl,bc
28EA  7E      	    ld   a,(hl)
28EB  FEF5    	    cp   TILE_EXIT_HOLE
28ED  C2F528  	    jp   nz,$28F5
28F0  3E01    	    ld   a,$01
28F2  322D84  	    ld   ($842D),a
28F5  E1      	    pop  hl
28F6  3A2284  	    ld   a,($8422)
28F9  A7      	    and  a
28FA  C22229  	    jp   nz,$2922
28FD  E5      	    push hl
28FE  CD4C29  	    call player_enter_hole
2901  E1      	    pop  hl
2902  E5      	    push hl
2903  CD2329  	    call player_touch_boulder
2906  E1      	    pop  hl
2907  E5      	    push hl
2908  CDA129  	    call player_trigger_bridge
290B  E1      	    pop  hl
290C  E5      	    push hl
290D  CDAF29  	    call player_trigger_platform
2910  E1      	    pop  hl
2911  E5      	    push hl
2912  CDC829  	    call food_pickup
2915  E1      	    pop  hl
2916  3AE080  	    ld   a,($80E0)
2919  A7      	    and  a
291A  C22229  	    jp   nz,$2922
291D  E5      	    push hl
291E  CD5A29  	    call player_home_entry
2921  E1      	    pop  hl
2922  C9      	    ret

                player_touch_boulder: ; player on TILE_BOULDER $39/$3A -> boulder_req $85C1=1
2923  01E1FF  	    ld   bc,$FFE1
2926  09      	    add  hl,bc
2927  7E      	    ld   a,(hl)
2928  FE39    	    cp   TILE_BOULDER
292A  CA3029  	    jp   z,$2930
292D  FE3A    	    cp   $3A
292F  C0      	    ret  nz
2930  3A8086  	    ld   a,(bomb_placed)
2933  A7      	    and  a
2934  C0      	    ret  nz
2935  3AC185  	    ld   a,(boulder_req)
2938  A7      	    and  a
2939  C0      	    ret  nz
293A  3E01    	    ld   a,$01
293C  32C185  	    ld   (boulder_req),a
293F  3A0684  	    ld   a,(player_x)
2942  32C285  	    ld   ($85C2),a
2945  3A0784  	    ld   a,(player_y)
2948  32C385  	    ld   ($85C3),a
294B  C9      	    ret

                player_enter_hole: ; player on $FE -> $841F=4 (enter hole)
294C  01E2FF  	    ld   bc,$FFE2
294F  09      	    add  hl,bc
2950  7E      	    ld   a,(hl)
2951  FEFE    	    cp   TILE_GAP
2953  C0      	    ret  nz
2954  3E04    	    ld   a,$04
2956  321F84  	    ld   ($841F),a
2959  C9      	    ret

                player_home_entry: ; player on $FF over-hole -> scripted home entry $80E0, $841F=5
295A  01E2FF  	    ld   bc,$FFE2
295D  09      	    add  hl,bc
295E  7E      	    ld   a,(hl)
295F  FEFF    	    cp   $FF
2961  C0      	    ret  nz
2962  3A2D84  	    ld   a,($842D)
2965  A7      	    and  a
2966  C8      	    ret  z
2967  3A0784  	    ld   a,(player_y)
296A  FE70    	    cp   $70
296C  D27D29  	    jp   nc,$297D
296F  0E01    	    ld   c,$01
2971  3A1484  	    ld   a,($8414)
2974  07      	    rlca
2975  D28B29  	    jp   nc,$298B
2978  0E02    	    ld   c,$02
297A  C38B29  	    jp   $298B
297D  0E21    	    ld   c,$21
297F  3A1484  	    ld   a,($8414)
2982  07      	    rlca
2983  D28B29  	    jp   nc,$298B
2986  0E22    	    ld   c,$22
2988  C38B29  	    jp   $298B
298B  79      	    ld   a,c
298C  32E080  	    ld   ($80E0),a
298F  A7      	    and  a
2990  C8      	    ret  z
2991  3E05    	    ld   a,$05
2993  321F84  	    ld   ($841F),a
2996  3E01    	    ld   a,$01
2998  322284  	    ld   ($8422),a
299B  3E00    	    ld   a,$00
299D  322D84  	    ld   ($842D),a
29A0  C9      	    ret
                player_trigger_bridge: ; player on $FC -> bridge subsystem $80C0=1
29A1  01E2FF  	    ld   bc,$FFE2
29A4  09      	    add  hl,bc
29A5  7E      	    ld   a,(hl)
29A6  FEFC    	    cp   $FC
29A8  C0      	    ret  nz
29A9  3E01    	    ld   a,$01
29AB  32C080  	    ld   ($80C0),a
29AE  C9      	    ret
                player_trigger_platform: ; player on $F9 -> sliding platform $80A2
29AF  01E2FF  	    ld   bc,$FFE2
29B2  09      	    add  hl,bc
29B3  7E      	    ld   a,(hl)
29B4  FEF9    	    cp   $F9
29B6  C0      	    ret  nz
29B7  3AA080  	    ld   a,(carrying_1)
29BA  A7      	    and  a
29BB  C8      	    ret  z
29BC  3AA280  	    ld   a,(carrying_3)
29BF  FE01    	    cp   $01
29C1  C0      	    ret  nz
29C2  3E02    	    ld   a,$02
29C4  32A280  	    ld   (carrying_3),a
29C7  C9      	    ret

                food_pickup:    ; player over food tile ($DC-$EF) -> mark carried (0->2)
29C8  3AA080  	    ld   a,(carrying_1)
29CB  A7      	    and  a
29CC  C0      	    ret  nz
29CD  01E1FF  	    ld   bc,$FFE1
29D0  09      	    add  hl,bc
29D1  7E      	    ld   a,(hl)
29D2  FEDC    	    cp   $DC
29D4  D8      	    ret  c
29D5  FEF0    	    cp   $F0
29D7  D0      	    ret  nc
29D8  0E02    	    ld   c,$02
29DA  CDB23E  	    call food_set_state
29DD  229C80  	    ld   ($809C),hl
29E0  7E      	    ld   a,(hl)
29E1  167A    	    ld   d,$7A
29E3  FEE1    	    cp   $E1
29E5  CA1D2A  	    jp   z,$2A1D
29E8  FEE3    	    cp   $E3
29EA  CA1D2A  	    jp   z,$2A1D
29ED  167C    	    ld   d,$7C
29EF  FEE5    	    cp   $E5
29F1  CA1D2A  	    jp   z,$2A1D
29F4  FEE7    	    cp   $E7
29F6  CA1D2A  	    jp   z,$2A1D
29F9  167E    	    ld   d,$7E
29FB  FEE9    	    cp   $E9
29FD  CA1D2A  	    jp   z,$2A1D
2A00  FEEB    	    cp   $EB
2A02  CA1D2A  	    jp   z,$2A1D
2A05  167D    	    ld   d,$7D
2A07  FEED    	    cp   $ED
2A09  CA1D2A  	    jp   z,$2A1D
2A0C  FEEF    	    cp   $EF
2A0E  CA1D2A  	    jp   z,$2A1D
2A11  167B    	    ld   d,$7B
2A13  FEDD    	    cp   $DD
2A15  CA1D2A  	    jp   z,$2A1D
2A18  FEDF    	    cp   $DF
2A1A  CA1D2A  	    jp   z,$2A1D
2A1D  CBD4    	    set  2,h
2A1F  5E      	    ld   e,(hl)
2A20  219E80  	    ld   hl,$809E
2A23  73      	    ld   (hl),e
2A24  23      	    inc  hl
2A25  72      	    ld   (hl),d
2A26  23      	    inc  hl
2A27  3601    	    ld   (hl),$01
2A29  E5      	    push hl
2A2A  D5      	    push de
2A2B  C5      	    push bc
2A2C  F5      	    push af
2A2D  CD623F  	    call food_maze_erase
2A30  214080  	    ld   hl,score_add_trig
2A33  114E2A  	    ld   de,$2A4E
2A36  0603    	    ld   b,$03
2A38  3601    	    ld   (hl),$01
2A3A  23      	    inc  hl
2A3B  AF      	    xor  a
2A3C  1A      	    ld   a,(de)
2A3D  8E      	    adc  a,(hl)
2A3E  27      	    daa
2A3F  77      	    ld   (hl),a
2A40  23      	    inc  hl
2A41  13      	    inc  de
2A42  10F8    	    djnz $2A3C
2A44  3E84    	    ld   a,$84
2A46  3200B8  	    ld   (watchdog),a
2A49  F1      	    pop  af
2A4A  C1      	    pop  bc
2A4B  D1      	    pop  de
2A4C  E1      	    pop  hl
2A4D  C9      	    ret
2A4E  00      	    nop
2A4F  02      	    ld   (bc),a
2A50  00      	    nop

                cat_manager:    ; cats A/B/C
2A51  210885  	    ld   hl,cat1_ai_init
2A54  7E      	    ld   a,(hl)
2A55  A7      	    and  a
2A56  C2702A  	    jp   nz,$2A70
2A59  3601    	    ld   (hl),$01
2A5B  212885  	    ld   hl,cat1_ai_ptr
2A5E  015A2B  	    ld   bc,$2B5A
2A61  CDCF31  	    call load_level_ptr
2A64  212D85  	    ld   hl,cat1_ptr2
2A67  01282B  	    ld   bc,$2B28
2A6A  CDCF31  	    call load_level_ptr
2A6D  CD1F2B  	    call $2B1F
_
2A70  212985  	    ld   hl,$8529
2A73  110085  	    ld   de,cat1_enable
2A76  01EFFF  	    ld   bc,$FFEF
2A79  1A      	    ld   a,(de)
2A7A  A7      	    and  a
2A7B  CCF12A  	    call z,$2AF1
2A7E  210A85  	    ld   hl,cat2_ai_init
2A81  7E      	    ld   a,(hl)
2A82  A7      	    and  a
2A83  C29D2A  	    jp   nz,$2A9D
2A86  3601    	    ld   (hl),$01
2A88  216885  	    ld   hl,cat2_ai_ptr
2A8B  01B02B  	    ld   bc,$2BB0
2A8E  CDCF31  	    call load_level_ptr
2A91  216D85  	    ld   hl,cat2_ptr2
2A94  01282B  	    ld   bc,$2B28
2A97  CDCF31  	    call load_level_ptr
2A9A  CD1F2B  	    call $2B1F
2A9D  216985  	    ld   hl,$8569
2AA0  110485  	    ld   de,cat2_enable
2AA3  01EFFF  	    ld   bc,$FFEF ; - 16
2AA6  1A      	    ld   a,(de)
2AA7  A7      	    and  a
2AA8  CCF12A  	    call z,$2AF1
2AAB  210B85  	    ld   hl,cat3_ai_init
2AAE  7E      	    ld   a,(hl)
2AAF  A7      	    and  a
2AB0  C2CA2A  	    jp   nz,$2ACA
2AB3  3601    	    ld   (hl),$01
2AB5  218885  	    ld   hl,cat3_ai_ptr
2AB8  01062C  	    ld   bc,$2C06
2ABB  CDCF31  	    call load_level_ptr
2ABE  218D85  	    ld   hl,cat3_ptr2
2AC1  01282B  	    ld   bc,$2B28
2AC4  CDCF31  	    call load_level_ptr
2AC7  CD1F2B  	    call $2B1F
2ACA  218985  	    ld   hl,$8589
2ACD  110685  	    ld   de,cat3_enable
2AD0  01EFFF  	    ld   bc,$FFEF ; -16
2AD3  1A      	    ld   a,(de)
2AD4  A7      	    and  a
2AD5  CCF12A  	    call z,$2AF1
2AD8  210085  	    ld   hl,cat1_enable
2ADB  7E      	    ld   a,(hl)
2ADC  A7      	    and  a
2ADD  C43C2B  	    call nz,setup_cat_1
2AE0  210485  	    ld   hl,cat2_enable
2AE3  7E      	    ld   a,(hl)
2AE4  A7      	    and  a
2AE5  C4922B  	    call nz,setup_cat_2
2AE8  210685  	    ld   hl,cat3_enable
2AEB  7E      	    ld   a,(hl)
2AEC  A7      	    and  a
2AED  C4E82B  	    call nz,setup_cat_3
2AF0  C9      	    ret

                enemy_spawn_gate: ; per-enemy spawn countdown + tile-validity gate
2AF1  C5      	    push bc
2AF2  46      	    ld   b,(hl)
2AF3  2B      	    dec  hl
2AF4  7E      	    ld   a,(hl)
2AF5  B0      	    or   b
2AF6  C1      	    pop  bc
2AF7  C2132B  	    jp   nz,$2B13
2AFA  09      	    add  hl,bc
2AFB  7E      	    ld   a,(hl)
2AFC  FE03    	    cp   $03
2AFE  C20F2B  	    jp   nz,$2B0F
2B01  23      	    inc  hl
2B02  7E      	    ld   a,(hl)
2B03  E607    	    and  $07
2B05  FE04    	    cp   $04
2B07  C0      	    ret  nz
2B08  23      	    inc  hl
2B09  7E      	    ld   a,(hl)
2B0A  E607    	    and  $07
2B0C  FE02    	    cp   $02
2B0E  C0      	    ret  nz
2B0F  3E01    	    ld   a,$01
2B11  12      	    ld   (de),a
2B12  C9      	    ret
2B13  7E      	    ld   a,(hl)
2B14  A7      	    and  a
2B15  CA1A2B  	    jp   z,$2B1A
2B18  35      	    dec  (hl)
2B19  C9      	    ret
2B1A  363C    	    ld   (hl),$3C
2B1C  23      	    inc  hl
2B1D  35      	    dec  (hl)
2B1E  C9      	    ret
2B1F  AF      	    xor  a
2B20  23      	    inc  hl
2B21  77      	    ld   (hl),a
2B22  01E8FF  	    ld   bc,$FFE8
2B25  09      	    add  hl,bc
2B26  77      	    ld   (hl),a
2B27  C9      	    ret
2B28  3C      	    inc  a
2B29  78      	    ld   a,b
2B2A  3C      	    inc  a
2B2B  64      	    ld   h,h
2B2C  3C      	    inc  a
2B2D  5A      	    ld   e,d
2B2E  3C      	    inc  a
2B2F  46      	    ld   b,(hl)
2B30  3C      	    inc  a
2B31  3C      	    inc  a
2B32  3C      	    inc  a
2B33  323C28  	    ld   ($283C),a
2B36  3C      	    inc  a
2B37  1E3C    	    ld   e,$3C
2B39  14      	    inc  d
2B3A  3C      	    inc  a
2B3B  00      	    nop

                setup_cat_1:
2B3C  23      	    inc  hl
2B3D  7E      	    ld   a,(hl) ; 8501: cat1_active
2B3E  A7      	    and  a
2B3F  C26E2B  	    jp   nz,$2B6E
2B42  3A3E80  	    ld   a,(endlevel_active)
2B45  A7      	    and  a
2B46  C0      	    ret  nz
2B47  3601    	    ld   (hl),$01
2B49  111085  	    ld   de,cat1_bytes
2B4C  21752B  	    ld   hl,cat1_init_data
2B4F  011D00  	    ld   bc,$001D ; 29 bytes
2B52  EDB0    	    ldir          ; copy them
2B54  3E87    	    ld   a,$87
2B56  3200B8  	    ld   (watchdog),a
2B59  C9      	    ret
    ;; data?
2B5A  3002    	    jr   nc,$2B5E
2B5C  3002    	    jr   nc,$2B60
2B5E  3002    	    jr   nc,$2B62
2B60  34      	    inc  (hl)
2B61  013000  	    ld   bc,$0030
2B64  3000    	    jr   nc,$2B66
2B66  3000    	    jr   nc,$2B68
2B68  3000    	    jr   nc,$2B6A
2B6A  1000    	    djnz $2B6C
2B6C  1000    	    djnz $2B6E
2B6E  211785  	    ld   hl,cat1_state
2B71  CD3E2C  	    call cat_ai
2B74  C9      	    ret

                cat1_init_data:
2B75                db $00, $00, $00, $05, $1C, $00, $00, $01
2B7D                db $B4, $42, $00, $00, $00, $FF, $01, $00
2B85                db $01, $FF, $00, $00, $00, $00, $00, $00
2B8D                db $00, $00, $00, $01, $00

                setup_cat_2:
2B92  23       	    inc  hl
2B93  7E      	    ld   a,(hl)
2B94  A7      	    and  a
2B95  C2C42B  	    jp   nz,$2BC4
2B98  3A3E80  	    ld   a,(endlevel_active)
2B9B  A7      	    and  a
2B9C  C0      	    ret  nz
2B9D  3601    	    ld   (hl),$01
2B9F  115085  	    ld   de,cat2_bytes
2BA2  21CB2B  	    ld   hl,cat2_init_data
2BA5  011D00  	    ld   bc,$001D ; 29 bytes
2BA8  EDB0    	    ldir
2BAA  3E87    	    ld   a,$87
2BAC  3200B8  	    ld   (watchdog),a
2BAF  C9      	    ret
2BB0  14      	    inc  d
2BB1  1614    	    ld   d,$14
2BB3  14      	    inc  d
2BB4  14      	    inc  d
2BB5  0F      	    rrca
2BB6  14      	    inc  d
2BB7  0D      	    dec  c
2BB8  00      	    nop
2BB9  0B      	    dec  bc
2BBA  00      	    nop
2BBB  09      	    add  hl,bc
2BBC  1806    	    jr   $2BC4
2BBE  2805    	    jr   z,$2BC5
2BC0  2805    	    jr   z,$2BC7
2BC2  1004    	    djnz $2BC8
2BC4  215785  	    ld   hl,cat2_state
2BC7  CD3E2C  	    call cat_ai
2BCA  C9      	    ret

                cat2_init_data:
2BCB  00      	    nop
2BCC  00      	    nop
2BCD  00      	    nop
2BCE  0D      	    dec  c
2BCF  1C      	    inc  e
2BD0  00      	    nop
2BD1  00      	    nop
2BD2  013442  	    ld   bc,$4234
2BD5  00      	    nop
2BD6  00      	    nop
2BD7  00      	    nop
2BD8  FF      	    rst  $38
2BD9  010001  	    ld   bc,$0100
2BDC  FF      	    rst  $38
2BDD  00      	    nop
2BDE  00      	    nop
2BDF  00      	    nop
2BE0  00      	    nop
2BE1  00      	    nop
2BE2  00      	    nop
2BE3  00      	    nop
2BE4  00      	    nop
2BE5  00      	    nop
2BE6  01            byte 01
2BE7  00            nop

                setup_cat_3:
2BE8  23  	        inc  hl
2BE9  7E      	    ld   a,(hl)
2BEA  A7      	    and  a
2BEB  C21A2C  	    jp   nz,$2C1A
2BEE  3A3E80  	    ld   a,(endlevel_active)
2BF1  A7      	    and  a
2BF2  C0      	    ret  nz
2BF3  3601    	    ld   (hl),$01
2BF5  117085  	    ld   de,$8570
2BF8  21212C  	    ld   hl,cat3_init_data
2BFB  011D00  	    ld   bc,$001D
2BFE  EDB0    	    ldir
2C00  3E87    	    ld   a,$87
2C02  3200B8  	    ld   (watchdog),a
2C05  C9      	    ret
2C06  24      	    inc  h
2C07  0624    	    ld   b,$24
2C09  0614    	    ld   b,$14
2C0B  02      	    ld   (bc),a
2C0C  00      	    nop
2C0D  02      	    ld   (bc),a
2C0E  3000    	    jr   nc,$2C10
2C10  3000    	    jr   nc,$2C12
2C12  3000    	    jr   nc,$2C14
2C14  3000    	    jr   nc,$2C16
2C16  1000    	    djnz $2C18
2C18  1000    	    djnz $2C1A
2C1A  217785  	    ld   hl,cat3_state
2C1D  CD3E2C  	    call cat_ai
2C20  C9      	    ret

                cat3_init_data:
2C21  00      	    nop
2C22  00      	    nop
2C23  00      	    nop
2C24  111C00  	    ld   de,$001C
2C27  00      	    nop
2C28  0134C2  	    ld   bc,$C234
2C2B  00      	    nop
2C2C  00      	    nop
2C2D  00      	    nop
2C2E  FF      	    rst  $38
2C2F  010001  	    ld   bc,$0100
2C32  FF      	    rst  $38
2C33  00      	    nop
2C34  00      	    nop
2C35  00      	    nop
2C36  00      	    nop
2C37  00      	    nop
2C38  00      	    nop
2C39  00      	    nop
2C3A  00      	    nop
2C3B  00      	    nop
2C3C  0100          byte 01,00
                cat_ai: ; per-enemy state engine (cats)
2C3E  E5  	        push hl
2C3F  EB      	    ex   de,hl
2C40  211800  	    ld   hl,$0018
2C43  19      	    add  hl,de
2C44  54      	    ld   d,h
2C45  5D      	    ld   e,l
2C46  2B      	    dec  hl
2C47  1A      	    ld   a,(de)
2C48  A7      	    and  a
2C49  01EAFF  	    ld   bc,$FFEA
2C4C  CCF12A  	    call z,$2AF1
2C4F  E1      	    pop  hl
2C50  7E      	    ld   a,(hl)
2C51  FE01    	    cp   $01
2C53  CA702C  	    jp   z,$2C70
2C56  FE03    	    cp   $03
2C58  CAB62C  	    jp   z,$2CB6
2C5B  FE04    	    cp   $04
2C5D  CADD30  	    jp   z,$30DD
2C60  FE05    	    cp   $05
2C62  CA1C31  	    jp   z,$311C
2C65  FE06    	    cp   $06
2C67  CA5031  	    jp   z,$3150
2C6A  FE07    	    cp   $07
2C6C  CA8431  	    jp   z,$3184
2C6F  C9      	    ret
2C70  3A3E80  	    ld   a,(endlevel_active)
2C73  A7      	    and  a
2C74  C0      	    ret  nz
2C75  EB      	    ex   de,hl
2C76  42      	    ld   b,d
2C77  4B      	    ld   c,e
2C78  211300  	    ld   hl,$0013
2C7B  19      	    add  hl,de
2C7C  1B      	    dec  de
2C7D  1B      	    dec  de
2C7E  1B      	    dec  de
2C7F  1B      	    dec  de
2C80  34      	    inc  (hl)
2C81  7E      	    ld   a,(hl)
2C82  FE80    	    cp   $80
2C84  D2982C  	    jp   nc,$2C98
2C87  E61F    	    and  $1F
2C89  FE10    	    cp   $10
2C8B  DA922C  	    jp   c,$2C92
2C8E  CD9C30  	    call enemy_sprite_commit
2C91  C9      	    ret
2C92  061F    	    ld   b,$1F
2C94  CDA22C  	    call $2CA2
2C97  C9      	    ret
2C98  23      	    inc  hl
2C99  3600    	    ld   (hl),$00
2C9B  3E03    	    ld   a,$03
2C9D  02      	    ld   (bc),a
2C9E  CD9C30  	    call enemy_sprite_commit
2CA1  C9      	    ret
2CA2  1A      	    ld   a,(de)
2CA3  210500  	    ld   hl,$0005
2CA6  19      	    add  hl,de
2CA7  EB      	    ex   de,hl
2CA8  6F      	    ld   l,a
2CA9  2680    	    ld   h,$80
2CAB  70      	    ld   (hl),b
2CAC  2B      	    dec  hl
2CAD  1A      	    ld   a,(de)
2CAE  77      	    ld   (hl),a
2CAF  23      	    inc  hl
2CB0  23      	    inc  hl
2CB1  23      	    inc  hl
2CB2  13      	    inc  de
2CB3  1A      	    ld   a,(de)
2CB4  77      	    ld   (hl),a
2CB5  C9      	    ret
2CB6  EB      	    ex   de,hl
2CB7  211000  	    ld   hl,$0010
2CBA  19      	    add  hl,de
2CBB  7E      	    ld   a,(hl)
2CBC  A7      	    and  a
2CBD  CAC62C  	    jp   z,$2CC6
2CC0  35      	    dec  (hl)
2CC1  EB      	    ex   de,hl
2CC2  23      	    inc  hl
2CC3  C3B52D  	    jp   $2DB5
2CC6  13      	    inc  de
2CC7  01FBFF  	    ld   bc,$FFFB
2CCA  09      	    add  hl,bc
2CCB  EB      	    ex   de,hl
2CCC  0607    	    ld   b,$07
2CCE  3E14    	    ld   a,$14
2CD0  BE      	    cp   (hl)
2CD1  CADC2C  	    jp   z,$2CDC
2CD4  C620    	    add  a,$20
2CD6  10F8    	    djnz $2CD0
2CD8  23      	    inc  hl
2CD9  C3B42D  	    jp   $2DB4
2CDC  23      	    inc  hl
2CDD  0607    	    ld   b,$07
2CDF  3E22    	    ld   a,$22
2CE1  BE      	    cp   (hl)
2CE2  CA492D  	    jp   z,drift_gate     ; both axes on the lattice -> at a junction, run drift gate
2CE5  C620    	    add  a,$20
2CE7  10F8    	    djnz $2CE1
2CE9  C3B42D  	    jp   $2DB4
                enemy_rand_dir: ; ld a,r random-direction source
2CEC  ED5F    	    ld   a,r
2CEE  E603    	    and  $03
2CF0  FE01    	    cp   $01
2CF2  C2F82C  	    jp   nz,$2CF8
2CF5  3601    	    ld   (hl),$01
2CF7  C9      	    ret
2CF8  FE02    	    cp   $02
2CFA  C2002D  	    jp   nz,$2D00
2CFD  3602    	    ld   (hl),$02
2CFF  C9      	    ret
2D00  FE03    	    cp   $03
2D02  C2082D  	    jp   nz,$2D08
2D05  3604    	    ld   (hl),$04
2D07  C9      	    ret
2D08  FE00    	    cp   $00
2D0A  C0      	    ret  nz
2D0B  3608    	    ld   (hl),$08
2D0D  C9      	    ret

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
2D0E  42      	    ld   b,d
2D0F  4B      	    ld   c,e
2D10  54      	    ld   d,h
2D11  5D      	    ld   e,l
2D12  1B      	    dec  de
2D13  EB      	    ex   de,hl
2D14  0A      	    ld   a,(bc)           ; axis toggle (+$12)
2D15  A7      	    and  a
2D16  C2312D  	    jp   nz,$2D31         ; toggle set -> do X axis instead
2D19  3E01    	    ld   a,$01
2D1B  02      	    ld   (bc),a           ; toggle = 1 (next re-steer does X)
2D1C  3A0380  	    ld   a,($8003)        ; player game-Y
2D1F  BE      	    cp   (hl)             ; vs enemy Y (+$09)
2D20  2B      	    dec  hl
2D21  EB      	    ex   de,hl
2D22  CA2E2D  	    jp   z,$2D2E
2D25  DA2B2D  	    jp   c,$2D2B
2D28  3604    	    ld   (hl),$04         ; dir (+$0A) = $04 : player below -> move Y+
2D2A  C9      	    ret
2D2B  3608    	    ld   (hl),$08         ; dir = $08 : player above -> move Y-
2D2D  C9      	    ret
2D2E  3600    	    ld   (hl),$00         ; aligned on Y -> no move this axis
2D30  C9      	    ret
2D31  2B      	    dec  hl
2D32  3E00    	    ld   a,$00
2D34  02      	    ld   (bc),a           ; toggle = 0 (next re-steer does Y)
2D35  3A0080  	    ld   a,(ram_start)    ; player game-X ($8000)
2D38  BE      	    cp   (hl)             ; vs enemy X (+$08)
2D39  EB      	    ex   de,hl
2D3A  CA462D  	    jp   z,$2D46
2D3D  DA432D  	    jp   c,$2D43
2D40  3602    	    ld   (hl),$02         ; dir (+$0A) = $02 : player right -> move X+
2D42  C9      	    ret
2D43  3601    	    ld   (hl),$01         ; dir = $01 : player left -> move X-
2D45  C9      	    ret
2D46  3600    	    ld   (hl),$00         ; aligned on X -> no move this axis
2D48  C9      	    ret
                drift_gate:     ; at a junction: bump per-cat counter (+$1C), then re-aim at the
                                ;; player UNLESS (cnt & mask)==excluded -> keep straight ("drift").
                                ;; mask/excluded picked by this cat's own record-addr nibble ($2D53);
                                ;; excluded doubles as a grace-period phase (see CLAUDE.md §6 step 2).
2D49  E5      	    push hl
2D4A  011300  	    ld   bc,$0013
2D4D  09      	    add  hl,bc
2D4E  34      	    inc  (hl)
2D4F  44      	    ld   b,h
2D50  4D      	    ld   c,l
2D51  E1      	    pop  hl
2D52  23      	    inc  hl
2D53  7D      	    ld   a,l
2D54  E6F0    	    and  $F0
2D56  FE10    	    cp   $10
2D58  C26D2D  	    jp   nz,$2D6D
                ;; per-enemy "drift" gate (imperfection): re-aim at the player UNLESS the step
                ;; counter (+$1C) hits an excluded value, in which case skip the re-aim and keep
                ;; walking straight. mask/excluded picked by record-addr low nibble ($10 here).
2D5B  0A      	    ld   a,(bc)           ; step counter (+$1C)
2D5C  E603    	    and  $03
2D5E  FE00    	    cp   $00
2D60  C40E2D  	    call nz,enemy_chase   ; (cnt&3)!=0 -> re-aim; ==0 -> drift straight
2D63  EB      	    ex   de,hl
2D64  210D00  	    ld   hl,$000D
2D67  19      	    add  hl,de
2D68  3630    	    ld   (hl),$30
2D6A  C3B22D  	    jp   $2DB2
2D6D  FE30    	    cp   $30
2D6F  C2842D  	    jp   nz,$2D84
2D72  0A      	    ld   a,(bc)
2D73  E603    	    and  $03
2D75  FE02    	    cp   $02
2D77  C40E2D  	    call nz,enemy_chase
2D7A  EB      	    ex   de,hl
2D7B  210D00  	    ld   hl,$000D
2D7E  19      	    add  hl,de
2D7F  3610    	    ld   (hl),$10
2D81  C3B22D  	    jp   $2DB2
2D84  FE50    	    cp   $50
2D86  C29B2D  	    jp   nz,$2D9B
2D89  0A      	    ld   a,(bc)
2D8A  E607    	    and  $07
2D8C  FE05    	    cp   $05
2D8E  C40E2D  	    call nz,enemy_chase
2D91  EB      	    ex   de,hl
2D92  210D00  	    ld   hl,$000D
2D95  19      	    add  hl,de
2D96  3620    	    ld   (hl),$20
2D98  C3B22D  	    jp   $2DB2
2D9B  FE70    	    cp   $70
2D9D  00      	    nop
2D9E  00      	    nop
2D9F  00      	    nop
2DA0  C29E2D  	    jp   nz,$2D9E
2DA3  0A      	    ld   a,(bc)
2DA4  E607    	    and  $07
2DA6  FE07    	    cp   $07
2DA8  C40E2D  	    call nz,enemy_chase
2DAB  EB      	    ex   de,hl
2DAC  210D00  	    ld   hl,$000D
2DAF  19      	    add  hl,de
2DB0  3610    	    ld   (hl),$10
2DB2  EB      	    ex   de,hl
2DB3  2B      	    dec  hl
2DB4  2B      	    dec  hl
2DB5  54      	    ld   d,h
2DB6  5D      	    ld   e,l
2DB7  7E      	    ld   a,(hl)
2DB8  23      	    inc  hl
2DB9  E607    	    and  $07
2DBB  FE04    	    cp   $04
2DBD  C24330  	    jp   nz,$3043
2DC0  7E      	    ld   a,(hl)
2DC1  E607    	    and  $07
2DC3  FE02    	    cp   $02
2DC5  C24330  	    jp   nz,$3043
2DC8  EB      	    ex   de,hl
2DC9  CDB330  	    call get_tile_pos
2DCC  01E2FF  	    ld   bc,$FFE2
2DCF  09      	    add  hl,bc
                cat_water_die:  ; cat on $FE tile -> state 4, splash tile $1C, sound $95
2DD0  3EFE    	    ld   a,TILE_GAP
2DD2  BE      	    cp   (hl)
2DD3  C2F22D  	    jp   nz,$2DF2
2DD6  1B      	    dec  de
2DD7  3E95    	    ld   a,$95
2DD9  3200B8  	    ld   (watchdog),a
2DDC  3E04    	    ld   a,$04
2DDE  12      	    ld   (de),a
2DDF  211400  	    ld   hl,$0014
2DE2  19      	    add  hl,de
2DE3  3601    	    ld   (hl),$01
2DE5  21FDFF  	    ld   hl,$FFFD
2DE8  19      	    add  hl,de
2DE9  361C    	    ld   (hl),$1C
2DEB  210300  	    ld   hl,$0003
2DEE  19      	    add  hl,de
2DEF  3600    	    ld   (hl),$00
2DF1  13      	    inc  de
2DF2  EB      	    ex   de,hl
2DF3  23      	    inc  hl
2DF4  54      	    ld   d,h
2DF5  5D      	    ld   e,l
2DF6  23      	    inc  hl
2DF7  1B      	    dec  de
                ;; mover dispatch: consume the direction bitmask (+$0A, catN_dir) set by
                ;; enemy_chase; rrca-chain routes each set bit to its per-direction mover.
2DF8  7E      	    ld   a,(hl)           ; direction bitmask (+$0A)
2DF9  0F      	    rrca
2DFA  DAC42E  	    jp   c,$2EC4          ; bit0 $01 -> X- mover
2DFD  0F      	    rrca
2DFE  DA102F  	    jp   c,$2F10          ; bit1 $02 -> X+ mover
2E01  0F      	    rrca
2E02  DA5C2F  	    jp   c,$2F5C          ; bit2 $04 -> Y+ mover
2E05  0F      	    rrca
2E06  DAAA2F  	    jp   c,$2FAA          ; bit3 $08 -> Y- mover
2E09  EB      	    ex   de,hl
2E0A  21FCFF  	    ld   hl,$FFFC
2E0D  19      	    add  hl,de
2E0E  35      	    dec  (hl)
2E0F  EB      	    ex   de,hl
2E10  23      	    inc  hl
2E11  23      	    inc  hl
2E12  3E00    	    ld   a,$00
2E14  77      	    ld   (hl),a
2E15  23      	    inc  hl
2E16  23      	    inc  hl
2E17  23      	    inc  hl
2E18  77      	    ld   (hl),a
2E19  C35D30  	    jp   $305D
2E1C  13      	    inc  de
2E1D  13      	    inc  de
2E1E  1A      	    ld   a,(de)
2E1F  FE03    	    cp   $03
2E21  D2742E  	    jp   nc,$2E74
2E24  ED5F    	    ld   a,r
2E26  E60F    	    and  $0F
2E28  FE02    	    cp   $02
2E2A  DA442E  	    jp   c,$2E44
2E2D  FE09    	    cp   $09
2E2F  3EEF    	    ld   a,$EF
2E31  DA612E  	    jp   c,$2E61
2E34  21E1FF  	    ld   hl,$FFE1
2E37  09      	    add  hl,bc
2E38  BE      	    cp   (hl)
2E39  DA5B2E  	    jp   c,$2E5B
2E3C  21E3FF  	    ld   hl,$FFE3
2E3F  09      	    add  hl,bc
2E40  BE      	    cp   (hl)
2E41  DA552E  	    jp   c,$2E55
2E44  EB      	    ex   de,hl
2E45  7E      	    ld   a,(hl)
2E46  FE01    	    cp   $01
2E48  CA502E  	    jp   z,$2E50
2E4B  3601    	    ld   (hl),$01
2E4D  C3092E  	    jp   $2E09
2E50  3602    	    ld   (hl),$02
2E52  C3092E  	    jp   $2E09
2E55  EB      	    ex   de,hl
2E56  3604    	    ld   (hl),$04
2E58  C3092E  	    jp   $2E09
2E5B  EB      	    ex   de,hl
2E5C  3608    	    ld   (hl),$08
2E5E  C3092E  	    jp   $2E09
2E61  21E3FF  	    ld   hl,$FFE3
2E64  09      	    add  hl,bc
2E65  BE      	    cp   (hl)
2E66  DA552E  	    jp   c,$2E55
2E69  21E1FF  	    ld   hl,$FFE1
2E6C  09      	    add  hl,bc
2E6D  BE      	    cp   (hl)
2E6E  DA5B2E  	    jp   c,$2E5B
2E71  C3442E  	    jp   $2E44
2E74  ED5F    	    ld   a,r
2E76  E60F    	    and  $0F
2E78  FE02    	    cp   $02
2E7A  DA942E  	    jp   c,$2E94
2E7D  FE09    	    cp   $09
2E7F  3EEF    	    ld   a,$EF
2E81  DAB12E  	    jp   c,$2EB1
2E84  21C2FF  	    ld   hl,$FFC2
2E87  09      	    add  hl,bc
2E88  BE      	    cp   (hl)
2E89  DAA52E  	    jp   c,$2EA5
2E8C  210200  	    ld   hl,$0002
2E8F  09      	    add  hl,bc
2E90  BE      	    cp   (hl)
2E91  DAAB2E  	    jp   c,$2EAB
2E94  EB      	    ex   de,hl
2E95  7E      	    ld   a,(hl)
2E96  FE04    	    cp   $04
2E98  CAA02E  	    jp   z,$2EA0
2E9B  3604    	    ld   (hl),$04
2E9D  C3092E  	    jp   $2E09
2EA0  3608    	    ld   (hl),$08
2EA2  C3092E  	    jp   $2E09
2EA5  EB      	    ex   de,hl
2EA6  3602    	    ld   (hl),$02
2EA8  C3092E  	    jp   $2E09
2EAB  EB      	    ex   de,hl
2EAC  3601    	    ld   (hl),$01
2EAE  C3092E  	    jp   $2E09
2EB1  210200  	    ld   hl,$0002
2EB4  09      	    add  hl,bc
2EB5  BE      	    cp   (hl)
2EB6  DAAB2E  	    jp   c,$2EAB
2EB9  21C2FF  	    ld   hl,$FFC2
2EBC  09      	    add  hl,bc
2EBD  BE      	    cp   (hl)
2EBE  DAA52E  	    jp   c,$2EA5
2EC1  C3942E  	    jp   $2E94
2EC4  23      	    inc  hl
2EC5  3600    	    ld   (hl),$00 ; set cat 0 (what dir is that?)
2EC7  23      	    inc  hl
2EC8  1A      	    ld   a,(de)
2EC9  FE0C    	    cp   $0C
2ECB  CA092E  	    jp   z,$2E09
2ECE  D2D72E  	    jp   nc,$2ED7
2ED1  3E0C    	    ld   a,$0C
2ED3  12      	    ld   (de),a
2ED4  C3092E  	    jp   $2E09
2ED7  13      	    inc  de
2ED8  CDB330  	    call get_tile_pos
2EDB  44      	    ld   b,h
2EDC  4D      	    ld   c,l
2EDD  210200  	    ld   hl,$0002
2EE0  09      	    add  hl,bc
2EE1  3EEF    	    ld   a,$EF
2EE3  BE      	    cp   (hl)
2EE4  D21C2E  	    jp   nc,$2E1C
2EE7  210D00  	    ld   hl,$000D
2EEA  19      	    add  hl,de
2EEB  EB      	    ex   de,hl
2EEC  21E2FF  	    ld   hl,$FFE2
2EEF  CDCE30  	    call check_tile_wall
2EF2  A7      	    and  a
2EF3  C2FC2E  	    jp   nz,$2EFC
2EF6  210200  	    ld   hl,$0002
2EF9  CDCE30  	    call check_tile_wall
2EFC  21F7FF  	    ld   hl,$FFF7
2EFF  19      	    add  hl,de
2F00  54      	    ld   d,h
2F01  5D      	    ld   e,l
2F02  13      	    inc  de
2F03  1A      	    ld   a,(de)
2F04  77      	    ld   (hl),a
2F05  3E00    	    ld   a,$00
2F07  13      	    inc  de
2F08  13      	    inc  de
2F09  12      	    ld   (de),a
2F0A  210600  	    ld   hl,$0006
2F0D  C34B30  	    jp   $304B
2F10  23      	    inc  hl
2F11  3680    	    ld   (hl),$80 ; set cat x80 (what's that?!)
2F13  23      	    inc  hl
2F14  1A      	    ld   a,(de)
2F15  FEE4    	    cp   $E4
2F17  CA092E  	    jp   z,$2E09
2F1A  DA232F  	    jp   c,$2F23
2F1D  3EE4    	    ld   a,$E4
2F1F  12      	    ld   (de),a
2F20  C3092E  	    jp   $2E09
2F23  13      	    inc  de
2F24  CDB330  	    call get_tile_pos
2F27  44      	    ld   b,h
2F28  4D      	    ld   c,l
2F29  21C2FF  	    ld   hl,$FFC2
2F2C  09      	    add  hl,bc
2F2D  3EEF    	    ld   a,$EF
2F2F  BE      	    cp   (hl)
2F30  D21C2E  	    jp   nc,$2E1C
2F33  210D00  	    ld   hl,$000D
2F36  19      	    add  hl,de
2F37  EB      	    ex   de,hl
2F38  21E2FF  	    ld   hl,$FFE2
2F3B  CDCE30  	    call check_tile_wall
2F3E  A7      	    and  a
2F3F  C2482F  	    jp   nz,$2F48
2F42  21C2FF  	    ld   hl,$FFC2
2F45  CDCE30  	    call check_tile_wall
2F48  21F7FF  	    ld   hl,$FFF7
2F4B  19      	    add  hl,de
2F4C  54      	    ld   d,h
2F4D  5D      	    ld   e,l
2F4E  13      	    inc  de
2F4F  13      	    inc  de
2F50  1A      	    ld   a,(de)
2F51  77      	    ld   (hl),a
2F52  3E00    	    ld   a,$00
2F54  13      	    inc  de
2F55  12      	    ld   (de),a
2F56  210600  	    ld   hl,$0006
2F59  C34B30  	    jp   $304B
2F5C  23      	    inc  hl
2F5D  3604    	    ld   (hl),$04 ; set cat down
2F5F  23      	    inc  hl
2F60  13      	    inc  de
2F61  1A      	    ld   a,(de)
2F62  FEEC    	    cp   $EC
2F64  CA092E  	    jp   z,$2E09
2F67  DA702F  	    jp   c,$2F70
2F6A  3EE4    	    ld   a,$E4
2F6C  12      	    ld   (de),a
2F6D  C3092E  	    jp   $2E09
2F70  CDB330  	    call get_tile_pos
2F73  44      	    ld   b,h
2F74  4D      	    ld   c,l
2F75  21E3FF  	    ld   hl,$FFE3
2F78  09      	    add  hl,bc
2F79  3EEF    	    ld   a,$EF
2F7B  BE      	    cp   (hl)
2F7C  D21C2E  	    jp   nc,$2E1C
2F7F  210D00  	    ld   hl,$000D
2F82  19      	    add  hl,de
2F83  EB      	    ex   de,hl
2F84  21E2FF  	    ld   hl,$FFE2
2F87  CDCE30  	    call check_tile_wall
2F8A  A7      	    and  a
2F8B  C2942F  	    jp   nz,$2F94
2F8E  21E3FF  	    ld   hl,$FFE3
2F91  CDCE30  	    call check_tile_wall
2F94  21F7FF  	    ld   hl,$FFF7
2F97  19      	    add  hl,de
2F98  3E00    	    ld   a,$00
2F9A  77      	    ld   (hl),a
2F9B  23      	    inc  hl
2F9C  23      	    inc  hl
2F9D  23      	    inc  hl
2F9E  54      	    ld   d,h
2F9F  5D      	    ld   e,l
2FA0  13      	    inc  de
2FA1  1A      	    ld   a,(de)
2FA2  77      	    ld   (hl),a
2FA3  EB      	    ex   de,hl
2FA4  210600  	    ld   hl,$0006
2FA7  C34B30  	    jp   $304B
2FAA  23      	    inc  hl
2FAB  3608    	    ld   (hl),$08 ; set cat up
2FAD  23      	    inc  hl
2FAE  13      	    inc  de
2FAF  1A      	    ld   a,(de)
2FB0  FE14    	    cp   $14
2FB2  CA092E  	    jp   z,$2E09
2FB5  D2BE2F  	    jp   nc,$2FBE
2FB8  3E14    	    ld   a,$14
2FBA  12      	    ld   (de),a
2FBB  C3092E  	    jp   $2E09
2FBE  CDB330  	    call get_tile_pos
2FC1  44      	    ld   b,h
2FC2  4D      	    ld   c,l
2FC3  21E1FF  	    ld   hl,$FFE1
2FC6  09      	    add  hl,bc
2FC7  3EEF    	    ld   a,$EF
2FC9  BE      	    cp   (hl)
2FCA  D21C2E  	    jp   nc,$2E1C
2FCD  210D00  	    ld   hl,$000D
2FD0  19      	    add  hl,de
2FD1  EB      	    ex   de,hl
2FD2  21E2FF  	    ld   hl,$FFE2
2FD5  CDCE30  	    call check_tile_wall
2FD8  A7      	    and  a
2FD9  C2E22F  	    jp   nz,$2FE2
2FDC  21E1FF  	    ld   hl,$FFE1
2FDF  CDCE30  	    call check_tile_wall
2FE2  21F7FF  	    ld   hl,$FFF7
2FE5  19      	    add  hl,de
2FE6  3E00    	    ld   a,$00
2FE8  77      	    ld   (hl),a
2FE9  23      	    inc  hl
2FEA  23      	    inc  hl
2FEB  23      	    inc  hl
2FEC  54      	    ld   d,h
2FED  5D      	    ld   e,l
2FEE  13      	    inc  de
2FEF  13      	    inc  de
2FF0  1A      	    ld   a,(de)
2FF1  77      	    ld   (hl),a
2FF2  EB      	    ex   de,hl
2FF3  210600  	    ld   hl,$0006
2FF6  C34B30  	    jp   $304B
2FF9  7E      	    ld   a,(hl)
2FFA  FE01    	    cp   $01
2FFC  C20230  	    jp   nz,$3002

                ;;; ============ start of suprmous.x4 (plus 1 byte!)  =============

2FFF  3602    	    ld   (hl),$02
3001  C9      	    ret
3002  FEFF    	    cp   $FF
3004  C0      	    ret  nz
3005  36FE    	    ld   (hl),$FE
3007  C9      	    ret
3008  7E      	    ld   a,(hl)
3009  FE02    	    cp   $02
300B  C21130  	    jp   nz,$3011
300E  3601    	    ld   (hl),$01
3010  C9      	    ret
3011  FEFE    	    cp   TILE_GAP
3013  C0      	    ret  nz
3014  36FF    	    ld   (hl),$FF
3016  C9      	    ret
3017  00      	    nop
3018  00      	    nop
3019  00      	    nop
301A  00      	    nop
301B  2B      	    dec  hl
301C  2B      	    dec  hl
301D  2B      	    dec  hl
301E  13      	    inc  de
301F  1A      	    ld   a,(de)
3020  E603    	    and  $03
3022  A7      	    and  a
3023  C22830  	    jp   nz,$3028
3026  3E03    	    ld   a,$03
3028  3D      	    dec  a
3029  12      	    ld   (de),a
302A  FE01    	    cp   $01
302C  C23930  	    jp   nz,$3039
302F  CDF92F  	    call $2FF9
3032  23      	    inc  hl
3033  23      	    inc  hl
3034  23      	    inc  hl
3035  CDF92F  	    call $2FF9
3038  C9      	    ret
3039  CD0830  	    call $3008
303C  23      	    inc  hl
303D  23      	    inc  hl
303E  23      	    inc  hl
303F  CD0830  	    call $3008
3042  C9      	    ret
3043  210700  	    ld   hl,$0007
3046  19      	    add  hl,de
3047  EB      	    ex   de,hl
3048  210600  	    ld   hl,$0006
304B  19      	    add  hl,de
304C  EB      	    ex   de,hl
304D  44      	    ld   b,h
304E  4D      	    ld   c,l
304F  211000  	    ld   hl,$0010
3052  09      	    add  hl,bc
3053  7E      	    ld   a,(hl)
3054  60      	    ld   h,b
3055  69      	    ld   l,c
3056  A7      	    and  a
3057  C41730  	    call nz,$3017
305A  00      	    nop
305B  00      	    nop
305C  00      	    nop
305D  00      	    nop
305E  00      	    nop
305F  00      	    nop
3060  54      	    ld   d,h
3061  5D      	    ld   e,l
3062  01FAFF  	    ld   bc,$FFFA
3065  09      	    add  hl,bc
3066  1A      	    ld   a,(de)
3067  86      	    add  a,(hl)
3068  77      	    ld   (hl),a
3069  1B      	    dec  de
306A  1B      	    dec  de
306B  1B      	    dec  de
306C  2B      	    dec  hl
306D  1A      	    ld   a,(de)
306E  86      	    add  a,(hl)
306F  77      	    ld   (hl),a
3070  2B      	    dec  hl
3071  2B      	    dec  hl
3072  7E      	    ld   a,(hl)
3073  3C      	    inc  a
3074  E607    	    and  $07
3076  77      	    ld   (hl),a
3077  FE04    	    cp   $04
3079  DA8130  	    jp   c,$3081
307C  3600    	    ld   (hl),$00
307E  2B      	    dec  hl
307F  34      	    inc  (hl)
3080  23      	    inc  hl
3081  2B      	    dec  hl
3082  1B      	    dec  de
3083  CD8A30  	    call $308A
3086  CD9C30  	    call enemy_sprite_commit
3089  C9      	    ret


308A  7E      	    ld   a,(hl)
308B  E603    	    and  $03
308D  47      	    ld   b,a
308E  1A      	    ld   a,(de)
308F  E6CC    	    and  $CC
3091  4F      	    ld   c,a
3092  2B      	    dec  hl
3093  7E      	    ld   a,(hl)
3094  E630    	    and  $30
3096  B0      	    or   b
3097  B1      	    or   c
3098  77      	    ld   (hl),a
3099  EB      	    ex   de,hl
309A  1B      	    dec  de
309B  C9      	    ret


                enemy_sprite_commit: ; write enemy Y/tile/color/X into its sprite mirror slot
309C  1A      	    ld   a,(de)
309D  6F      	    ld   l,a
309E  2680    	    ld   h,$80
30A0  13      	    inc  de
30A1  1A      	    ld   a,(de)
30A2  77      	    ld   (hl),a
30A3  13      	    inc  de
30A4  13      	    inc  de
30A5  13      	    inc  de
30A6  13      	    inc  de
30A7  2B      	    dec  hl
30A8  1A      	    ld   a,(de)
30A9  77      	    ld   (hl),a
30AA  23      	    inc  hl
30AB  23      	    inc  hl
30AC  3606    	    ld   (hl),$06
30AE  23      	    inc  hl
30AF  13      	    inc  de
30B0  1A      	    ld   a,(de)
30B1  77      	    ld   (hl),a
30B2  C9      	    ret

                ;; in: de = x, de-1 = y
                ;; out: hl = screen pos of entity
                get_tile_pos:
30B3  1A      	    ld   a,(de)
30B4  0F      	    rrca
30B5  0F      	    rrca
30B6  0F      	    rrca
30B7  E61F    	    and  $1F
30B9  6F      	    ld   l,a
30BA  1B      	    dec  de
30BB  1A      	    ld   a,(de)
30BC  ED44    	    neg
30BE  07      	    rlca
30BF  07      	    rlca
30C0  67      	    ld   h,a
30C1  E6E0    	    and  $E0
30C3  B5      	    or   l
30C4  6F      	    ld   l,a
30C5  7C      	    ld   a,h
30C6  E603    	    and  $03
30C8  67      	    ld   h,a
30C9  3E90    	    ld   a,$90
30CB  84      	    add  a,h
30CC  67      	    ld   h,a
30CD  C9      	    ret


                check_tile_wall: ; (de)=1 if tile at (hl+bc)==$F4 (wall) else 0
30CE  09      	    add  hl,bc
30CF  3EF4    	    ld   a,$F4
30D1  BE      	    cp   (hl)
30D2  CAD930  	    jp   z,$30D9
30D5  3E00    	    ld   a,$00
30D7  12      	    ld   (de),a
30D8  C9      	    ret
30D9  3E01    	    ld   a,$01
30DB  12      	    ld   (de),a
30DC  C9      	    ret


30DD  EB      	    ex   de,hl
30DE  21F9FF  	    ld   hl,$FFF9
30E1  19      	    add  hl,de
30E2  34      	    inc  (hl)
30E3  7E      	    ld   a,(hl)
30E4  FE10    	    cp   $10
30E6  DA1331  	    jp   c,$3113
30E9  CAFE30  	    jp   z,$30FE
30EC  E607    	    and  $07
30EE  FE00    	    cp   $00
30F0  C20431  	    jp   nz,$3104
30F3  21FDFF  	    ld   hl,$FFFD
30F6  19      	    add  hl,de
30F7  3E80    	    ld   a,$80
30F9  86      	    add  a,(hl)
30FA  77      	    ld   (hl),a
30FB  C30431  	    jp   $3104
30FE  21FDFF  	    ld   hl,$FFFD
3101  19      	    add  hl,de
3102  365C    	    ld   (hl),$5C
3104  62      	    ld   h,d
3105  6B      	    ld   l,e
3106  23      	    inc  hl
3107  23      	    inc  hl
3108  7E      	    ld   a,(hl)
3109  C602    	    add  a,$02
310B  FEE0    	    cp   $E0
310D  DA1231  	    jp   c,$3112
3110  3EE0    	    ld   a,$E0
3112  77      	    ld   (hl),a
3113  21FCFF  	    ld   hl,$FFFC
3116  19      	    add  hl,de
3117  EB      	    ex   de,hl
3118  CD9C30  	    call enemy_sprite_commit
311B  C9      	    ret

311C  EB      	    ex   de,hl
311D  21FAFF  	    ld   hl,$FFFA
3120  19      	    add  hl,de
3121  34      	    inc  (hl)
3122  7E      	    ld   a,(hl)
3123  23      	    inc  hl
3124  23      	    inc  hl
3125  23      	    inc  hl
3126  FE01    	    cp   $01
3128  C22D31  	    jp   nz,$312D
312B  365D    	    ld   (hl),$5D
312D  FE08    	    cp   $08
312F  C23431  	    jp   nz,$3134
3132  3631    	    ld   (hl),$31
3134  FE14    	    cp   $14
3136  C23B31  	    jp   nz,$313B
3139  3630    	    ld   (hl),$30
313B  FE20    	    cp   $20
313D  C24231  	    jp   nz,$3142
3140  362A    	    ld   (hl),$2A
3142  FE80    	    cp   $80
3144  DA4A31  	    jp   c,$314A
3147  3E07    	    ld   a,$07
3149  12      	    ld   (de),a
314A  EB      	    ex   de,hl
314B  1B      	    dec  de
314C  CD9C30  	    call enemy_sprite_commit
314F  C9      	    ret
3150  EB      	    ex   de,hl
3151  21FAFF  	    ld   hl,$FFFA
3154  19      	    add  hl,de
3155  34      	    inc  (hl)
3156  7E      	    ld   a,(hl)
3157  23      	    inc  hl
3158  23      	    inc  hl
3159  23      	    inc  hl
315A  FE01    	    cp   $01
315C  C26131  	    jp   nz,$3161
315F  361C    	    ld   (hl),$1C
3161  FE08    	    cp   $08
3163  C26831  	    jp   nz,$3168
3166  361D    	    ld   (hl),$1D
3168  FE14    	    cp   $14
316A  C26F31  	    jp   nz,$316F
316D  361E    	    ld   (hl),$1E
316F  FE20    	    cp   $20
3171  C27631  	    jp   nz,$3176
3174  362A    	    ld   (hl),$2A
3176  FE80    	    cp   $80
3178  DA7E31  	    jp   c,$317E
317B  3E07    	    ld   a,$07
317D  12      	    ld   (de),a
317E  EB      	    ex   de,hl
317F  1B      	    dec  de
3180  CD9C30  	    call enemy_sprite_commit
3183  C9      	    ret
3184  0E00    	    ld   c,$00
3186  23      	    inc  hl
3187  71      	    ld   (hl),c
3188  23      	    inc  hl
3189  71      	    ld   (hl),c
318A  54      	    ld   d,h
318B  7D      	    ld   a,l
318C  FE19    	    cp   $19
318E  C29531  	    jp   nz,$3195
3191  59      	    ld   e,c
3192  C3B431  	    jp   $31B4
3195  FE39    	    cp   $39
3197  C29F31  	    jp   nz,$319F
319A  1E02    	    ld   e,$02
319C  C3B431  	    jp   $31B4
319F  FE59    	    cp   $59
31A1  C2A931  	    jp   nz,$31A9
31A4  1E04    	    ld   e,$04
31A6  C3B431  	    jp   $31B4
31A9  FE79    	    cp   $79
31AB  CAB231  	    jp   z,$31B2
31AE  00      	    nop
31AF  C3AE31  	    jp   $31AE
31B2  1E06    	    ld   e,$06
31B4  EB      	    ex   de,hl
31B5  71      	    ld   (hl),c
31B6  23      	    inc  hl
31B7  71      	    ld   (hl),c
31B8  EB      	    ex   de,hl
31B9  11FAFF  	    ld   de,$FFFA
31BC  19      	    add  hl,de
31BD  EB      	    ex   de,hl
31BE  211500  	    ld   hl,$0015
31C1  01EF31  	    ld   bc,enemy_lvl_param_tbl
31C4  19      	    add  hl,de
31C5  CDCF31  	    call load_level_ptr
31C8  CD9C30  	    call enemy_sprite_commit
31CB  C9      	    ret

31CC  00      	    nop
31CD  00      	    nop
31CE  00      	    nop

                load_level_ptr: ; load level-indexed 16-bit table ptr into enemy record
31CF  E5      	    push hl
31D0  60      	    ld   h,b
31D1  69      	    ld   l,c
31D2  3A0181  	    ld   a,(cur_map)
31D5  FE09    	    cp   $09
31D7  DADC31  	    jp   c,$31DC
31DA  3E09    	    ld   a,$09
31DC  A7      	    and  a
31DD  CAE531  	    jp   z,$31E5
31E0  47      	    ld   b,a
31E1  23      	    inc  hl
31E2  23      	    inc  hl
31E3  10FC    	    djnz $31E1
31E5  4E      	    ld   c,(hl)
31E6  23      	    inc  hl
31E7  46      	    ld   b,(hl)
31E8  E1      	    pop  hl
31E9  71      	    ld   (hl),c
31EA  23      	    inc  hl
31EB  70      	    ld   (hl),b
31EC  C9      	    ret

31ED  00      	    db  $00, $00
                enemy_lvl_param_tbl: ; level-indexed 16-bit enemy AI param -> record +$15/+$16 (via load_level_ptr, at respawn); trends down w/ level
31EF               db   $00, $08   ; level 0: $0800
31F1               db   $14, $04   ; level 1: $0414
31F3               db   $00, $04   ; level 2: $0400
31F5               db   $00, $04   ; level 3: $0400
31F7               db   $14, $03   ; level 4: $0314
31F9               db   $14, $03   ; level 5: $0314
31FB               db   $14, $03   ; level 6: $0314
31FD               db   $14, $02   ; level 7: $0214
31FF               db   $14, $02   ; level 8: $0214
3201               db   $14, $02   ; level 9: $0214

31ED  00      	    db  $00, $00, $00

                snake_mgr:      ; snakes A/B
3206  00      	    nop
3207  00      	    nop
3208  00      	    nop
3209  210886  	    ld   hl,snake1_ai_init
320C  7E      	    ld   a,(hl)
320D  A7      	    and  a
320E  C21C32  	    jp   nz,$321C
3211  3601    	    ld   (hl),$01
3213  212886  	    ld   hl,snake1_dly_ptr
3216  011533  	    ld   bc,spawn_delay_sa
3219  CDF732  	    call snake_spawn_delay
321C  110086  	    ld   de,snake1_enable
321F  212986  	    ld   hl,$8629
3222  1A      	    ld   a,(de)
3223  A7      	    and  a
3224  CC5632  	    call z,$3256
3227  210986  	    ld   hl,snake2_ai_init
322A  7E      	    ld   a,(hl)
322B  A7      	    and  a
322C  C23A32  	    jp   nz,$323A
322F  3601    	    ld   (hl),$01
3231  214886  	    ld   hl,snake2_dly_ptr
3234  012B33  	    ld   bc,spawn_delay_sb
3237  CDF732  	    call snake_spawn_delay
323A  110286  	    ld   de,$8602
323D  214986  	    ld   hl,$8649
3240  1A      	    ld   a,(de)
3241  A7      	    and  a
3242  CC5632  	    call z,$3256
3245  210086  	    ld   hl,snake1_enable
3248  7E      	    ld   a,(hl)
3249  A7      	    and  a
324A  C46D32  	    call nz,setup_snake1
324D  210286  	    ld   hl,$8602
3250  7E      	    ld   a,(hl)
3251  A7      	    and  a
3252  C4B232  	    call nz,setup_snake2
3255  C9      	    ret

3256  46      	    ld   b,(hl)
3257  2B      	    dec  hl
3258  7E      	    ld   a,(hl)
3259  B0      	    or   b
325A  C26132  	    jp   nz,$3261
325D  3E01    	    ld   a,$01
325F  12      	    ld   (de),a
3260  C9      	    ret
3261  7E      	    ld   a,(hl)
3262  A7      	    and  a
3263  CA6832  	    jp   z,$3268
3266  35      	    dec  (hl)
3267  C9      	    ret
3268  36FF    	    ld   (hl),$FF
326A  23      	    inc  hl
326B  35      	    dec  (hl)
326C  C9      	    ret

                setup_snake1:
326D  23      	    inc  hl
326E  7E      	    ld   a,(hl)
326F  A7      	    and  a
3270  C28B32  	    jp   nz,$328B
3273  3A3E80  	    ld   a,(endlevel_active)
3276  A7      	    and  a
3277  C0      	    ret  nz
3278  3601    	    ld   (hl),$01
327A  111086  	    ld   de,snake1_bytes
327D  219232  	    ld   hl,snake1_init_data
3280  012000  	    ld   bc,$0020
3283  EDB0    	    ldir
3285  3E86    	    ld   a,$86
3287  3200B8  	    ld   (watchdog),a
328A  C9      	    ret
328B  211786  	    ld   hl,snake1_state
328E  CD3F33  	    call snake_ai
3291  C9      	    ret
    ;;
                snake1_init_data: ; ldir'd to snake A record $8610 (32 = $20 bytes): +07 state=1(appear), +04 code=$2C, +08 X=$B4, +09 Y=$C2, +1B busy=1
3292               db   $00, $00, $00, $15, $2C, $00, $00, $01
329A               db   $B4, $C2, $00, $00, $00, $FF, $01, $00
32A2               db   $01, $FF, $00, $00, $00, $00, $00, $00
32AA               db   $00, $00, $00, $01, $00, $00, $00, $00

                setup_snake2:
32B2  23      	    inc  hl
32B3  7E      	    ld   a,(hl)
32B4  A7      	    and  a
32B5  C2D032  	    jp   nz,$32D0
32B8  3A3E80  	    ld   a,(endlevel_active)
32BB  A7      	    and  a
32BC  C0      	    ret  nz
32BD  3601    	    ld   (hl),$01
32BF  113086  	    ld   de,snake2_bytes
32C2  21D732  	    ld   hl,snake2_init_data
32C5  012000  	    ld   bc,$0020 ; 32 bytes
32C8  EDB0    	    ldir
32CA  3E86    	    ld   a,$86
32CC  3200B8  	    ld   (watchdog),a
32CF  C9      	    ret
32D0  213786  	    ld   hl,snake2_state
32D3  CD3F33  	    call snake_ai
32D6  C9      	    ret

                snake2_init_data: ; ldir'd to snake B record $8630 (32 = $20 bytes): +07 state=1(appear), +04 code=$2C, +08 X=$B4, +09 Y=$C2, +1B busy=1
32D7               db   $00, $00, $00, $19, $2C, $00, $00, $01
32DF               db   $B4, $C2, $00, $00, $00, $FF, $01, $00
32E7               db   $01, $FF, $00, $00, $00, $00, $00, $00
32EF               db   $00, $00, $00, $01, $00, $00, $00, $00

                snake_spawn_delay: ; level-indexed snake spawn-delay lookup (spawn_delay_sa/sb)
32F7  E5      	    push hl
32F8  60      	    ld   h,b
32F9  69      	    ld   l,c
32FA  3A0181  	    ld   a,(cur_map)
32FD  FE09    	    cp   $09
32FF  DA0433  	    jp   c,$3304
3302  3E09    	    ld   a,$09
3304  A7      	    and  a
3305  CA0D33  	    jp   z,$330D
3308  47      	    ld   b,a
3309  23      	    inc  hl
330A  23      	    inc  hl
330B  10FC    	    djnz $3309
330D  4E      	    ld   c,(hl)
330E  23      	    inc  hl
330F  46      	    ld   b,(hl)
3310  E1      	    pop  hl
3311  71      	    ld   (hl),c
3312  23      	    inc  hl
3313  70      	    ld   (hl),b
3314  C9      	    ret

                spawn_delay_sa: ; level-indexed spawn-delay table (snake A)
3315               db   $30, $01   ; level 0: delay $0130
3317               db   $00, $01   ; level 1: delay $0100
3319               db   $B0, $00   ; level 2: delay $00B0
331B               db   $70, $00   ; level 3: delay $0070
331D               db   $30, $00   ; level 4: delay $0030
331F               db   $30, $00   ; level 5: delay $0030
3321               db   $30, $00   ; level 6: delay $0030
3323               db   $30, $00   ; level 7: delay $0030
3325               db   $30, $00   ; level 8: delay $0030
3327               db   $00, $00   ; level 9: delay $0000
3329               db   $00, $00   ; (padding, index clamps to level 9)

                spawn_delay_sb: ; level-indexed spawn-delay table (snake B)
332B               db   $90, $03   ; level 0: delay $0390
332D               db   $20, $03   ; level 1: delay $0320
332F               db   $E0, $02   ; level 2: delay $02E0
3331               db   $A0, $02   ; level 3: delay $02A0
3333               db   $60, $02   ; level 4: delay $0260
3335               db   $40, $02   ; level 5: delay $0240
3337               db   $20, $02   ; level 6: delay $0220
3339               db   $D0, $01   ; level 7: delay $01D0
333B               db   $90, $01   ; level 8: delay $0190
333D               db   $50, $00   ; level 9: delay $0050

                snake_ai:   ; per-enemy state engine (snakes)
333F  7E      	    ld   a,(hl)
3340  FE01    	    cp   $01
3342  CA5F33  	    jp   z,$335F
3345  FE03    	    cp   $03
3347  CAA533  	    jp   z,$33A5
334A  FE04    	    cp   $04
334C  CA1B38  	    jp   z,$381B
334F  FE05    	    cp   $05
3351  CA5A38  	    jp   z,$385A
3354  FE06    	    cp   $06
3356  CA8E38  	    jp   z,$388E
3359  FE07    	    cp   $07
335B  CAC238  	    jp   z,$38C2
335E  C9      	    ret
335F  3A3E80  	    ld   a,(endlevel_active)
3362  A7      	    and  a
3363  C0      	    ret  nz
3364  EB      	    ex   de,hl
3365  42      	    ld   b,d
3366  4B      	    ld   c,e
3367  211300  	    ld   hl,$0013
336A  19      	    add  hl,de
336B  1B      	    dec  de
336C  1B      	    dec  de
336D  1B      	    dec  de
336E  1B      	    dec  de
336F  34      	    inc  (hl)
3370  7E      	    ld   a,(hl)
3371  FE80    	    cp   $80
3373  D28733  	    jp   nc,$3387
3376  E61F    	    and  $1F
3378  FE10    	    cp   $10
337A  DA8133  	    jp   c,$3381
337D  CDB337  	    call $37B3
3380  C9      	    ret
3381  062F    	    ld   b,$2F
3383  CD9133  	    call $3391
3386  C9      	    ret
3387  23      	    inc  hl
3388  3600    	    ld   (hl),$00
338A  3E03    	    ld   a,$03
338C  02      	    ld   (bc),a
338D  CDB337  	    call $37B3
3390  C9      	    ret
3391  1A      	    ld   a,(de)
3392  210500  	    ld   hl,$0005
3395  19      	    add  hl,de
3396  EB      	    ex   de,hl
3397  6F      	    ld   l,a
3398  2680    	    ld   h,$80
339A  70      	    ld   (hl),b
339B  2B      	    dec  hl
339C  1A      	    ld   a,(de)
339D  77      	    ld   (hl),a
339E  23      	    inc  hl
339F  23      	    inc  hl
33A0  23      	    inc  hl
33A1  13      	    inc  de
33A2  1A      	    ld   a,(de)
33A3  77      	    ld   (hl),a
33A4  C9      	    ret
33A5  EB      	    ex   de,hl
33A6  211000  	    ld   hl,$0010
33A9  19      	    add  hl,de
33AA  7E      	    ld   a,(hl)
33AB  A7      	    and  a
33AC  CAB533  	    jp   z,$33B5
33AF  35      	    dec  (hl)
33B0  EB      	    ex   de,hl
33B1  23      	    inc  hl
33B2  C39A34  	    jp   $349A
33B5  13      	    inc  de
33B6  01FBFF  	    ld   bc,$FFFB
33B9  09      	    add  hl,bc
33BA  EB      	    ex   de,hl
33BB  0607    	    ld   b,$07
33BD  3E14    	    ld   a,$14
33BF  BE      	    cp   (hl)
33C0  CACB33  	    jp   z,$33CB
33C3  C620    	    add  a,$20
33C5  10F8    	    djnz $33BF
33C7  23      	    inc  hl
33C8  C39934  	    jp   $3499
33CB  23      	    inc  hl
33CC  0607    	    ld   b,$07
33CE  3E22    	    ld   a,$22
33D0  BE      	    cp   (hl)
33D1  CA4B34  	    jp   z,$344B
33D4  C620    	    add  a,$20
33D6  10F8    	    djnz $33D0
33D8  C39934  	    jp   $3499
33DB  ED5F    	    ld   a,r
33DD  E603    	    and  $03
33DF  FE01    	    cp   $01
33E1  C2E733  	    jp   nz,$33E7
33E4  3601    	    ld   (hl),$01
33E6  C9      	    ret
33E7  FE02    	    cp   $02
33E9  C2EF33  	    jp   nz,$33EF
33EC  3602    	    ld   (hl),$02
33EE  C9      	    ret
33EF  FE03    	    cp   $03
33F1  C2F733  	    jp   nz,$33F7
33F4  3604    	    ld   (hl),$04
33F6  C9      	    ret
33F7  FE00    	    cp   $00
33F9  C0      	    ret  nz
33FA  3608    	    ld   (hl),$08
33FC  C9      	    ret
33FD  42      	    ld   b,d
33FE  4B      	    ld   c,e
33FF  54      	    ld   d,h
3400  5D      	    ld   e,l
3401  1B      	    dec  de
3402  EB      	    ex   de,hl
3403  0A      	    ld   a,(bc)
3404  3C      	    inc  a
3405  FE09    	    cp   $09
3407  DA0C34  	    jp   c,$340C
340A  3E00    	    ld   a,$00
340C  02      	    ld   (bc),a
340D  FE01    	    cp   $01
340F  CA3634  	    jp   z,$3436
3412  FE03    	    cp   $03
3414  CA3634  	    jp   z,$3436
3417  FE04    	    cp   $04
3419  CA3634  	    jp   z,$3436
341C  FE06    	    cp   $06
341E  CA3634  	    jp   z,$3436
3421  3A0380  	    ld   a,($8003)
3424  BE      	    cp   (hl)
3425  2B      	    dec  hl
3426  EB      	    ex   de,hl
3427  CA3334  	    jp   z,$3433
342A  DA3034  	    jp   c,$3430
342D  3604    	    ld   (hl),$04
342F  C9      	    ret
3430  3608    	    ld   (hl),$08
3432  C9      	    ret
3433  3600    	    ld   (hl),$00
3435  C9      	    ret
3436  2B      	    dec  hl
3437  3A0080  	    ld   a,(ram_start)
343A  BE      	    cp   (hl)
343B  EB      	    ex   de,hl
343C  CA4834  	    jp   z,$3448
343F  DA4534  	    jp   c,$3445
3442  3602    	    ld   (hl),$02
3444  C9      	    ret
3445  3601    	    ld   (hl),$01
3447  C9      	    ret
3448  3600    	    ld   (hl),$00
344A  C9      	    ret
344B  E5      	    push hl
344C  011300  	    ld   bc,$0013
344F  09      	    add  hl,bc
3450  34      	    inc  (hl)
3451  44      	    ld   b,h
3452  4D      	    ld   c,l
3453  E1      	    pop  hl
3454  23      	    inc  hl
3455  7D      	    ld   a,l
3456  E6F0    	    and  $F0
3458  FE10    	    cp   $10
345A  C27B34  	    jp   nz,$347B
345D  0A      	    ld   a,(bc)
345E  F5      	    push af
345F  E603    	    and  $03
3461  FE00    	    cp   $00
3463  C4FD33  	    call nz,$33FD
3466  EB      	    ex   de,hl
3467  210D00  	    ld   hl,$000D
346A  19      	    add  hl,de
346B  F1      	    pop  af
346C  CB67    	    bit  4,a
346E  CA7634  	    jp   z,$3476
3471  3630    	    ld   (hl),$30
3473  C39734  	    jp   $3497
3476  3610    	    ld   (hl),$10
3478  C39734  	    jp   $3497
347B  FE30    	    cp   $30
347D  00      	    nop
347E  00      	    nop
347F  00      	    nop
3480  C27E34  	    jp   nz,$347E
3483  0A      	    ld   a,(bc)
3484  F5      	    push af
3485  E603    	    and  $03
3487  FE02    	    cp   $02
3489  C4FD33  	    call nz,$33FD
348C  EB      	    ex   de,hl
348D  210D00  	    ld   hl,$000D
3490  19      	    add  hl,de
3491  F1      	    pop  af
3492  C618    	    add  a,$18
3494  C36C34  	    jp   $346C
3497  EB      	    ex   de,hl
3498  2B      	    dec  hl
3499  2B      	    dec  hl
349A  54      	    ld   d,h
349B  5D      	    ld   e,l
349C  7E      	    ld   a,(hl)
349D  23      	    inc  hl
349E  E607    	    and  $07
34A0  FE04    	    cp   $04
34A2  C21037  	    jp   nz,$3710
34A5  7E      	    ld   a,(hl)
34A6  E607    	    and  $07
34A8  FE02    	    cp   $02
34AA  C21037  	    jp   nz,$3710
34AD  EB      	    ex   de,hl
34AE  CDCA37  	    call $37CA
34B1  01E2FF  	    ld   bc,$FFE2
34B4  09      	    add  hl,bc
                snake_water_die: ; snake on $FE tile -> state 4, splash tile $2C, sound $95 (twin of cat_water_die)
34B5  3EFE    	    ld   a,TILE_GAP
34B7  BE      	    cp   (hl)
34B8  C2D734  	    jp   nz,$34D7
34BB  1B      	    dec  de
34BC  3E95    	    ld   a,$95
34BE  3200B8  	    ld   (watchdog),a
34C1  3E04    	    ld   a,$04
34C3  12      	    ld   (de),a
34C4  211400  	    ld   hl,$0014
34C7  19      	    add  hl,de
34C8  3601    	    ld   (hl),$01
34CA  21FDFF  	    ld   hl,$FFFD
34CD  19      	    add  hl,de
34CE  362C    	    ld   (hl),$2C
34D0  210300  	    ld   hl,$0003
34D3  19      	    add  hl,de
34D4  3600    	    ld   (hl),$00
34D6  13      	    inc  de
34D7  EB      	    ex   de,hl
34D8  23      	    inc  hl
34D9  54      	    ld   d,h
34DA  5D      	    ld   e,l
34DB  23      	    inc  hl
34DC  1B      	    dec  de
34DD  7E      	    ld   a,(hl)
34DE  0F      	    rrca
34DF  DA9F35  	    jp   c,$359F
34E2  0F      	    rrca
34E3  DAFA35  	    jp   c,$35FA
34E6  0F      	    rrca
34E7  DA5536  	    jp   c,$3655
34EA  0F      	    rrca
34EB  DAB236  	    jp   c,$36B2
34EE  EB      	    ex   de,hl
34EF  21FCFF  	    ld   hl,$FFFC
34F2  19      	    add  hl,de
34F3  35      	    dec  (hl)
34F4  EB      	    ex   de,hl
34F5  23      	    inc  hl
34F6  23      	    inc  hl
34F7  3E00    	    ld   a,$00
34F9  77      	    ld   (hl),a
34FA  23      	    inc  hl
34FB  23      	    inc  hl
34FC  23      	    inc  hl
34FD  77      	    ld   (hl),a
34FE  C37437  	    jp   $3774
3501  13      	    inc  de
3502  13      	    inc  de
3503  1A      	    ld   a,(de)
3504  FE03    	    cp   $03
3506  D25435  	    jp   nc,$3554
3509  ED5F    	    ld   a,r
350B  E60F    	    and  $0F
350D  FE09    	    cp   $09
350F  3EDF    	    ld   a,$DF
3511  DA4135  	    jp   c,$3541
3514  21E1FF  	    ld   hl,$FFE1
3517  09      	    add  hl,bc
3518  BE      	    cp   (hl)
3519  DA3B35  	    jp   c,$353B
351C  21E3FF  	    ld   hl,$FFE3
351F  09      	    add  hl,bc
3520  BE      	    cp   (hl)
3521  DA3535  	    jp   c,$3535
3524  EB      	    ex   de,hl
3525  7E      	    ld   a,(hl)
3526  FE01    	    cp   $01
3528  CA3035  	    jp   z,$3530
352B  3601    	    ld   (hl),$01
352D  C3EE34  	    jp   $34EE
3530  3602    	    ld   (hl),$02
3532  C3EE34  	    jp   $34EE
3535  EB      	    ex   de,hl
3536  3604    	    ld   (hl),$04
3538  C3EE34  	    jp   $34EE
353B  EB      	    ex   de,hl
353C  3608    	    ld   (hl),$08
353E  C3EE34  	    jp   $34EE
3541  21E3FF  	    ld   hl,$FFE3
3544  09      	    add  hl,bc
3545  BE      	    cp   (hl)
3546  DA3535  	    jp   c,$3535
3549  21E1FF  	    ld   hl,$FFE1
354C  09      	    add  hl,bc
354D  BE      	    cp   (hl)
354E  DA3B35  	    jp   c,$353B
3551  C32435  	    jp   $3524
3554  ED5F    	    ld   a,r
3556  E60F    	    and  $0F
3558  FE09    	    cp   $09
355A  3EDF    	    ld   a,$DF
355C  DA8C35  	    jp   c,$358C
355F  21C2FF  	    ld   hl,$FFC2
3562  09      	    add  hl,bc
3563  BE      	    cp   (hl)
3564  DA8035  	    jp   c,$3580
3567  210200  	    ld   hl,$0002
356A  09      	    add  hl,bc
356B  BE      	    cp   (hl)
356C  DA8635  	    jp   c,$3586
356F  EB      	    ex   de,hl
3570  7E      	    ld   a,(hl)
3571  FE04    	    cp   $04
3573  CA7B35  	    jp   z,$357B
3576  3604    	    ld   (hl),$04
3578  C3EE34  	    jp   $34EE
357B  3608    	    ld   (hl),$08
357D  C3EE34  	    jp   $34EE
3580  EB      	    ex   de,hl
3581  3602    	    ld   (hl),$02
3583  C3EE34  	    jp   $34EE
3586  EB      	    ex   de,hl
3587  3601    	    ld   (hl),$01
3589  C3EE34  	    jp   $34EE
358C  210200  	    ld   hl,$0002
358F  09      	    add  hl,bc
3590  BE      	    cp   (hl)
3591  DA8635  	    jp   c,$3586
3594  21C2FF  	    ld   hl,$FFC2
3597  09      	    add  hl,bc
3598  BE      	    cp   (hl)
3599  DA8035  	    jp   c,$3580
359C  C36F35  	    jp   $356F
359F  23      	    inc  hl
35A0  3600    	    ld   (hl),$00
35A2  23      	    inc  hl
35A3  1A      	    ld   a,(de)
35A4  FE0C    	    cp   $0C
35A6  CAEE34  	    jp   z,$34EE
35A9  D2B235  	    jp   nc,$35B2
35AC  3E0C    	    ld   a,$0C
35AE  12      	    ld   (de),a
35AF  C3EE34  	    jp   $34EE
35B2  13      	    inc  de
35B3  CDCA37  	    call $37CA
35B6  44      	    ld   b,h
35B7  4D      	    ld   c,l
35B8  210200  	    ld   hl,$0002
35BB  09      	    add  hl,bc
35BC  3EDF    	    ld   a,$DF
35BE  BE      	    cp   (hl)
35BF  D20135  	    jp   nc,$3501
35C2  210B00  	    ld   hl,$000B
35C5  19      	    add  hl,de
35C6  EB      	    ex   de,hl
35C7  21E2FF  	    ld   hl,$FFE2
35CA  CDE537  	    call $37E5
35CD  A7      	    and  a
35CE  C2D735  	    jp   nz,$35D7
35D1  210200  	    ld   hl,$0002
35D4  CDE537  	    call $37E5
35D7  13      	    inc  de
35D8  13      	    inc  de
35D9  21E2FF  	    ld   hl,$FFE2
35DC  CD0C38  	    call $380C
35DF  A7      	    and  a
35E0  C2E935  	    jp   nz,$35E9
35E3  210200  	    ld   hl,$0002
35E6  CD0C38  	    call $380C
35E9  21F7FF  	    ld   hl,$FFF7
35EC  19      	    add  hl,de
35ED  54      	    ld   d,h
35EE  5D      	    ld   e,l
35EF  13      	    inc  de
35F0  1A      	    ld   a,(de)
35F1  77      	    ld   (hl),a
35F2  3E00    	    ld   a,$00
35F4  13      	    inc  de
35F5  13      	    inc  de
35F6  12      	    ld   (de),a
35F7  C32237  	    jp   $3722
35FA  23      	    inc  hl
35FB  3680    	    ld   (hl),$80
35FD  23      	    inc  hl
35FE  1A      	    ld   a,(de)
35FF  FEE4    	    cp   $E4
3601  CAEE34  	    jp   z,$34EE
3604  DA0D36  	    jp   c,$360D
3607  3EE4    	    ld   a,$E4
3609  12      	    ld   (de),a
360A  C3EE34  	    jp   $34EE
360D  13      	    inc  de
360E  CDCA37  	    call $37CA
3611  44      	    ld   b,h
3612  4D      	    ld   c,l
3613  21C2FF  	    ld   hl,$FFC2
3616  09      	    add  hl,bc
3617  3EDF    	    ld   a,$DF
3619  BE      	    cp   (hl)
361A  D20135  	    jp   nc,$3501
361D  210B00  	    ld   hl,$000B
3620  19      	    add  hl,de
3621  EB      	    ex   de,hl
3622  21E2FF  	    ld   hl,$FFE2
3625  CDE537  	    call $37E5
3628  A7      	    and  a
3629  C23236  	    jp   nz,$3632
362C  21C2FF  	    ld   hl,$FFC2
362F  CDE537  	    call $37E5
3632  13      	    inc  de
3633  13      	    inc  de
3634  21E2FF  	    ld   hl,$FFE2
3637  CD0C38  	    call $380C
363A  A7      	    and  a
363B  C24436  	    jp   nz,$3644
363E  21C2FF  	    ld   hl,$FFC2
3641  CD0C38  	    call $380C
3644  21F7FF  	    ld   hl,$FFF7
3647  19      	    add  hl,de
3648  54      	    ld   d,h
3649  5D      	    ld   e,l
364A  13      	    inc  de
364B  13      	    inc  de
364C  1A      	    ld   a,(de)
364D  77      	    ld   (hl),a
364E  3E00    	    ld   a,$00
3650  13      	    inc  de
3651  12      	    ld   (de),a
3652  C32237  	    jp   $3722
3655  23      	    inc  hl
3656  3604    	    ld   (hl),$04
3658  23      	    inc  hl
3659  13      	    inc  de
365A  1A      	    ld   a,(de)
365B  FEEC    	    cp   $EC
365D  CAEE34  	    jp   z,$34EE
3660  DA6936  	    jp   c,$3669
3663  3EEC    	    ld   a,$EC
3665  12      	    ld   (de),a
3666  C3EE34  	    jp   $34EE
3669  CDCA37  	    call $37CA
366C  44      	    ld   b,h
366D  4D      	    ld   c,l
366E  21E3FF  	    ld   hl,$FFE3
3671  09      	    add  hl,bc
3672  3EDF    	    ld   a,$DF
3674  BE      	    cp   (hl)
3675  D20135  	    jp   nc,$3501
3678  210B00  	    ld   hl,$000B
367B  19      	    add  hl,de
367C  EB      	    ex   de,hl
367D  21E2FF  	    ld   hl,$FFE2
3680  CDE537  	    call $37E5
3683  A7      	    and  a
3684  C28D36  	    jp   nz,$368D
3687  21E3FF  	    ld   hl,$FFE3
368A  CDE537  	    call $37E5
368D  13      	    inc  de
368E  13      	    inc  de
368F  21E2FF  	    ld   hl,$FFE2
3692  CD0C38  	    call $380C
3695  A7      	    and  a
3696  C29F36  	    jp   nz,$369F
3699  21E3FF  	    ld   hl,$FFE3
369C  CD0C38  	    call $380C
369F  21F7FF  	    ld   hl,$FFF7
36A2  19      	    add  hl,de
36A3  3E00    	    ld   a,$00
36A5  77      	    ld   (hl),a
36A6  23      	    inc  hl
36A7  23      	    inc  hl
36A8  23      	    inc  hl
36A9  54      	    ld   d,h
36AA  5D      	    ld   e,l
36AB  13      	    inc  de
36AC  1A      	    ld   a,(de)
36AD  77      	    ld   (hl),a
36AE  EB      	    ex   de,hl
36AF  C32237  	    jp   $3722
36B2  23      	    inc  hl
36B3  3644    	    ld   (hl),$44
36B5  23      	    inc  hl
36B6  13      	    inc  de
36B7  1A      	    ld   a,(de)
36B8  FE14    	    cp   $14
36BA  CAEE34  	    jp   z,$34EE
36BD  D2C636  	    jp   nc,$36C6
36C0  3E14    	    ld   a,$14
36C2  12      	    ld   (de),a
36C3  C3EE34  	    jp   $34EE
36C6  CDCA37  	    call $37CA
36C9  44      	    ld   b,h
36CA  4D      	    ld   c,l
36CB  21E1FF  	    ld   hl,$FFE1
36CE  09      	    add  hl,bc
36CF  3EDF    	    ld   a,$DF
36D1  BE      	    cp   (hl)
36D2  D20135  	    jp   nc,$3501
36D5  210B00  	    ld   hl,$000B
36D8  19      	    add  hl,de
36D9  EB      	    ex   de,hl
36DA  21E2FF  	    ld   hl,$FFE2
36DD  CDE537  	    call $37E5
36E0  A7      	    and  a
36E1  C2EA36  	    jp   nz,$36EA
36E4  21E1FF  	    ld   hl,$FFE1
36E7  CDE537  	    call $37E5
36EA  13      	    inc  de
36EB  13      	    inc  de
36EC  21E2FF  	    ld   hl,$FFE2
36EF  CD0C38  	    call $380C
36F2  A7      	    and  a
36F3  C2FC36  	    jp   nz,$36FC
36F6  21E1FF  	    ld   hl,$FFE1
36F9  CD0C38  	    call $380C
36FC  21F7FF  	    ld   hl,$FFF7
36FF  19      	    add  hl,de
3700  3E00    	    ld   a,$00
3702  77      	    ld   (hl),a
3703  23      	    inc  hl
3704  23      	    inc  hl
3705  23      	    inc  hl
3706  54      	    ld   d,h
3707  5D      	    ld   e,l
3708  13      	    inc  de
3709  13      	    inc  de
370A  1A      	    ld   a,(de)
370B  77      	    ld   (hl),a
370C  EB      	    ex   de,hl
370D  C32237  	    jp   $3722
3710  210700  	    ld   hl,$0007
3713  19      	    add  hl,de
3714  EB      	    ex   de,hl
3715  210E00  	    ld   hl,$000E
3718  19      	    add  hl,de
3719  44      	    ld   b,h
371A  4D      	    ld   c,l
371B  210500  	    ld   hl,$0005
371E  19      	    add  hl,de
371F  C33037  	    jp   $3730
3722  210E00  	    ld   hl,$000E
3725  19      	    add  hl,de
3726  44      	    ld   b,h
3727  4D      	    ld   c,l
3728  3600    	    ld   (hl),$00
372A  210500  	    ld   hl,$0005
372D  19      	    add  hl,de
372E  3600    	    ld   (hl),$00
3730  EB      	    ex   de,hl
3731  1B      	    dec  de
3732  1A      	    ld   a,(de)
3733  A7      	    and  a
3734  CA4537  	    jp   z,$3745
3737  13      	    inc  de
3738  1A      	    ld   a,(de)
3739  3C      	    inc  a
373A  E603    	    and  $03
373C  12      	    ld   (de),a
373D  FE01    	    cp   $01
373F  CA7437  	    jp   z,$3774
3742  C36837  	    jp   $3768
3745  13      	    inc  de
3746  13      	    inc  de
3747  1A      	    ld   a,(de)
3748  A7      	    and  a
3749  CA5937  	    jp   z,$3759
374C  0A      	    ld   a,(bc)
374D  3C      	    inc  a
374E  E601    	    and  $01
3750  02      	    ld   (bc),a
3751  FE01    	    cp   $01
3753  CA7437  	    jp   z,$3774
3756  C36837  	    jp   $3768
3759  0A      	    ld   a,(bc)
375A  3C      	    inc  a
375B  E607    	    and  $07
375D  02      	    ld   (bc),a
375E  FE03    	    cp   $03
3760  CA6837  	    jp   z,$3768
3763  FE05    	    cp   $05
3765  C27437  	    jp   nz,$3774
3768  54      	    ld   d,h
3769  5D      	    ld   e,l
376A  21F9FF  	    ld   hl,$FFF9
376D  19      	    add  hl,de
376E  1B      	    dec  de
376F  1B      	    dec  de
3770  1B      	    dec  de
3771  C38737  	    jp   $3787
3774  00      	    nop
3775  00      	    nop
3776  00      	    nop
3777  54      	    ld   d,h
3778  5D      	    ld   e,l
3779  01FAFF  	    ld   bc,$FFFA
377C  09      	    add  hl,bc
377D  1A      	    ld   a,(de)
377E  86      	    add  a,(hl)
377F  77      	    ld   (hl),a
3780  1B      	    dec  de
3781  1B      	    dec  de
3782  1B      	    dec  de
3783  2B      	    dec  hl
3784  1A      	    ld   a,(de)
3785  86      	    add  a,(hl)
3786  77      	    ld   (hl),a
3787  2B      	    dec  hl
3788  2B      	    dec  hl
3789  7E      	    ld   a,(hl)
378A  3C      	    inc  a
378B  E607    	    and  $07
378D  77      	    ld   (hl),a
378E  FE04    	    cp   $04
3790  DA9837  	    jp   c,$3798
3793  3600    	    ld   (hl),$00
3795  2B      	    dec  hl
3796  34      	    inc  (hl)
3797  23      	    inc  hl
3798  2B      	    dec  hl
3799  1B      	    dec  de
379A  CDA137  	    call $37A1
379D  CDB337  	    call $37B3
37A0  C9      	    ret
37A1  7E      	    ld   a,(hl)
37A2  E603    	    and  $03
37A4  47      	    ld   b,a
37A5  1A      	    ld   a,(de)
37A6  E6CC    	    and  $CC
37A8  4F      	    ld   c,a
37A9  2B      	    dec  hl
37AA  7E      	    ld   a,(hl)
37AB  E630    	    and  $30
37AD  B0      	    or   b
37AE  B1      	    or   c
37AF  77      	    ld   (hl),a
37B0  EB      	    ex   de,hl
37B1  1B      	    dec  de
37B2  C9      	    ret
37B3  1A      	    ld   a,(de)
37B4  6F      	    ld   l,a
37B5  2680    	    ld   h,$80
37B7  13      	    inc  de
37B8  1A      	    ld   a,(de)
37B9  77      	    ld   (hl),a
37BA  13      	    inc  de
37BB  13      	    inc  de
37BC  13      	    inc  de
37BD  13      	    inc  de
37BE  2B      	    dec  hl
37BF  1A      	    ld   a,(de)
37C0  77      	    ld   (hl),a
37C1  23      	    inc  hl
37C2  23      	    inc  hl
37C3  3606    	    ld   (hl),$06
37C5  23      	    inc  hl
37C6  13      	    inc  de
37C7  1A      	    ld   a,(de)
37C8  77      	    ld   (hl),a
37C9  C9      	    ret


37CA  1A      	    ld   a,(de)
37CB  0F      	    rrca
37CC  0F      	    rrca
37CD  0F      	    rrca
37CE  E61F    	    and  $1F
37D0  6F      	    ld   l,a
37D1  1B      	    dec  de
37D2  1A      	    ld   a,(de)
37D3  ED44    	    neg
37D5  07      	    rlca
37D6  07      	    rlca
37D7  67      	    ld   h,a
37D8  E6E0    	    and  $E0
37DA  B5      	    or   l
37DB  6F      	    ld   l,a
37DC  7C      	    ld   a,h
37DD  E603    	    and  $03
37DF  67      	    ld   h,a
37E0  3E90    	    ld   a,$90
37E2  84      	    add  a,h
37E3  67      	    ld   h,a
37E4  C9      	    ret


37E5  09      	    add  hl,bc
37E6  3EE1    	    ld   a,$E1
37E8  BE      	    cp   (hl)
37E9  CA0838  	    jp   z,$3808
37EC  3EE2    	    ld   a,$E2
37EE  BE      	    cp   (hl)
37EF  CA0838  	    jp   z,$3808
37F2  3EE3    	    ld   a,$E3
37F4  BE      	    cp   (hl)
37F5  CA0838  	    jp   z,$3808
37F8  3EE4    	    ld   a,$E4
37FA  BE      	    cp   (hl)
37FB  CA0838  	    jp   z,$3808
37FE  00      	    nop
37FF  00      	    nop
3800  00      	    nop
3801  00      	    nop
3802  00      	    nop
3803  00      	    nop
3804  3E00    	    ld   a,$00
3806  12      	    ld   (de),a
3807  C9      	    ret
3808  3E01    	    ld   a,$01
380A  12      	    ld   (de),a
380B  C9      	    ret
380C  09      	    add  hl,bc
380D  3EE0    	    ld   a,$E0
380F  BE      	    cp   (hl)
3810  CA1738  	    jp   z,$3817
3813  3E00    	    ld   a,$00
3815  12      	    ld   (de),a
3816  C9      	    ret
3817  3E01    	    ld   a,$01
3819  12      	    ld   (de),a
381A  C9      	    ret
381B  EB      	    ex   de,hl
381C  21F9FF  	    ld   hl,$FFF9
381F  19      	    add  hl,de
3820  34      	    inc  (hl)
3821  7E      	    ld   a,(hl)
3822  FE10    	    cp   $10
3824  DA5138  	    jp   c,$3851
3827  CA3C38  	    jp   z,$383C
382A  E607    	    and  $07
382C  FE00    	    cp   $00
382E  C24238  	    jp   nz,$3842
3831  21FDFF  	    ld   hl,$FFFD
3834  19      	    add  hl,de
3835  3E80    	    ld   a,$80
3837  86      	    add  a,(hl)
3838  77      	    ld   (hl),a
3839  C34238  	    jp   $3842
383C  21FDFF  	    ld   hl,$FFFD
383F  19      	    add  hl,de
3840  3624    	    ld   (hl),$24
3842  62      	    ld   h,d
3843  6B      	    ld   l,e
3844  23      	    inc  hl
3845  23      	    inc  hl
3846  7E      	    ld   a,(hl)
3847  C602    	    add  a,$02
3849  FEE0    	    cp   $E0
384B  DA5038  	    jp   c,$3850
384E  3EE0    	    ld   a,$E0
3850  77      	    ld   (hl),a
3851  21FCFF  	    ld   hl,$FFFC
3854  19      	    add  hl,de
3855  EB      	    ex   de,hl
3856  CDB337  	    call $37B3
3859  C9      	    ret
385A  EB      	    ex   de,hl
385B  21FAFF  	    ld   hl,$FFFA
385E  19      	    add  hl,de
385F  34      	    inc  (hl)
3860  7E      	    ld   a,(hl)
3861  23      	    inc  hl
3862  23      	    inc  hl
3863  23      	    inc  hl
3864  FE01    	    cp   $01
3866  C26B38  	    jp   nz,$386B
3869  362D    	    ld   (hl),$2D
386B  FE08    	    cp   $08
386D  C27238  	    jp   nz,$3872
3870  3631    	    ld   (hl),$31
3872  FE14    	    cp   $14
3874  C27938  	    jp   nz,$3879
3877  3630    	    ld   (hl),$30
3879  FE20    	    cp   $20
387B  C28038  	    jp   nz,$3880
387E  362B    	    ld   (hl),$2B
3880  FE80    	    cp   $80
3882  DA8838  	    jp   c,$3888
3885  3E07    	    ld   a,$07
3887  12      	    ld   (de),a
3888  EB      	    ex   de,hl
3889  1B      	    dec  de
388A  CDB337  	    call $37B3
388D  C9      	    ret
388E  EB      	    ex   de,hl
388F  21FAFF  	    ld   hl,$FFFA
3892  19      	    add  hl,de
3893  34      	    inc  (hl)
3894  7E      	    ld   a,(hl)
3895  23      	    inc  hl
3896  23      	    inc  hl
3897  23      	    inc  hl
3898  FE01    	    cp   $01
389A  C29F38  	    jp   nz,$389F
389D  362C    	    ld   (hl),$2C
389F  FE08    	    cp   $08
38A1  C2A638  	    jp   nz,$38A6
38A4  362D    	    ld   (hl),$2D
38A6  FE14    	    cp   $14
38A8  C2AD38  	    jp   nz,$38AD
38AB  362E    	    ld   (hl),$2E
38AD  FE20    	    cp   $20
38AF  C2B438  	    jp   nz,$38B4
38B2  362B    	    ld   (hl),$2B
38B4  FE80    	    cp   $80
38B6  DABC38  	    jp   c,$38BC
38B9  3E07    	    ld   a,$07
38BB  12      	    ld   (de),a
38BC  EB      	    ex   de,hl
38BD  1B      	    dec  de
38BE  CDB337  	    call $37B3
38C1  C9      	    ret
38C2  0E00    	    ld   c,$00
38C4  23      	    inc  hl
38C5  71      	    ld   (hl),c
38C6  23      	    inc  hl
38C7  71      	    ld   (hl),c
38C8  54      	    ld   d,h
38C9  7D      	    ld   a,l
38CA  FE19    	    cp   $19
38CC  C2D338  	    jp   nz,$38D3
38CF  59      	    ld   e,c
38D0  C3F238  	    jp   $38F2
38D3  FE39    	    cp   $39
38D5  C2DD38  	    jp   nz,$38DD
38D8  1E02    	    ld   e,$02
38DA  C3F238  	    jp   $38F2
38DD  FE59    	    cp   $59
38DF  C2E738  	    jp   nz,$38E7
38E2  1E04    	    ld   e,$04
38E4  C3F238  	    jp   $38F2
38E7  FE79    	    cp   $79
38E9  CAF038  	    jp   z,$38F0
38EC  00      	    nop
38ED  C3EC38  	    jp   $38EC
38F0  1E06    	    ld   e,$06
38F2  EB      	    ex   de,hl
38F3  71      	    ld   (hl),c
38F4  23      	    inc  hl
38F5  71      	    ld   (hl),c
38F6  EB      	    ex   de,hl
38F7  11FAFF  	    ld   de,$FFFA
38FA  19      	    add  hl,de
38FB  EB      	    ex   de,hl
38FC  011039  	    ld   bc,$3910
38FF  211500  	    ld   hl,$0015
3902  19      	    add  hl,de
3903  CDF732  	    call snake_spawn_delay
3906  CDB337  	    call $37B3
3909  C9      	    ret
                ;; some data?
390A  00      	    nop
390B  00      	    nop
390C  00      	    nop
390D  00      	    nop
390E  00      	    nop
390F  00      	    nop
3910  70      	    ld   (hl),b
3911  02      	    ld   (bc),a
3912  70      	    ld   (hl),b
3913  01F000  	    ld   bc,$00F0
3916  F0      	    ret  p
3917  00      	    nop
3918  F0      	    ret  p
3919  00      	    nop
391A  F0      	    ret  p
391B  00      	    nop
391C  F0      	    ret  p
391D  00      	    nop
391E  F0      	    ret  p
391F  00      	    nop
3920  F0      	    ret  p
3921  00      	    nop
3922  F0      	    ret  p
3923  00      	    nop
3924  00      	    nop
3925  00      	    nop
3926  00      	    nop
3927  00      	    nop
3928  00      	    nop
3929  00      	    nop

                player_vs_enemy:    ; AABB player sprite vs each enemy -> player death
392A  3A00B0  	    ld   a,(int_enable)
392D  E680    	    and  $80
392F  C0      	    ret  nz
3930  3A1F84  	    ld   a,($841F)
3933  FE01    	    cp   $01
3935  C0      	    ret  nz
3936  3A3E80  	    ld   a,(endlevel_active)
3939  A7      	    and  a
393A  C0      	    ret  nz
393B  CD8139  	    call player_vs_catA
393E  CD9C39  	    call player_vs_catB
3941  CDB739  	    call player_vs_catC
3944  CDD239  	    call player_vs_snakeA
3947  CDED39  	    call player_vs_snakeB
394A  C9      	    ret

                enemy_eaten_sm: ; enemy death/return-home driver, award escalating points
394B  CD083A  	    call return_catA
394E  CD153A  	    call return_catB
3951  CD223A  	    call return_catC
3954  CD503A  	    call return_snakeA
3957  CD5D3A  	    call return_snakeB
395A  CDCC3A  	    call boulder_squash
395D  C9      	    ret

395E  DD7E03  	    ld   a,(ix+$03)
3961  FD4603  	    ld   b,(iy+$03)
3964  94      	    sub  h
3965  B8      	    cp   b
3966  D0      	    ret  nc
3967  85      	    add  a,l
3968  B8      	    cp   b
3969  D8      	    ret  c
396A  DD7E00  	    ld   a,(ix+$00)
396D  FD4600  	    ld   b,(iy+$00)
3970  92      	    sub  d
3971  B8      	    cp   b
3972  D0      	    ret  nc
3973  83      	    add  a,e
3974  B8      	    cp   b
3975  D8      	    ret  c
3976  3E81    	    ld   a,$81
3978  3200B8  	    ld   (watchdog),a
397B  211F84  	    ld   hl,$841F
397E  3602    	    ld   (hl),$02
3980  C9      	    ret
    ;;
                player_vs_catA: ; AABB player vs cat A ($8501) -> player death
3981  3A0185  	    ld   a,($8501)
3984  A7      	    and  a
3985  C8      	    ret  z
3986  3A2B85  	    ld   a,(cat1_busy)
3989  A7      	    and  a
398A  C0      	    ret  nz
398B  DD210080	    ld   ix,ram_start
398F  FD210480	    ld   iy,$8004
3993  110E07  	    ld   de,$070E
3996  210E07  	    ld   hl,$070E
3999  C35E39  	    jp   $395E
                player_vs_catB: ; AABB player vs cat B ($8504) -> player death
399C  3A0485  	    ld   a,($8504)
399F  A7      	    and  a
39A0  C8      	    ret  z
39A1  3A6B85  	    ld   a,(cat2_busy)
39A4  A7      	    and  a
39A5  C0      	    ret  nz
39A6  DD210080	    ld   ix,ram_start
39AA  FD210C80	    ld   iy,$800C
39AE  110E07  	    ld   de,$070E
39B1  210E07  	    ld   hl,$070E
39B4  C35E39  	    jp   $395E
                player_vs_catC: ; AABB player vs cat C ($8507) -> player death
39B7  3A0785  	    ld   a,($8507)
39BA  A7      	    and  a
39BB  C8      	    ret  z
39BC  3A8B85  	    ld   a,(cat3_busy)
39BF  A7      	    and  a
39C0  C0      	    ret  nz
39C1  DD210080	    ld   ix,ram_start
39C5  FD211080	    ld   iy,$8010
39C9  110E07  	    ld   de,$070E
39CC  210E07  	    ld   hl,$070E
39CF  C35E39  	    jp   $395E
                player_vs_snakeA: ; AABB player vs snake A ($8601) -> player death
39D2  3A0186  	    ld   a,($8601)
39D5  A7      	    and  a
39D6  C8      	    ret  z
39D7  3A2B86  	    ld   a,(snake1_busy)
39DA  A7      	    and  a
39DB  C0      	    ret  nz
39DC  DD210080	    ld   ix,ram_start
39E0  FD211480	    ld   iy,$8014
39E4  110A05  	    ld   de,$050A
39E7  210A05  	    ld   hl,$050A
39EA  C35E39  	    jp   $395E
                player_vs_snakeB: ; AABB player vs snake B ($8603) -> player death
39ED  3A0386  	    ld   a,($8603)
39F0  A7      	    and  a
39F1  C8      	    ret  z
39F2  3A4B86  	    ld   a,(snake2_busy)
39F5  A7      	    and  a
39F6  C0      	    ret  nz
39F7  DD210080	    ld   ix,ram_start
39FB  FD211880	    ld   iy,$8018
39FF  110A05  	    ld   de,$050A
3A02  210A05  	    ld   hl,$050A
3A05  C35E39  	    jp   $395E
                return_catA: ; cat A death->return-home handler (cat1_state)
3A08  211785  	    ld   hl,cat1_state
3A0B  7E      	    ld   a,(hl)
3A0C  FE04    	    cp   $04
3A0E  C0      	    ret  nz
3A0F  110780  	    ld   de,$8007
3A12  C32C3A  	    jp   $3A2C
                return_catB: ; cat B death->return-home handler (cat2_state)
3A15  215785  	    ld   hl,cat2_state
3A18  7E      	    ld   a,(hl)
3A19  FE04    	    cp   $04
3A1B  C0      	    ret  nz
3A1C  110F80  	    ld   de,$800F
3A1F  C32C3A  	    jp   $3A2C
                return_catC: ; cat C death->return-home handler (cat3_state)
3A22  217785  	    ld   hl,cat3_state
3A25  7E      	    ld   a,(hl)
3A26  FE04    	    cp   $04
3A28  C0      	    ret  nz
3A29  111380  	    ld   de,$8013
3A2C  1A      	    ld   a,(de)
3A2D  FEE0    	    cp   $E0
3A2F  D2433A  	    jp   nc,$3A43
3A32  CD993B  	    call $3B99
3A35  FE37    	    cp   $37
3A37  C0      	    ret  nz
3A38  3605    	    ld   (hl),$05
3A3A  3E96    	    ld   a,$96
3A3C  3200B8  	    ld   (watchdog),a
3A3F  C34A3A  	    jp   $3A4A
3A42  C9      	    ret
3A43  3606    	    ld   (hl),$06
3A45  3E83    	    ld   a,$83
3A47  3200B8  	    ld   (watchdog),a
3A4A  1604    	    ld   d,$04
3A4C  CDBD3B  	    call score_add_request
3A4F  C9      	    ret
                return_snakeA: ; snake A death->return-home handler (snake1_state)
3A50  211786  	    ld   hl,snake1_state
3A53  7E      	    ld   a,(hl)
3A54  FE04    	    cp   $04
3A56  C0      	    ret  nz
3A57  111780  	    ld   de,$8017
3A5A  C3673A  	    jp   $3A67
                return_snakeB: ; snake B death->return-home handler (snake2_state)
3A5D  213786  	    ld   hl,snake2_state
3A60  7E      	    ld   a,(hl)
3A61  FE04    	    cp   $04
3A63  C0      	    ret  nz
3A64  111B80  	    ld   de,$801B
3A67  1A      	    ld   a,(de)
3A68  FEE0    	    cp   $E0
3A6A  D2783A  	    jp   nc,$3A78
3A6D  CD993B  	    call $3B99
3A70  FE37    	    cp   $37
3A72  C0      	    ret  nz
3A73  3605    	    ld   (hl),$05
3A75  C3853A  	    jp   $3A85
3A78  3606    	    ld   (hl),$06
3A7A  3E82    	    ld   a,$82
3A7C  3200B8  	    ld   (watchdog),a
3A7F  1608    	    ld   d,$08
3A81  CDBD3B  	    call score_add_request
3A84  C9      	    ret
3A85  3E97    	    ld   a,$97
3A87  3200B8  	    ld   (watchdog),a
3A8A  1608    	    ld   d,$08
                kill_enemies_bonus: ; level-end: award points for + clear surviving enemies
3A8C  CDBD3B  	    call score_add_request
3A8F  1604    	    ld   d,$04
3A91  3A2B85  	    ld   a,(cat1_busy)
3A94  A7      	    and  a
3A95  C2A53A  	    jp   nz,$3AA5
3A98  CDBD3B  	    call score_add_request
3A9B  211785  	    ld   hl,cat1_state
3A9E  3606    	    ld   (hl),$06
3AA0  212B85  	    ld   hl,cat1_busy
3AA3  3601    	    ld   (hl),$01
3AA5  3A6B85  	    ld   a,(cat2_busy)
3AA8  A7      	    and  a
3AA9  C2B93A  	    jp   nz,$3AB9
3AAC  CDBD3B  	    call score_add_request
3AAF  215785  	    ld   hl,cat2_state
3AB2  3606    	    ld   (hl),$06
3AB4  216B85  	    ld   hl,cat2_busy
3AB7  3601    	    ld   (hl),$01
3AB9  3A8B85  	    ld   a,(cat3_busy)
3ABC  A7      	    and  a
3ABD  C0      	    ret  nz
3ABE  CDBD3B  	    call score_add_request
3AC1  217785  	    ld   hl,cat3_state
3AC4  3606    	    ld   (hl),$06
3AC6  218B85  	    ld   hl,cat3_busy
3AC9  3601    	    ld   (hl),$01
3ACB  C9      	    ret

                boulder_squash: ; while boulder active: AABB-test it vs each enemy, squash the ones it overlaps
3ACC  3AC085  	    ld   a,(boulder)
3ACF  A7      	    and  a
3AD0  C8      	    ret  z
3AD1  CDE13A  	    call boulder_hit_catA
3AD4  CDF83A  	    call boulder_hit_catB
3AD7  CD0F3B  	    call boulder_hit_catC
3ADA  CD363B  	    call boulder_hit_snakeA
3ADD  CD4D3B  	    call boulder_hit_snakeB
3AE0  C9      	    ret

                boulder_hit_catA: ; enable+busy gate then boulder_vs_enemy (cat A $8501)
3AE1  3A0185  	    ld   a,($8501)
3AE4  A7      	    and  a
3AE5  C8      	    ret  z
3AE6  3A2B85  	    ld   a,(cat1_busy)
3AE9  A7      	    and  a
3AEA  C0      	    ret  nz
3AEB  FD210480	    ld   iy,$8004
3AEF  21263B  	    ld   hl,$3B26
3AF2  111785  	    ld   de,cat1_state
3AF5  C3743B  	    jp   boulder_vs_enemy
                boulder_hit_catB: ; enable+busy gate then boulder_vs_enemy (cat B $8505)
3AF8  3A0585  	    ld   a,($8505)
3AFB  A7      	    and  a
3AFC  C8      	    ret  z
3AFD  3A6B85  	    ld   a,(cat2_busy)
3B00  A7      	    and  a
3B01  C0      	    ret  nz
3B02  FD210C80	    ld   iy,$800C
3B06  21263B  	    ld   hl,$3B26
3B09  115785  	    ld   de,cat2_state
3B0C  C3743B  	    jp   boulder_vs_enemy
                boulder_hit_catC: ; enable+busy gate then boulder_vs_enemy (cat C $8507)
3B0F  3A0785  	    ld   a,($8507)
3B12  A7      	    and  a
3B13  C8      	    ret  z
3B14  3A8B85  	    ld   a,(cat3_busy)
3B17  A7      	    and  a
3B18  C0      	    ret  nz
3B19  FD211080	    ld   iy,$8010
3B1D  21263B  	    ld   hl,$3B26
3B20  117785  	    ld   de,cat3_state
3B23  C3743B  	    jp   boulder_vs_enemy
3B26  21FDFF  	    ld   hl,$FFFD
3B29  19      	    add  hl,de
3B2A  361C    	    ld   (hl),$1C
3B2C  211400  	    ld   hl,$0014
3B2F  19      	    add  hl,de
3B30  3601    	    ld   (hl),$01
3B32  EB      	    ex   de,hl
3B33  3604    	    ld   (hl),$04
3B35  C9      	    ret

                boulder_hit_snakeA: ; enable+busy gate then boulder_vs_enemy (snake A $8601)
3B36  3A0186  	    ld   a,($8601)
3B39  A7      	    and  a
3B3A  C8      	    ret  z
3B3B  3A2B86  	    ld   a,(snake1_busy)
3B3E  A7      	    and  a
3B3F  C0      	    ret  nz
3B40  FD211480	    ld   iy,$8014
3B44  21643B  	    ld   hl,$3B64
3B47  111786  	    ld   de,snake1_state
3B4A  C3743B  	    jp   boulder_vs_enemy
                boulder_hit_snakeB: ; enable+busy gate then boulder_vs_enemy (snake B $8603)
3B4D  3A0386  	    ld   a,($8603)
3B50  A7      	    and  a
3B51  C8      	    ret  z
3B52  3A4B86  	    ld   a,(snake2_busy)
3B55  A7      	    and  a
3B56  C0      	    ret  nz
3B57  FD211880	    ld   iy,$8018
3B5B  21643B  	    ld   hl,$3B64
3B5E  113786  	    ld   de,snake2_state
3B61  C3743B  	    jp   boulder_vs_enemy
3B64  21FDFF  	    ld   hl,$FFFD
3B67  19      	    add  hl,de
3B68  362C    	    ld   (hl),$2C
3B6A  211400  	    ld   hl,$0014
3B6D  19      	    add  hl,de
3B6E  3601    	    ld   (hl),$01
3B70  EB      	    ex   de,hl
3B71  3604    	    ld   (hl),$04
3B73  C9      	    ret

                boulder_vs_enemy:   ; AABB overlap test: falling boulder ($801C) vs one enemy sprite -> kill on hit
3B74  DD211C80	    ld   ix,$801C
3B78  D9      	    exx
3B79  111008  	    ld   de,$0810
3B7C  211202  	    ld   hl,$0212
3B7F  DD7E03  	    ld   a,(ix+$03)
3B82  FD4603  	    ld   b,(iy+$03)
3B85  94      	    sub  h
3B86  B8      	    cp   b
3B87  D0      	    ret  nc
3B88  85      	    add  a,l
3B89  B8      	    cp   b
3B8A  D8      	    ret  c
3B8B  DD7E00  	    ld   a,(ix+$00)
3B8E  FD4600  	    ld   b,(iy+$00)
3B91  92      	    sub  d
3B92  B8      	    cp   b
3B93  D0      	    ret  nc
3B94  83      	    add  a,e
3B95  B8      	    cp   b
3B96  D8      	    ret  c
3B97  D9      	    exx
3B98  E9      	    jp   (hl)
3B99  1A      	    ld   a,(de)
3B9A  0F      	    rrca
3B9B  0F      	    rrca
3B9C  0F      	    rrca
3B9D  E61F    	    and  $1F
3B9F  4F      	    ld   c,a
3BA0  1B      	    dec  de
3BA1  1B      	    dec  de
3BA2  1B      	    dec  de
3BA3  1A      	    ld   a,(de)
3BA4  ED44    	    neg
3BA6  07      	    rlca
3BA7  07      	    rlca
3BA8  47      	    ld   b,a
3BA9  E6E0    	    and  $E0
3BAB  B1      	    or   c
3BAC  4F      	    ld   c,a
3BAD  78      	    ld   a,b
3BAE  E603    	    and  $03
3BB0  47      	    ld   b,a
3BB1  3E90    	    ld   a,$90
3BB3  80      	    add  a,b
3BB4  47      	    ld   b,a
3BB5  EB      	    ex   de,hl
3BB6  21E1FF  	    ld   hl,$FFE1
3BB9  09      	    add  hl,bc
3BBA  7E      	    ld   a,(hl)
3BBB  EB      	    ex   de,hl
3BBC  C9      	    ret

                score_add_request: ; request a score add (score_add_trig=1) with pending BCD
3BBD  AF      	    xor  a
3BBE  214080  	    ld   hl,score_add_trig
3BC1  3601    	    ld   (hl),$01
3BC3  0E00    	    ld   c,$00
3BC5  1E00    	    ld   e,$00
3BC7  23      	    inc  hl
3BC8  79      	    ld   a,c
3BC9  8E      	    adc  a,(hl)
3BCA  27      	    daa
3BCB  77      	    ld   (hl),a
3BCC  23      	    inc  hl
3BCD  7A      	    ld   a,d
3BCE  8E      	    adc  a,(hl)
3BCF  27      	    daa
3BD0  77      	    ld   (hl),a
3BD1  23      	    inc  hl
3BD2  7B      	    ld   a,e
3BD3  8E      	    adc  a,(hl)
3BD4  27      	    daa
3BD5  77      	    ld   (hl),a
3BD6  C9      	    ret

                open_bridge_tiles:
3BD7  F8      	    db $F8, $34, $FE, $24, $F7, $33
                closed_bridge_tiles:
3BDD  F624    	    db $F6, $24, $FC, $24, $F6, $24

                bridge_cells_tbl: ; per-maze bridge spans: 4x [count=$03, 3x 2-byte LE VRAM cell]; used by bridge_select_cells (($8101)&3)
3BE3               db   $03, $2A, $91, $32, $91, $AA, $92  ; maze 0: 3 bridges @ $912A $9132 $92AA
3BEA               db   $03, $2E, $91, $AA, $92, $B2, $92  ; maze 1: 3 bridges @ $912E $92AA $92B2
3BF1               db   $03, $A6, $91, $AE, $92, $32, $91  ; maze 2: 3 bridges @ $91A6 $92AE $9132
3BF8               db   $03, $26, $92, $AE, $92, $BA, $92  ; maze 3: 3 bridges @ $9226 $92AE $92BA
                bridge_update:  ; bridge open/close tile animation, block $80C0-$80C7
3BFF  21C080  	    ld   hl,$80C0
3C02  7E      	    ld   a,(hl)
3C03  A7      	    and  a
3C04  CA863C  	    jp   z,$3C86
3C07  23      	    inc  hl
3C08  7E      	    ld   a,(hl)
3C09  A7      	    and  a
3C0A  C2243C  	    jp   nz,$3C24
3C0D  111C3C  	    ld   de,$3C1C
3C10  010700  	    ld   bc,$0007
3C13  EB      	    ex   de,hl
3C14  EDB0    	    ldir
3C16  3E94    	    ld   a,$94
3C18  3200B8  	    ld   (watchdog),a
3C1B  C9      	    ret
3C1C  010000  	    ld   bc,$0000
3C1F  00      	    nop
3C20  00      	    nop
3C21  00      	    nop
3C22  00      	    nop
3C23  00      	    nop
3C24  23      	    inc  hl
3C25  7E      	    ld   a,(hl)
3C26  FE01    	    cp   $01
3C28  CA4D3C  	    jp   z,$3C4D
3C2B  FE02    	    cp   $02
3C2D  CA783C  	    jp   z,$3C78
3C30  CD923C  	    call bridge_select_cells
3C33  DD4600  	    ld   b,(ix+$00)
3C36  78      	    ld   a,b
3C37  A7      	    and  a
3C38  C8      	    ret  z
3C39  DD23    	    inc  ix
3C3B  11D73B  	    ld   de,open_bridge_tiles
3C3E  CDA93C  	    call bridge_blit
3C41  21C280  	    ld   hl,$80C2
3C44  3601    	    ld   (hl),$01
3C46  23      	    inc  hl
3C47  3600    	    ld   (hl),$00
3C49  23      	    inc  hl
3C4A  3600    	    ld   (hl),$00
3C4C  C9      	    ret
3C4D  23      	    inc  hl
3C4E  34      	    inc  (hl)
3C4F  3E06    	    ld   a,$06
3C51  BE      	    cp   (hl)
3C52  D0      	    ret  nc
3C53  3600    	    ld   (hl),$00
3C55  23      	    inc  hl
3C56  34      	    inc  (hl)
3C57  7E      	    ld   a,(hl)
3C58  FE08    	    cp   $08
3C5A  D8      	    ret  c
3C5B  CD923C  	    call bridge_select_cells
3C5E  DD4600  	    ld   b,(ix+$00)
3C61  78      	    ld   a,b
3C62  A7      	    and  a
3C63  C8      	    ret  z
3C64  DD23    	    inc  ix
3C66  11DD3B  	    ld   de,closed_bridge_tiles
3C69  CDA93C  	    call bridge_blit
3C6C  21C280  	    ld   hl,$80C2
3C6F  3602    	    ld   (hl),$02
3C71  23      	    inc  hl
3C72  3600    	    ld   (hl),$00
3C74  23      	    inc  hl
3C75  3600    	    ld   (hl),$00
3C77  C9      	    ret
3C78  23      	    inc  hl
3C79  34      	    inc  (hl)
3C7A  3E06    	    ld   a,$06
3C7C  BE      	    cp   (hl)
3C7D  D0      	    ret  nc
3C7E  3600    	    ld   (hl),$00
3C80  23      	    inc  hl
3C81  34      	    inc  (hl)
3C82  7E      	    ld   a,(hl)
3C83  FE08    	    cp   $08
3C85  D8      	    ret  c
3C86  21C080  	    ld   hl,$80C0
3C89  3E00    	    ld   a,$00
3C8B  0608    	    ld   b,$08
3C8D  77      	    ld   (hl),a
3C8E  23      	    inc  hl
3C8F  10FC    	    djnz $3C8D
3C91  C9      	    ret
                bridge_select_cells: ; pick per-maze bridge cell set (table $3BE3)
3C92  CDEF48  	    call debug_draw_check
3C95  DD21E33B	    ld   ix,bridge_cells_tbl
3C99  3A0181  	    ld   a,(cur_map)
3C9C  E603    	    and  $03
3C9E  110700  	    ld   de,$0007
3CA1  A7      	    and  a
3CA2  C8      	    ret  z
3CA3  DD19    	    add  ix,de
3CA5  3D      	    dec  a
3CA6  C3A13C  	    jp   $3CA1
                bridge_blit: ; blit open/closed bridge tile blocks to VRAM
3CA9  DD6E00  	    ld   l,(ix+$00)
3CAC  DD6601  	    ld   h,(ix+$01)
3CAF  C5      	    push bc
3CB0  D5      	    push de
3CB1  0602    	    ld   b,$02
3CB3  0E03    	    ld   c,$03
3CB5  CD6013  	    call blit_rect
3CB8  D1      	    pop  de
3CB9  C1      	    pop  bc
3CBA  DD23    	    inc  ix
3CBC  DD23    	    inc  ix
3CBE  10E9    	    djnz $3CA9
3CC0  C9      	    ret
3CC1  FD      	    db   $fd
3CC2  FF      	    rst  $38
3CC3  FD25    	    dec  iyh
3CC5  25      	    dec  h
3CC6  25      	    dec  h
3CC7  25      	    dec  h
3CC8  FD      	    db   $fd
3CC9  FF      	    rst  $38
3CCA  FD      	    db   $fd
3CCB  FEFE    	    cp   TILE_GAP
3CCD  FEFE    	    cp   TILE_GAP
3CCF  FEFD    	    cp   $FD
3CD1  FF      	    rst  $38
3CD2  FD      	    db   $fd
3CD3  FEFE    	    cp   TILE_GAP
3CD5  FEFE    	    cp   TILE_GAP
3CD7  FEFD    	    cp   $FD
3CD9  FF      	    rst  $38
3CDA  FD      	    db   $fd
3CDB  FEFE    	    cp   TILE_GAP
3CDD  FEFE    	    cp   TILE_GAP
3CDF  FEFD    	    cp   $FD
3CE1  FF      	    rst  $38
3CE2  FD      	    db   $fd
3CE3  FEFE    	    cp   TILE_GAP
3CE5  FEFE    	    cp   TILE_GAP
3CE7  FEFD    	    cp   $FD
3CE9  FF      	    rst  $38
3CEA  FD25    	    dec  iyh
3CEC  25      	    dec  h
3CED  25      	    dec  h
3CEE  25      	    dec  h
3CEF  FD      	    db   $fd
3CF0  FF      	    rst  $38
3CF1  FDA691  	    and  (iy-$6f)
3CF4  B6      	    or   (hl)
3CF5  92      	    sub  d
3CF6  00      	    nop
3CF7  90      	    sub  b
3CF8  2691    	    ld   h,$91
3CFA  B6      	    or   (hl)
3CFB  90      	    sub  b
3CFC  00      	    nop
3CFD  90      	    sub  b
3CFE  A6      	    and  (hl)
3CFF  92      	    sub  d
3D00  3692    	    ld   (hl),$92
3D02  00      	    nop
3D03  90      	    sub  b
3D04  2E91    	    ld   l,$91
3D06  B6      	    or   (hl)
3D07  91      	    sub  c
3D08  00      	    nop
3D09  90      	    sub  b
                scripted_move:  ; scripted player move (home-entry), block $80E0-$80E7
3D0A  21E080  	    ld   hl,$80E0
3D0D  7E      	    ld   a,(hl)
3D0E  A7      	    and  a
3D0F  C21E3D  	    jp   nz,$3D1E
3D12  21E080  	    ld   hl,$80E0
3D15  0608    	    ld   b,$08
3D17  3E00    	    ld   a,$00
3D19  77      	    ld   (hl),a
3D1A  23      	    inc  hl
3D1B  10FC    	    djnz $3D19
3D1D  C9      	    ret
3D1E  47      	    ld   b,a
3D1F  23      	    inc  hl
3D20  7E      	    ld   a,(hl)
3D21  A7      	    and  a
3D22  C2453D  	    jp   nz,$3D45
3D25  3601    	    ld   (hl),$01
3D27  23      	    inc  hl
3D28  78      	    ld   a,b
3D29  E60F    	    and  $0F
3D2B  77      	    ld   (hl),a
3D2C  78      	    ld   a,b
3D2D  E6F0    	    and  $F0
3D2F  0F      	    rrca
3D30  0F      	    rrca
3D31  0F      	    rrca
3D32  0F      	    rrca
3D33  23      	    inc  hl
3D34  77      	    ld   (hl),a
3D35  23      	    inc  hl
3D36  3600    	    ld   (hl),$00
3D38  23      	    inc  hl
3D39  3600    	    ld   (hl),$00
3D3B  23      	    inc  hl
3D3C  3600    	    ld   (hl),$00
3D3E  3E93    	    ld   a,$93
3D40  3200B8  	    ld   (watchdog),a
3D43  C9      	    ret
3D44  00      	    nop
3D45  23      	    inc  hl
3D46  7E      	    ld   a,(hl)
3D47  FE01    	    cp   $01
3D49  CA683D  	    jp   z,$3D68
3D4C  FE02    	    cp   $02
3D4E  CAAE3D  	    jp   z,$3DAE
3D51  C3123D  	    jp   $3D12
3D54  00      	    nop
3D55  00      	    nop
3D56  C9      	    ret
3D57  CDF43D  	    call $3DF4
3D5A  C3123D  	    jp   $3D12
3D5D  3E00    	    ld   a,$00
3D5F  322284  	    ld   ($8422),a
3D62  3E01    	    ld   a,$01
3D64  321F84  	    ld   ($841F),a
3D67  C9      	    ret
3D68  23      	    inc  hl
3D69  23      	    inc  hl
3D6A  23      	    inc  hl
3D6B  34      	    inc  (hl)
3D6C  3E03    	    ld   a,$03
3D6E  BE      	    cp   (hl)
3D6F  D0      	    ret  nc
3D70  3600    	    ld   (hl),$00
3D72  23      	    inc  hl
3D73  34      	    inc  (hl)
3D74  7E      	    ld   a,(hl)
3D75  FE01    	    cp   $01
3D77  11CF3C  	    ld   de,$3CCF
3D7A  CAA33D  	    jp   z,$3DA3
3D7D  FE02    	    cp   $02
3D7F  11D63C  	    ld   de,$3CD6
3D82  CAA33D  	    jp   z,$3DA3
3D85  FE03    	    cp   $03
3D87  11DD3C  	    ld   de,$3CDD
3D8A  CAA33D  	    jp   z,$3DA3
3D8D  FE04    	    cp   $04
3D8F  11E43C  	    ld   de,$3CE4
3D92  CAA33D  	    jp   z,$3DA3
3D95  FE0C    	    cp   $0C
3D97  11EB3C  	    ld   de,$3CEB
3D9A  CA573D  	    jp   z,$3D57
3D9D  FE05    	    cp   $05
3D9F  CA5D3D  	    jp   z,$3D5D
3DA2  C9      	    ret
3DA3  3A0684  	    ld   a,(player_x)
3DA6  D608    	    sub  $08
3DA8  320684  	    ld   (player_x),a
3DAB  C3F43D  	    jp   $3DF4
3DAE  23      	    inc  hl
3DAF  23      	    inc  hl
3DB0  23      	    inc  hl
3DB1  34      	    inc  (hl)
3DB2  3E03    	    ld   a,$03
3DB4  BE      	    cp   (hl)
3DB5  D0      	    ret  nc
3DB6  3600    	    ld   (hl),$00
3DB8  23      	    inc  hl
3DB9  34      	    inc  (hl)
3DBA  7E      	    ld   a,(hl)
3DBB  FE01    	    cp   $01
3DBD  11DD3C  	    ld   de,$3CDD
3DC0  CAE93D  	    jp   z,$3DE9
3DC3  FE02    	    cp   $02
3DC5  11D63C  	    ld   de,$3CD6
3DC8  CAE93D  	    jp   z,$3DE9
3DCB  FE03    	    cp   $03
3DCD  11CF3C  	    ld   de,$3CCF
3DD0  CAE93D  	    jp   z,$3DE9
3DD3  FE04    	    cp   $04
3DD5  11C83C  	    ld   de,$3CC8
3DD8  CAE93D  	    jp   z,$3DE9
3DDB  FE0C    	    cp   $0C
3DDD  11C13C  	    ld   de,$3CC1
3DE0  CA573D  	    jp   z,$3D57
3DE3  FE05    	    cp   $05
3DE5  CA5D3D  	    jp   z,$3D5D
3DE8  C9      	    ret
3DE9  3A0684  	    ld   a,(player_x)
3DEC  C608    	    add  a,$08
3DEE  320684  	    ld   (player_x),a
3DF1  C3F43D  	    jp   $3DF4
3DF4  D5      	    push de
3DF5  CD053E  	    call $3E05
3DF8  2B      	    dec  hl
3DF9  2B      	    dec  hl
3DFA  2B      	    dec  hl
3DFB  5E      	    ld   e,(hl)
3DFC  1600    	    ld   d,$00
3DFE  DD19    	    add  ix,de
3E00  D1      	    pop  de
3E01  CD193E  	    call $3E19
3E04  C9      	    ret
3E05  DD21F23C	    ld   ix,$3CF2
3E09  3A0181  	    ld   a,(cur_map)
3E0C  E603    	    and  $03
3E0E  110600  	    ld   de,$0006
3E11  A7      	    and  a
3E12  C8      	    ret  z
3E13  DD19    	    add  ix,de
3E15  3D      	    dec  a
3E16  C3113E  	    jp   $3E11
3E19  E5      	    push hl
3E1A  DD6601  	    ld   h,(ix+$01)
3E1D  DD6E00  	    ld   l,(ix+$00)
3E20  0601    	    ld   b,$01
3E22  0E07    	    ld   c,$07
3E24  CD6013  	    call blit_rect
3E27  E1      	    pop  hl
3E28  C9      	    ret

                food_maze_redraw:   ; repaint maze food from food_state (drops carried 2->0)
3E29  212081  	    ld   hl,food_state
3E2C  DD21C63F	    ld   ix,food_pos_tbl
3E30  FD210E40	    ld   iy,food_gfx_ptr_tbl
3E34  111200  	    ld   de,$0012
3E37  3A0181  	    ld   a,(cur_map)
3E3A  E603    	    and  $03
3E3C  A7      	    and  a
3E3D  CA483E  	    jp   z,$3E48
3E40  DD19    	    add  ix,de
3E42  FD19    	    add  iy,de
3E44  3D      	    dec  a
3E45  C33C3E  	    jp   $3E3C
3E48  0609    	    ld   b,$09
3E4A  7E      	    ld   a,(hl)
3E4B  A7      	    and  a
3E4C  CA563E  	    jp   z,$3E56
3E4F  FE02    	    cp   $02
3E51  C28A3E  	    jp   nz,$3E8A
3E54  3600    	    ld   (hl),$00
3E56  E5      	    push hl
3E57  D5      	    push de
3E58  C5      	    push bc
3E59  DD6E00  	    ld   l,(ix+$00)
3E5C  DD6601  	    ld   h,(ix+$01)
3E5F  FD5E00  	    ld   e,(iy+$00)
3E62  FD5601  	    ld   d,(iy+$01)
3E65  0602    	    ld   b,$02
3E67  0E02    	    ld   c,$02
3E69  E5      	    push hl
3E6A  CD6013  	    call blit_rect
3E6D  E1      	    pop  hl
3E6E  1A      	    ld   a,(de)
3E6F  112000  	    ld   de,$0020
3E72  0602    	    ld   b,$02
3E74  0E02    	    ld   c,$02
3E76  CBD4    	    set  2,h
3E78  CD8413  	    call fill_rect
3E7B  C1      	    pop  bc
3E7C  D1      	    pop  de
3E7D  E1      	    pop  hl
3E7E  23      	    inc  hl
3E7F  DD23    	    inc  ix
3E81  DD23    	    inc  ix
3E83  FD23    	    inc  iy
3E85  FD23    	    inc  iy
3E87  10C1    	    djnz $3E4A
3E89  C9      	    ret
3E8A  E5      	    push hl
3E8B  D5      	    push de
3E8C  C5      	    push bc
3E8D  DD6E00  	    ld   l,(ix+$00)
3E90  DD6601  	    ld   h,(ix+$01)
3E93  112000  	    ld   de,$0020
3E96  3E25    	    ld   a,$25
3E98  0602    	    ld   b,$02
3E9A  0E02    	    ld   c,$02
3E9C  E5      	    push hl
3E9D  CD8413  	    call fill_rect
3EA0  E1      	    pop  hl
3EA1  3E87    	    ld   a,$87
3EA3  112000  	    ld   de,$0020
3EA6  0602    	    ld   b,$02
3EA8  0E02    	    ld   c,$02
3EAA  CBD4    	    set  2,h
3EAC  CD8413  	    call fill_rect
3EAF  C37B3E  	    jp   $3E7B

                food_set_state: ; find food at vram cell (hl), write reg c -> food_state
3EB2  D9      	    exx
3EB3  212081  	    ld   hl,food_state
3EB6  DD21C63F	    ld   ix,food_pos_tbl
3EBA  0609    	    ld   b,$09
3EBC  111200  	    ld   de,$0012
3EBF  3A0181  	    ld   a,(cur_map)
3EC2  E603    	    and  $03
3EC4  A7      	    and  a
3EC5  CACE3E  	    jp   z,$3ECE
3EC8  DD19    	    add  ix,de
3ECA  3D      	    dec  a
3ECB  C3C43E  	    jp   $3EC4
3ECE  D9      	    exx
3ECF  DD7E00  	    ld   a,(ix+$00)
3ED2  3C      	    inc  a
3ED3  BD      	    cp   l
3ED4  CADD3E  	    jp   z,$3EDD
3ED7  C620    	    add  a,$20
3ED9  BD      	    cp   l
3EDA  C2E83E  	    jp   nz,$3EE8
3EDD  DD7E01  	    ld   a,(ix+$01)
3EE0  BC      	    cp   h
3EE1  C2E83E  	    jp   nz,$3EE8
3EE4  79      	    ld   a,c
3EE5  D9      	    exx
3EE6  77      	    ld   (hl),a
3EE7  D9      	    exx
3EE8  D9      	    exx
3EE9  23      	    inc  hl
3EEA  DD23    	    inc  ix
3EEC  DD23    	    inc  ix
3EEE  10DE    	    djnz $3ECE
3EF0  D9      	    exx
3EF1  C9      	    ret

                food_return_add:    ; append carried-home piece to food_returned, +500 pts
3EF2  214081  	    ld   hl,food_returned
3EF5  010000  	    ld   bc,$0000
3EF8  7E      	    ld   a,(hl)
3EF9  A7      	    and  a
3EFA  CA043F  	    jp   z,$3F04
3EFD  23      	    inc  hl
3EFE  23      	    inc  hl
3EFF  0C      	    inc  c
3F00  0C      	    inc  c
3F01  C3F83E  	    jp   $3EF8
3F04  72      	    ld   (hl),d
3F05  23      	    inc  hl
3F06  73      	    ld   (hl),e
3F07  DD21B43F	    ld   ix,food_home_pos_tbl
3F0B  DD09    	    add  ix,bc
3F0D  DD6E00  	    ld   l,(ix+$00)
3F10  DD6601  	    ld   h,(ix+$01)
3F13  72      	    ld   (hl),d
3F14  CBD4    	    set  2,h
3F16  73      	    ld   (hl),e
3F17  214080  	    ld   hl,score_add_trig
3F1A  11313F  	    ld   de,$3F31
3F1D  0603    	    ld   b,$03
3F1F  3601    	    ld   (hl),$01
3F21  23      	    inc  hl
3F22  AF      	    xor  a
3F23  1A      	    ld   a,(de)
3F24  8E      	    adc  a,(hl)
3F25  27      	    daa
3F26  77      	    ld   (hl),a
3F27  23      	    inc  hl
3F28  13      	    inc  de
3F29  10F8    	    djnz $3F23
3F2B  3E84    	    ld   a,$84
3F2D  3200B8  	    ld   (watchdog),a
3F30  C9      	    ret
3F31  00      	    nop
3F32  05      	    dec  b
3F33  00      	    nop

                food_log_redraw_all:            ; maybe? sets a to 9 then draws
3F34  3E09    	    ld   a,$09
                food_log_redraw:    ; repaint all food_returned entries to VRAM
3F36  214081  	    ld   hl,food_returned
3F39  010000  	    ld   bc,$0000
3F3C  08      	    ex   af,af' ; '
3F3D  7E      	    ld   a,(hl)
3F3E  A7      	    and  a
3F3F  C44C3F  	    call nz,$3F4C
3F42  23      	    inc  hl
3F43  23      	    inc  hl
3F44  0C      	    inc  c
3F45  0C      	    inc  c
3F46  08      	    ex   af,af' ; '
3F47  3D      	    dec  a
3F48  C23C3F  	    jp   nz,$3F3C
3F4B  C9      	    ret


3F4C  E5      	    push hl
3F4D  56      	    ld   d,(hl)
3F4E  23      	    inc  hl
3F4F  5E      	    ld   e,(hl)
3F50  DD21B43F	    ld   ix,food_home_pos_tbl
3F54  DD09    	    add  ix,bc
3F56  DD6E00  	    ld   l,(ix+$00)
3F59  DD6601  	    ld   h,(ix+$01)
3F5C  72      	    ld   (hl),d
3F5D  CBD4    	    set  2,h
3F5F  73      	    ld   (hl),e
3F60  E1      	    pop  hl
3F61  C9      	    ret

                food_maze_erase:    ; blank carried (state 2) food cells (tile $25/$87)
3F62  212081  	    ld   hl,food_state
3F65  DD21C63F	    ld   ix,food_pos_tbl
3F69  111200  	    ld   de,$0012
3F6C  3A0181  	    ld   a,(cur_map)
3F6F  E603    	    and  $03
3F71  A7      	    and  a
3F72  CA7B3F  	    jp   z,$3F7B
3F75  DD19    	    add  ix,de
3F77  3D      	    dec  a
3F78  C3713F  	    jp   $3F71
3F7B  0609    	    ld   b,$09
3F7D  7E      	    ld   a,(hl)
3F7E  FE02    	    cp   $02
3F80  CA8B3F  	    jp   z,$3F8B
3F83  23      	    inc  hl
3F84  DD23    	    inc  ix
3F86  DD23    	    inc  ix
3F88  10F3    	    djnz $3F7D
3F8A  C9      	    ret
3F8B  C5      	    push bc
3F8C  E5      	    push hl
3F8D  DD6E00  	    ld   l,(ix+$00)
3F90  DD6601  	    ld   h,(ix+$01)
3F93  112000  	    ld   de,$0020
3F96  3E25    	    ld   a,$25
3F98  0602    	    ld   b,$02
3F9A  0E02    	    ld   c,$02
3F9C  E5      	    push hl
3F9D  CD8413  	    call fill_rect
3FA0  E1      	    pop  hl
3FA1  3E87    	    ld   a,$87
3FA3  112000  	    ld   de,$0020
3FA6  0602    	    ld   b,$02
3FA8  0E02    	    ld   c,$02
3FAA  CBD4    	    set  2,h
3FAC  CD8413  	    call fill_rect
3FAF  E1      	    pop  hl
3FB0  C1      	    pop  bc
3FB1  C3833F  	    jp   $3F83

                food_home_pos_tbl: ; 9x 2-byte LE VRAM cells = returned-food 'home' HUD slots (3x3)
3FB4               db   $FD, $91   ; slot 0: VRAM $91FD
3FB6               db   $BD, $91   ; slot 1: VRAM $91BD
3FB8               db   $DD, $91   ; slot 2: VRAM $91DD
3FBA               db   $FC, $91   ; slot 3: VRAM $91FC
3FBC               db   $BC, $91   ; slot 4: VRAM $91BC
3FBE               db   $DC, $91   ; slot 5: VRAM $91DC
3FC0               db   $FB, $91   ; slot 6: VRAM $91FB
3FC2               db   $BB, $91   ; slot 7: VRAM $91BB
3FC4               db   $DB, $91   ; slot 8: VRAM $91DB

                food_pos_tbl:   ; per-maze food vram-cell pointer table (stride $12, 9x2)
3FC6               db   $C4, $90, $DC, $90, $C8, $91, $48, $92, $50, $92, $D8, $92, $44, $93, $50, $93, $5C, $93  ; maze 0: $90C4 $90DC $91C8 $9248 $9250 $92D8 $9344 $9350 $935C
3FD8               db   $C4, $90, $CC, $90, $DC, $90, $C8, $91, $D4, $91, $44, $92, $D8, $92, $44, $93, $5C, $93  ; maze 1: $90C4 $90CC $90DC $91C8 $91D4 $9244 $92D8 $9344 $935C
3FEA               db   $C4, $90, $CC, $90, $D0, $90, $DC, $90, $CC, $91, $DC, $92, $48, $93, $54, $93, $58, $93  ; maze 2: $90C4 $90CC $90D0 $90DC $91CC $92DC $9348 $9354 $9358
3FFC               db   $C4, $90, $CC, $90  ; maze 3: $90C4 $90CC ...
                ;;; ============ start of suprmous.x5 =============
4000               db   $D0, $90, $44, $91, $D0, $91, $44, $93, $48, $93, $4C, $93, $54, $93  ; maze 3 (cont.): $90D0 $9144 $91D0 $9344 $9348 $934C $9354
                food_gfx_ptr_tbl: ; per-maze 9x 2-byte LE ptr into food_gfx_data (stride $12)
400E               db   $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40  ; maze 0: 9 food-graphic pointers
4020               db   $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40  ; maze 1: 9 food-graphic pointers
4032               db   $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40  ; maze 2: 9 food-graphic pointers
4044               db   $67, $40, $6C, $40, $71, $40, $5D, $40, $62, $40, $67, $40, $6C, $40, $71, $40, $5D, $40  ; maze 3: 9 food-graphic pointers
                ; -- padding --
4056               db   $00, $00, $00, $00, $00, $00, $00
                food_gfx_data: ; 5 food types x [2x2 tile block ($DC-$EF) + color $87]
405D               db   $E0, $E1, $E2, $E3, $87                             ; food type 0: tiles $E0-$E3, color $87
4062               db   $E4, $E5, $E6, $E7, $87                             ; food type 1: tiles $E4-$E7, color $87
4067               db   $E8, $E9, $EA, $EB, $87                             ; food type 2: tiles $E8-$EB, color $87
406C               db   $EC, $ED, $EE, $EF, $87                             ; food type 3: tiles $EC-$EF, color $87
4071               db   $DC, $DD, $DE, $DF, $87                             ; food type 4: tiles $DC-$DF, color $87
                ; -- padding --
4076               db   $00, $00, $00, $00, $00, $00, $00

                platform_update:    ; sliding platform (slot 2), block $80A0-$80A8
407D  3AA080  	    ld   a,(carrying_1)
4080  A7      	    and  a
4081  C2A940  	    jp   nz,$40A9
4084  219C80  	    ld   hl,$809C
4087  3E00    	    ld   a,$00
4089  060F    	    ld   b,$0F
408B  77      	    ld   (hl),a
408C  23      	    inc  hl
408D  10FC    	    djnz $408B
408F  C39240  	    jp   $4092
4092  210880  	    ld   hl,$8008
4095  3AA580  	    ld   a,(carry_x)
4098  77      	    ld   (hl),a
4099  23      	    inc  hl
409A  3AA680  	    ld   a,(carry_tile)
409D  77      	    ld   (hl),a
409E  23      	    inc  hl
409F  3AA780  	    ld   a,($80A7)
40A2  77      	    ld   (hl),a
40A3  23      	    inc  hl
40A4  3AA880  	    ld   a,(carry_y)
40A7  77      	    ld   (hl),a
40A8  C9      	    ret
40A9  3AA180  	    ld   a,(carrying_2)
40AC  A7      	    and  a
40AD  C22041  	    jp   nz,$4120
40B0  11A180  	    ld   de,carrying_2
40B3  211441  	    ld   hl,$4114
40B6  010900  	    ld   bc,$0009
40B9  EDB0    	    ldir
40BB  3A0684  	    ld   a,(player_x)
40BE  C600    	    add  a,$00
40C0  32A580  	    ld   (carry_x),a
40C3  3A0784  	    ld   a,(player_y)
40C6  C6F0    	    add  a,$F0  ; y - 16 (on head!)
40C8  32A880  	    ld   (carry_y),a
40CB  3A9F80  	    ld   a,($809F)
40CE  0E00    	    ld   c,$00
40D0  FE7A    	    cp   $7A
40D2  CAF440  	    jp   z,$40F4
40D5  0C      	    inc  c
40D6  0C      	    inc  c
40D7  FE7E    	    cp   $7E
40D9  CAF440  	    jp   z,$40F4
40DC  0C      	    inc  c
40DD  0C      	    inc  c
40DE  FE7C    	    cp   $7C
40E0  CAF440  	    jp   z,$40F4
40E3  0C      	    inc  c
40E4  0C      	    inc  c
40E5  FE7D    	    cp   $7D
40E7  CAF440  	    jp   z,$40F4
40EA  0C      	    inc  c
40EB  0C      	    inc  c
40EC  FE7B    	    cp   $7B
40EE  CAF440  	    jp   z,$40F4
40F1  C38440  	    jp   $4084
40F4  210641  	    ld   hl,pickup_data
40F7  0600    	    ld   b,$00
40F9  09      	    add  hl,bc
40FA  7E      	    ld   a,(hl)
40FB  32A680  	    ld   (carry_tile),a
40FE  23      	    inc  hl
40FF  7E      	    ld   a,(hl)
4100  32A780  	    ld   ($80A7),a
4103  C39240  	    jp   $4092

                pickup_data:
4106                db $32, $07, $36, $07, $34, $07, $35, $07
410E                db $33, $07, $00, $00, $00, $00, $01, $01
4116                db $00, $00, $00, $00, $00, $00, $00, $00
411E                db $00, $00

4120  3AA280  	    ld   a,(carrying_3)
4123  FE01    	    cp   $01
4125  CA3541  	    jp   z,$4135
4128  FE02    	    cp   $02
412A  CA4841  	    jp   z,$4148
412D  FE03    	    cp   $03
412F  CA6741  	    jp   z,food_return_home
4132  C38440  	    jp   $4084
4135  3A0684  	    ld   a,(player_x)
4138  C600    	    add  a,$00
413A  32A580  	    ld   (carry_x),a
413D  3A0784  	    ld   a,(player_y)
4140  C6F0    	    add  a,$F0
4142  32A880  	    ld   (carry_y),a
4145  C39240  	    jp   $4092
4148  3AA380  	    ld   a,($80A3)
414B  3C      	    inc  a
414C  32A380  	    ld   ($80A3),a
414F  FE0A    	    cp   $0A
4151  DA5C41  	    jp   c,$415C
4154  3E03    	    ld   a,$03
4156  32A280  	    ld   (carrying_3),a
4159  C39240  	    jp   $4092
415C  3AA880  	    ld   a,(carry_y)
415F  C602    	    add  a,$02
4161  32A880  	    ld   (carry_y),a
4164  C39240  	    jp   $4092
                food_return_home:   ; home-entry: log carried piece + food_state 2->1
4167  219E80  	    ld   hl,$809E
416A  5E      	    ld   e,(hl)
416B  23      	    inc  hl
416C  56      	    ld   d,(hl)
416D  CDF23E  	    call food_return_add
4170  2A9C80  	    ld   hl,($809C)
4173  0E01    	    ld   c,$01
4175  CDB23E  	    call food_set_state
4178  C38440  	    jp   $4084


417B  3E00    	    ld   a,$00
417D  328081  	    ld   ($8180),a
4180  3A8081  	    ld   a,($8180)
4183  A7      	    and  a
4184  C29B41  	    jp   nz,$419B
4187  3E39    	    ld   a,$39
4189  326590  	    ld   ($9065),a
418C  3E85    	    ld   a,$85
418E  326594  	    ld   ($9465),a
4191  3E3A    	    ld   a,$3A
4193  328590  	    ld   ($9085),a
4196  3E85    	    ld   a,$85
4198  328594  	    ld   ($9485),a
419B  3E00    	    ld   a,$00
419D  328181  	    ld   ($8181),a
41A0  3A8181  	    ld   a,($8181)
41A3  A7      	    and  a
41A4  C2BB41  	    jp   nz,$41BB
41A7  3E39    	    ld   a,$39
41A9  328593  	    ld   ($9385),a
41AC  3E85    	    ld   a,$85
41AE  328597  	    ld   ($9785),a
41B1  3E3A    	    ld   a,$3A
41B3  32A593  	    ld   ($93A5),a
41B6  3E85    	    ld   a,$85
41B8  32A597  	    ld   ($97A5),a
41BB  C9      	    ret
                boulder_update:  ; boulder: spawn-on-touch / fall / despawn (slot 7)
41BC  CDEF48  	    call debug_draw_check
41BF  3AC185  	    ld   a,(boulder_req)
41C2  A7      	    and  a
41C3  C2D341  	    jp   nz,$41D3
41C6  32C085  	    ld   (boulder),a
41C9  21C485  	    ld   hl,$85C4
41CC  060C    	    ld   b,$0C
41CE  77      	    ld   (hl),a
41CF  23      	    inc  hl
41D0  10FC    	    djnz $41CE
41D2  C9      	    ret

                ;;
41D3  3AC485  	    ld   a,($85C4)
41D6  A7      	    and  a
41D7  C21742  	    jp   nz,$4217
41DA  21C185  	    ld   hl,boulder_req
41DD  11C485  	    ld   de,$85C4
41E0  010300  	    ld   bc,$0003
41E3  EDB0    	    ldir
41E5  3E95    	    ld   a,$95
41E7  3200B8  	    ld   (watchdog),a
41EA  3E01    	    ld   a,$01
41EC  32C085  	    ld   (boulder),a
41EF  3AC585  	    ld   a,(boulder_x)
41F2  FE80    	    cp   $80
41F4  DA0742  	    jp   c,$4207
41F7  3E25    	    ld   a,$25
41F9  326590  	    ld   ($9065),a
41FC  328590  	    ld   ($9085),a
41FF  3E01    	    ld   a,$01
4201  328081  	    ld   ($8180),a
4204  C33242  	    jp   $4232
4207  3E25    	    ld   a,$25
4209  328593  	    ld   ($9385),a
420C  32A593  	    ld   ($93A5),a
420F  3E01    	    ld   a,$01
4211  328181  	    ld   ($8181),a
4214  C33242  	    jp   $4232
4217  3AC685  	    ld   a,(boulder_y)
421A  FEE0    	    cp   $E0
421C  D22742  	    jp   nc,$4227
421F  C602    	    add  a,$02
4221  32C685  	    ld   (boulder_y),a
4224  C33242  	    jp   $4232


4227  21C085  	    ld   hl,boulder
422A  0610    	    ld   b,$10
422C  3E00    	    ld   a,$00
422E  77      	    ld   (hl),a
422F  23      	    inc  hl
4230  10FC    	    djnz $422E
4232  211C80  	    ld   hl,$801C
4235  3AC585  	    ld   a,(boulder_x)
4238  77      	    ld   (hl),a
4239  23      	    inc  hl
423A  3E37    	    ld   a,$37
423C  77      	    ld   (hl),a
423D  23      	    inc  hl
423E  3E05    	    ld   a,$05
4240  77      	    ld   (hl),a
4241  23      	    inc  hl
4242  3AC685  	    ld   a,(boulder_y)
4245  77      	    ld   (hl),a
4246  C9      	    ret


                gamble_update: ; bonus/score display state machine ($8480)
4247  CDEF48  	    call debug_draw_check
424A  217984  	    ld   hl,$8479
424D  7E      	    ld   a,(hl)
424E  A7      	    and  a
424F  C25D42  	    jp   nz,$425D
4252  3601    	    ld   (hl),$01
4254  2B      	    dec  hl
4255  3E03    	    ld   a,$03
4257  77      	    ld   (hl),a
4258  3E00    	    ld   a,$00
425A  327484  	    ld   (gamble_credit),a
425D  3A8084  	    ld   a,(gamble_state)
4260  47      	    ld   b,a
4261  A7      	    and  a
4262  CA1B44  	    jp   z,$441B
4265  E680    	    and  $80
4267  C20643  	    jp   nz,$4306
426A  78      	    ld   a,b
426B  E640    	    and  $40
426D  C2D142  	    jp   nz,$42D1
4270  78      	    ld   a,b
4271  E620    	    and  $20
4273  CA2B44  	    jp   z,$442B
4276  3A00A0  	    ld   a,(hw_in_0)
4279  E610    	    and  $10
427B  CA4344  	    jp   z,$4443
427E  3A3080  	    ld   a,(is_playing)
4281  A7      	    and  a
4282  CA4344  	    jp   z,$4443
4285  3EE0    	    ld   a,$E0
4287  3200B8  	    ld   (watchdog),a
428A  218384  	    ld   hl,gamble_reel1
428D  7E      	    ld   a,(hl)
428E  23      	    inc  hl
428F  BE      	    cp   (hl)
4290  2039    	    jr   nz,$42CB
4292  7E      	    ld   a,(hl)
4293  23      	    inc  hl
4294  BE      	    cp   (hl)
4295  2805    	    jr   z,$429C
4297  CB27    	    sla  a
4299  3C      	    inc  a
429A  1802    	    jr   $429E
429C  CB27    	    sla  a
429E  A7      	    and  a
429F  C2A942  	    jp   nz,$42A9
42A2  F5      	    push af
42A3  3E01    	    ld   a,$01
42A5  327484  	    ld   (gamble_credit),a
42A8  F1      	    pop  af
42A9  328984  	    ld   (gamble_outcome),a
42AC  21FE44  	    ld   hl,gamble_score_tbl
42AF  47      	    ld   b,a
42B0  CB27    	    sla  a
42B2  80      	    add  a,b
42B3  85      	    add  a,l
42B4  6F      	    ld   l,a
42B5  3001    	    jr   nc,$42B8
42B7  24      	    inc  h
42B8  114180  	    ld   de,score_add
42BB  3E01    	    ld   a,$01
42BD  324080  	    ld   (score_add_trig),a
42C0  010300  	    ld   bc,$0003
42C3  EDB0    	    ldir
42C5  3E80    	    ld   a,$80
42C7  328084  	    ld   (gamble_state),a
42CA  C9      	    ret
42CB  3E40    	    ld   a,$40
42CD  328084  	    ld   (gamble_state),a
42D0  C9      	    ret
42D1  3A8084  	    ld   a,(gamble_state)
42D4  E6BF    	    and  $BF
42D6  200D    	    jr   nz,$42E5
42D8  3C      	    inc  a
42D9  F640    	    or   $40
42DB  328084  	    ld   (gamble_state),a
42DE  21B400  	    ld   hl,$00B4
42E1  228184  	    ld   ($8481),hl
42E4  C9      	    ret
42E5  2A8184  	    ld   hl,($8481)
42E8  2B      	    dec  hl
42E9  228184  	    ld   ($8481),hl
42EC  7C      	    ld   a,h
42ED  B5      	    or   l
42EE  C0      	    ret  nz
42EF  217884  	    ld   hl,$8478
42F2  7E      	    ld   a,(hl)
42F3  3D      	    dec  a
42F4  CAFD42  	    jp   z,$42FD
42F7  77      	    ld   (hl),a
42F8  AF      	    xor  a
42F9  328084  	    ld   (gamble_state),a
42FC  C9      	    ret
42FD  77      	    ld   (hl),a
42FE  23      	    inc  hl
42FF  77      	    ld   (hl),a
4300  3E01    	    ld   a,$01
4302  323380  	    ld   (req_death),a
4305  C9      	    ret

                ;;
4306  3A8084  	    ld   a,(gamble_state)
4309  E67F    	    and  $7F
430B  FE03    	    cp   $03
430D  D2E743  	    jp   nc,$43E7
4310  FE02    	    cp   $02
4312  D22E43  	    jp   nc,gamble_award_credit
4315  3C      	    inc  a
4316  F680    	    or   $80
4318  328084  	    ld   (gamble_state),a
431B  3A7484  	    ld   a,(gamble_credit)
431E  A7      	    and  a
431F  CA2843  	    jp   z,$4328
4322  3E9A    	    ld   a,$9A
4324  3200B8  	    ld   (watchdog),a
4327  C9      	    ret
4328  3E91    	    ld   a,$91
432A  3200B8  	    ld   (watchdog),a
432D  C9      	    ret

                ;;
                gamble_award_credit: ; special bonus: credits+=1 (max 9) + draw 'CREDIT PLUS 1'
432E  3C      	    inc  a
432F  F680    	    or   $80
4331  328084  	    ld   (gamble_state),a
4334  3A8984  	    ld   a,(gamble_outcome)
4337  CB27    	    sla  a
4339  211645  	    ld   hl,gamble_prize_pos
433C  85      	    add  a,l
433D  6F      	    ld   l,a
433E  7C      	    ld   a,h
433F  CE00    	    adc  a,$00
4341  67      	    ld   h,a
4342  7E      	    ld   a,(hl)
4343  328A84  	    ld   ($848A),a
4346  23      	    inc  hl
4347  7E      	    ld   a,(hl)
4348  328B84  	    ld   ($848B),a
434B  3A7484  	    ld   a,(gamble_credit)
434E  A7      	    and  a
434F  CAE043  	    jp   z,$43E0
4352  3A3080  	    ld   a,(is_playing)
4355  A7      	    and  a
4356  CA6C43  	    jp   z,$436C
4359  3A2380  	    ld   a,(credits)
435C  FE09    	    cp   $09
435E  D2BA43  	    jp   nc,$43BA
4361  C601    	    add  a,$01
4363  27      	    daa
4364  322380  	    ld   (credits),a
4367  0601    	    ld   b,$01
4369  CDBC07  	    call $07BC
436C  21EC92  	    ld   hl,$92EC
436F  11E0FF  	    ld   de,$FFE0
4372  060F    	    ld   b,$0F
4374  CDAE43  	    call gamble_draw_blank
4377  21ED92  	    ld   hl,$92ED
437A  11C243  	    ld   de,str_special_bonus
437D  060F    	    ld   b,$0F
437F  CD9C43  	    call gamble_draw_text
4382  21EE92  	    ld   hl,$92EE
4385  060F    	    ld   b,$0F
4387  CD9C43  	    call gamble_draw_text
438A  21EF92  	    ld   hl,$92EF
438D  11E0FF  	    ld   de,$FFE0
4390  060F    	    ld   b,$0F
4392  CDAE43  	    call gamble_draw_blank
4395  21C800  	    ld   hl,$00C8
4398  228184  	    ld   ($8481),hl
439B  C9      	    ret
                gamble_draw_text: ; draw a text column (de=str) + color to VRAM
439C  1A      	    ld   a,(de)
439D  77      	    ld   (hl),a
439E  CBD4    	    set  2,h
43A0  3680    	    ld   (hl),$80
43A2  CB94    	    res  2,h
43A4  C5      	    push bc
43A5  01E0FF  	    ld   bc,$FFE0
43A8  09      	    add  hl,bc
43A9  C1      	    pop  bc
43AA  13      	    inc  de
43AB  10EF    	    djnz $439C
43AD  C9      	    ret
                gamble_draw_blank: ; draw a blank/spacer column + color to VRAM
43AE  3624    	    ld   (hl),$24
43B0  CBD4    	    set  2,h
43B2  3680    	    ld   (hl),$80
43B4  CB94    	    res  2,h
43B6  19      	    add  hl,de
43B7  10F5    	    djnz $43AE
43B9  C9      	    ret
43BA  3E09    	    ld   a,$09
43BC  322380  	    ld   (credits),a
43BF  C36743  	    jp   $4367
                str_special_bonus: ; 'SPECIAL BONUS  CREDIT PLUS 1' (+$21 marker)
43C2               db   $24, $1C, $19, $0E, $0C, $12, $0A, $15              ; | SPECIAL|
43CA               db   $24, $0B, $18, $17, $1E, $1C, $24, $24              ; | BONUS  |
43D2               db   $0C, $1B, $0E, $0D, $12, $1D, $24, $19              ; |CREDIT P|
43DA               db   $15, $1E, $1C, $24, $01, $24, $21                   ; |LUS 1 X|
43E1  F0      	    ret  p
43E2  00      	    nop
43E3  228184  	    ld   ($8481),hl
43E6  C9      	    ret
43E7  2A8184  	    ld   hl,($8481)
43EA  2B      	    dec  hl
43EB  228184  	    ld   ($8481),hl
43EE  7D      	    ld   a,l
43EF  B4      	    or   h
43F0  2012    	    jr   nz,$4404
43F2  3E01    	    ld   a,$01
43F4  323280  	    ld   (req_level_done),a
43F7  3EA0    	    ld   a,$A0
43F9  3200B8  	    ld   (watchdog),a
43FC  AF      	    xor  a
43FD  217884  	    ld   hl,$8478
4400  77      	    ld   (hl),a
4401  23      	    inc  hl
4402  77      	    ld   (hl),a
4403  C9      	    ret
4404  7D      	    ld   a,l
4405  E603    	    and  $03
4407  C0      	    ret  nz
4408  2A8A84  	    ld   hl,($848A)
440B  112000  	    ld   de,$0020
440E  0604    	    ld   b,$04
4410  7E      	    ld   a,(hl)
4411  3C      	    inc  a
4412  E607    	    and  $07
4414  F684    	    or   $84
4416  77      	    ld   (hl),a
4417  19      	    add  hl,de
4418  10F6    	    djnz $4410
441A  C9      	    ret
441B  3C      	    inc  a
441C  328084  	    ld   (gamble_state),a
441F  3EE0    	    ld   a,$E0
4421  3200B8  	    ld   (watchdog),a
4424  219001  	    ld   hl,$0190
4427  228184  	    ld   ($8481),hl
442A  C9      	    ret
442B  3A8084  	    ld   a,(gamble_state)
442E  3C      	    inc  a
442F  328084  	    ld   (gamble_state),a
4432  FE04    	    cp   $04
4434  2007    	    jr   nz,$443D
4436  CD5344  	    call gamble_spin_reels
4439  3E20    	    ld   a,$20
443B  18F2    	    jr   $442F
443D  3ECA    	    ld   a,$CA
443F  3200B8  	    ld   (watchdog),a
4442  C9      	    ret
4443  2A8184  	    ld   hl,($8481)
4446  2B      	    dec  hl
4447  228184  	    ld   ($8481),hl
444A  7C      	    ld   a,h
444B  B5      	    or   l
444C  CA8542  	    jp   z,$4285
444F  7D      	    ld   a,l
4450  E607    	    and  $07
4452  C0      	    ret  nz
                gamble_spin_reels: ; advance the 3 reels one step from their strips + redraw
4453  118384  	    ld   de,gamble_reel1
4456  212645  	    ld   hl,gamble_reel1_strip
4459  3A8684  	    ld   a,(gamble_pos1)
445C  CDA744  	    call gamble_reel_step
445F  FE11    	    cp   $11
4461  2001    	    jr   nz,$4464
4463  AF      	    xor  a
4464  13      	    inc  de
4465  328684  	    ld   (gamble_pos1),a
4468  213745  	    ld   hl,gamble_reel2_strip
446B  3A8784  	    ld   a,(gamble_pos2)
446E  CDA744  	    call gamble_reel_step
4471  FE10    	    cp   $10
4473  2001    	    jr   nz,$4476
4475  AF      	    xor  a
4476  13      	    inc  de
4477  328784  	    ld   (gamble_pos2),a
447A  214745  	    ld   hl,gamble_reel3_strip
447D  3A8884  	    ld   a,(gamble_pos3)
4480  CDA744  	    call gamble_reel_step
4483  FE0F    	    cp   $0F
4485  2001    	    jr   nz,$4488
4487  AF      	    xor  a
4488  328884  	    ld   (gamble_pos3),a
448B  116892  	    ld   de,$9268
448E  3A8384  	    ld   a,(gamble_reel1)
4491  CDB344  	    call gamble_reel_draw
4494  11E891  	    ld   de,$91E8
4497  3A8484  	    ld   a,(gamble_reel2)
449A  CDB344  	    call gamble_reel_draw
449D  116891  	    ld   de,$9168
44A0  3A8584  	    ld   a,(gamble_reel3)
44A3  CDB344  	    call gamble_reel_draw
44A6  C9      	    ret
                gamble_reel_step: ; reel += strip[pos]; wrap pos; store symbol -> (de)
44A7  F5      	    push af
44A8  85      	    add  a,l
44A9  6F      	    ld   l,a
44AA  7C      	    ld   a,h
44AB  CE00    	    adc  a,$00
44AD  67      	    ld   h,a
44AE  7E      	    ld   a,(hl)
44AF  12      	    ld   (de),a
44B0  F1      	    pop  af
44B1  3C      	    inc  a
44B2  C9      	    ret
                gamble_reel_draw: ; draw one reel symbol to VRAM (de)
44B3  FE03    	    cp   $03
44B5  2006    	    jr   nz,$44BD
44B7  3E92    	    ld   a,$92
44B9  0E86    	    ld   c,$86
44BB  1818    	    jr   $44D5
44BD  FE02    	    cp   $02
44BF  2006    	    jr   nz,$44C7
44C1  3E48    	    ld   a,$48
44C3  0E87    	    ld   c,$87
44C5  180E    	    jr   $44D5
44C7  FE01    	    cp   $01
44C9  2006    	    jr   nz,$44D1
44CB  3E89    	    ld   a,$89
44CD  0E86    	    ld   c,$86
44CF  1804    	    jr   $44D5
44D1  3E80    	    ld   a,$80
44D3  0E84    	    ld   c,$84
44D5  D5      	    push de
44D6  F5      	    push af
44D7  3E04    	    ld   a,$04
44D9  82      	    add  a,d
44DA  67      	    ld   h,a
44DB  6B      	    ld   l,e
44DC  F1      	    pop  af
44DD  D1      	    pop  de
44DE  0603    	    ld   b,$03
44E0  C5      	    push bc
44E1  D5      	    push de
44E2  0603    	    ld   b,$03
44E4  12      	    ld   (de),a
44E5  3C      	    inc  a
44E6  13      	    inc  de
44E7  71      	    ld   (hl),c
44E8  23      	    inc  hl
44E9  10F9    	    djnz $44E4
44EB  D1      	    pop  de
44EC  F5      	    push af
44ED  7B      	    ld   a,e
44EE  C620    	    add  a,$20
44F0  5F      	    ld   e,a
44F1  7A      	    ld   a,d
44F2  CE00    	    adc  a,$00
44F4  57      	    ld   d,a
44F5  C604    	    add  a,$04
44F7  67      	    ld   h,a
44F8  6B      	    ld   l,e
44F9  F1      	    pop  af
44FA  C1      	    pop  bc
44FB  10E3    	    djnz $44E0
44FD  C9      	    ret
                gamble_score_tbl: ; 8 outcomes x 3-byte BCD score bonus (index = gamble_outcome)
44FE               db   $00, $15, $00, $00, $08, $00, $00, $10
4506               db   $00, $00, $05, $00, $00, $08, $00, $00
450E               db   $04, $00, $00, $06, $00, $00, $02, $00
                gamble_prize_pos: ; 8 outcomes x 2-byte LE VRAM pos for the win display
4516               db   $31, $96, $35, $96, $39, $96, $3D, $96
451E               db   $51, $94, $55, $94, $59, $94, $5D, $94
                gamble_reel1_strip: ; reel 1 symbol strip (17 steps, values 0-3)
4526               db   $01, $00, $01, $02, $03, $02, $01, $03
452E               db   $01, $03, $02, $01, $03, $02, $00, $01
4536               db   $02
                gamble_reel2_strip: ; reel 2 symbol strip (16 steps)
4537               db   $01, $02, $03, $02, $01, $03, $02, $01
453F               db   $03, $02, $01, $03, $01, $02, $00, $02
                gamble_reel3_strip: ; reel 3 symbol strip (15 steps)
4547               db   $02, $00, $01, $03, $03, $02, $01, $03
454F               db   $02, $01, $03, $02, $03, $01, $02
                gamble_tbl_pad: ; trailing bytes ($21,$60,$80)
4556               db   $21, $60, $80
4559  7E      	    ld   a,(hl)
455A  A7      	    and  a
455B  C26D45  	    jp   nz,$456D
455E  23      	    inc  hl
455F  77      	    ld   (hl),a
4560  23      	    inc  hl
4561  77      	    ld   (hl),a
4562  3E01    	    ld   a,$01
4564  326080  	    ld   ($8060),a
4567  3ED1    	    ld   a,$D1
4569  3200B8  	    ld   (watchdog),a
456C  C9      	    ret
456D  23      	    inc  hl
456E  34      	    inc  (hl)
456F  7E      	    ld   a,(hl)
4570  FE06    	    cp   $06
4572  C0      	    ret  nz
4573  3600    	    ld   (hl),$00
4575  23      	    inc  hl
4576  7E      	    ld   a,(hl)
4577  34      	    inc  (hl)
4578  FE24    	    cp   $24
457A  D29345  	    jp   nc,$4593
457D  07      	    rlca
457E  07      	    rlca
457F  4F      	    ld   c,a
4580  0600    	    ld   b,$00
4582  210446  	    ld   hl,lucky_mouse_pic
4585  09      	    add  hl,bc
4586  5E      	    ld   e,(hl)
4587  23      	    inc  hl
4588  56      	    ld   d,(hl)
4589  23      	    inc  hl
458A  46      	    ld   b,(hl)
458B  23      	    inc  hl
458C  4E      	    ld   c,(hl)
458D  EB      	    ex   de,hl
458E  70      	    ld   (hl),b
458F  CBD4    	    set  2,h
4591  71      	    ld   (hl),c
4592  C9      	    ret

                ;;; win some points
4593  FE2D    	    cp   $2D
4595  C2D945  	    jp   nz,$45D9
4598  21F592  	    ld   hl,$92F5
459B  11C945  	    ld   de,str_lucky_mouse
459E  0610    	    ld   b,$10
45A0  0E86    	    ld   c,$86
45A2  1A      	    ld   a,(de)
45A3  77      	    ld   (hl),a
45A4  CBD4    	    set  2,h
45A6  71      	    ld   (hl),c
45A7  CB94    	    res  2,h
45A9  13      	    inc  de
45AA  C5      	    push bc
45AB  01E0FF  	    ld   bc,$FFE0
45AE  09      	    add  hl,bc
45AF  C1      	    pop  bc
45B0  10F0    	    djnz $45A2
45B2  3E8C    	    ld   a,$8C
45B4  3200B8  	    ld   (watchdog),a
45B7  3E3C    	    ld   a,$3C
45B9  320D92  	    ld   ($920D),a
45BC  3C      	    inc  a
45BD  320E92  	    ld   ($920E),a
45C0  3C      	    inc  a
45C1  320F92  	    ld   ($920F),a
45C4  3C      	    inc  a
45C5  32EF91  	    ld   ($91EF),a
45C8  C9      	    ret

                str_lucky_mouse: ; 'VERY LUCKY MOUSE' ($FE-term)
45C9               db   $1F, $0E, $1B, $22, $24, $15, $1E, $0C              ; |VERY LUC|
45D1               db   $14, $22, $24, $16, $18, $1E, $1C, $0E              ; |KY MOUSE|
45D9               db   $FE                                                 ; |.|
45DA  3B      	    dec  sp
45DB  CAF145  	    jp   z,$45F1
45DE  FE46    	    cp   $46
45E0  C0      	    ret  nz
45E1  3E00    	    ld   a,$00
45E3  326080  	    ld   ($8060),a
45E6  3E01    	    ld   a,$01
45E8  323380  	    ld   (req_death),a
45EB  3EE0    	    ld   a,$E0
45ED  3200B8  	    ld   (watchdog),a
45F0  C9      	    ret
45F1  3E65    	    ld   a,$65
45F3  320D92  	    ld   ($920D),a
45F6  3C      	    inc  a
45F7  320E92  	    ld   ($920E),a
45FA  3C      	    inc  a
45FB  320F92  	    ld   ($920F),a
45FE  3E61    	    ld   a,$61
4600  32EF91  	    ld   ($91EF),a
4603  C9      	    ret
                lucky_mouse_pic: ; 'VERY LUCKY MOUSE' bonus picture: 36x [VRAM_dest_LE, tile, color]
                ;   6x6 grid of unique tiles $51-$74; drawn one record at a time by index (eye winks)
4604               db   $CC, $91, $58, $84   ; VRAM $91CC tile $58 color $84
4608               db   $2F, $92, $6D, $84
460C               db   $CE, $91, $5A, $84
4610               db   $2D, $92, $6B, $84
4614               db   $4B, $92, $6F, $84
4618               db   $50, $92, $74, $84
461C               db   $D0, $91, $5C, $84
4620               db   $AB, $91, $51, $84
4624               db   $EB, $91, $5D, $84
4628               db   $0E, $92, $66, $84
462C               db   $AF, $91, $55, $84
4630               db   $0C, $92, $64, $84
4634               db   $2B, $92, $69, $84
4638               db   $4E, $92, $72, $84
463C               db   $AD, $91, $53, $84
4640               db   $CB, $91, $57, $84
4644               db   $10, $92, $68, $84
4648               db   $AE, $91, $54, $84
464C               db   $B0, $91, $56, $84
4650               db   $ED, $91, $5F, $84
4654               db   $CF, $91, $5B, $84
4658               db   $4C, $92, $70, $84
465C               db   $4F, $92, $73, $84
4660               db   $AC, $91, $52, $84
4664               db   $F0, $91, $62, $84
4668               db   $30, $92, $6E, $84
466C               db   $0B, $92, $63, $84
4670               db   $EF, $91, $61, $84
4674               db   $2C, $92, $6A, $84
4678               db   $CD, $91, $59, $84
467C               db   $EC, $91, $5E, $84
4680               db   $2E, $92, $6C, $84
4684               db   $0F, $92, $67, $84
4688               db   $0D, $92, $65, $84
468C               db   $4D, $92, $71, $84
4690               db   $EE, $91, $60, $84
                ;;; ...
4694  216880  	    ld   hl,$8068
4697  7E      	    ld   a,(hl)
4698  A7      	    and  a
4699  C20547  	    jp   nz,splash_pic_anim
469C  3601    	    ld   (hl),$01
469E  23      	    inc  hl
469F  3600    	    ld   (hl),$00
46A1  23      	    inc  hl
46A2  3600    	    ld   (hl),$00
46A4  23      	    inc  hl
46A5  3600    	    ld   (hl),$00
46A7  23      	    inc  hl
46A8  3600    	    ld   (hl),$00
46AA  216590  	    ld   hl,$9065
46AD  11FE46  	    ld   de,gamble_frame_tiles
46B0  0605    	    ld   b,$05
46B2  E5      	    push hl
46B3  1A      	    ld   a,(de)
46B4  77      	    ld   (hl),a
46B5  13      	    inc  de
46B6  23      	    inc  hl
46B7  10FA    	    djnz $46B3
46B9  E1      	    pop  hl
46BA  CBD4    	    set  2,h
46BC  0605    	    ld   b,$05
46BE  3E84    	    ld   a,$84
46C0  77      	    ld   (hl),a
46C1  23      	    inc  hl
46C2  10FC    	    djnz $46C0
46C4  1A      	    ld   a,(de)
46C5  214993  	    ld   hl,$9349
46C8  77      	    ld   (hl),a
46C9  CBD4    	    set  2,h
46CB  3684    	    ld   (hl),$84
46CD  13      	    inc  de
46CE  1A      	    ld   a,(de)
46CF  0616    	    ld   b,$16
46D1  11E0FF  	    ld   de,$FFE0
46D4  E5      	    push hl
46D5  CB94    	    res  2,h
46D7  19      	    add  hl,de
46D8  77      	    ld   (hl),a
46D9  10FC    	    djnz $46D7
46DB  E1      	    pop  hl
46DC  0616    	    ld   b,$16
46DE  3E84    	    ld   a,$84
46E0  19      	    add  hl,de
46E1  77      	    ld   (hl),a
46E2  10FC    	    djnz $46E0
46E4  218594  	    ld   hl,$9485
46E7  112000  	    ld   de,$0020
46EA  0604    	    ld   b,$04
46EC  0E17    	    ld   c,$17
46EE  3EF5    	    ld   a,$F5
46F0  C5      	    push bc
46F1  E5      	    push hl
46F2  77      	    ld   (hl),a
46F3  23      	    inc  hl
46F4  10FC    	    djnz $46F2
46F6  E1      	    pop  hl
46F7  19      	    add  hl,de
46F8  C1      	    pop  bc
46F9  0D      	    dec  c
46FA  C2F046  	    jp   nz,$46F0
46FD  C9      	    ret
                gamble_frame_tiles: ; border tiles for the 'VERY LUCKY MOUSE' gamble screen (color $84)
                ;   [0..4]=5-tile bottom row  [5]=corner @$9349  [6]=vertical-edge tile (22-col)
46FE               db   $40, $40, $40, $40, $43, $77, $41   ; $40 x4 + $43 corner, $77 corner, $41 v-edge
                splash_pic_anim: ; already-inited branch of $4694: step splash mouse-pic reveal ($806B timer/$806C rec idx) + eye-wink
4705  23      	    inc  hl
4706  7E      	    ld   a,(hl)
4707  A7      	    and  a
4708  C25547  	    jp   nz,$4755
470B  23      	    inc  hl
470C  23      	    inc  hl
470D  34      	    inc  (hl)
470E  7E      	    ld   a,(hl)
470F  FE05    	    cp   $05
4711  D8      	    ret  c
4712  3600    	    ld   (hl),$00
4714  23      	    inc  hl
4715  7E      	    ld   a,(hl)
4716  34      	    inc  (hl)
4717  FE2A    	    cp   $2A
4719  D23247  	    jp   nc,$4732
471C  07      	    rlca
471D  07      	    rlca
471E  4F      	    ld   c,a
471F  0600    	    ld   b,$00
4721  21E347  	    ld   hl,$47E3
4724  09      	    add  hl,bc
4725  5E      	    ld   e,(hl)
4726  23      	    inc  hl
4727  56      	    ld   d,(hl)
4728  23      	    inc  hl
4729  46      	    ld   b,(hl)
472A  23      	    inc  hl
472B  4E      	    ld   c,(hl)
472C  EB      	    ex   de,hl
472D  70      	    ld   (hl),b
472E  CBD4    	    set  2,h
4730  71      	    ld   (hl),c
4731  C9      	    ret
4732  7E      	    ld   a,(hl)
4733  FE52    	    cp   $52
4735  CA4947  	    jp   z,$4749
4738  D62B    	    sub  $2B
473A  FE24    	    cp   $24
473C  D0      	    ret  nc
473D  07      	    rlca
473E  07      	    rlca
473F  4F      	    ld   c,a
4740  0600    	    ld   b,$00
4742  210446  	    ld   hl,lucky_mouse_pic
4745  CD2447  	    call $4724
4748  C9      	    ret
4749  3600    	    ld   (hl),$00
474B  2B      	    dec  hl
474C  3600    	    ld   (hl),$00
474E  2B      	    dec  hl
474F  3600    	    ld   (hl),$00
4751  2B      	    dec  hl
4752  3601    	    ld   (hl),$01
4754  C9      	    ret
4755  FE01    	    cp   $01
4757  CA7447  	    jp   z,$4774
475A  23      	    inc  hl
475B  23      	    inc  hl
475C  34      	    inc  (hl)
475D  7E      	    ld   a,(hl)
475E  FE06    	    cp   $06
4760  D8      	    ret  c
4761  3600    	    ld   (hl),$00
4763  23      	    inc  hl
4764  34      	    inc  (hl)
4765  7E      	    ld   a,(hl)
4766  FE28    	    cp   $28
4768  D8      	    ret  c
4769  3E00    	    ld   a,$00
476B  326880  	    ld   ($8068),a
476E  3E01    	    ld   a,$01
4770  323380  	    ld   (req_death),a
4773  C9      	    ret
4774  23      	    inc  hl
4775  7E      	    ld   a,(hl)
4776  34      	    inc  (hl)
4777  FE10    	    cp   $10
4779  CA9447  	    jp   z,$4794
477C  FE20    	    cp   $20
477E  CA9B47  	    jp   z,$479B
4781  FE30    	    cp   $30
4783  CABB47  	    jp   z,$47BB
4786  FE40    	    cp   $40
4788  CAC247  	    jp   z,$47C2
478B  FE60    	    cp   $60
478D  C0      	    ret  nz
478E  3600    	    ld   (hl),$00
4790  2B      	    dec  hl
4791  3602    	    ld   (hl),$02
4793  C9      	    ret
4794  218B48  	    ld   hl,$488B
4797  CDC947  	    call $47C9
479A  C9      	    ret
479B  21A348  	    ld   hl,$48A3
479E  CDC947  	    call $47C9
47A1  DD21D507	    ld   ix,$07D5
47A5  3A2580  	    ld   a,($8025)
47A8  07      	    rlca
47A9  5F      	    ld   e,a
47AA  1600    	    ld   d,$00
47AC  DD19    	    add  ix,de
47AE  DD7E00  	    ld   a,(ix+$00)
47B1  32F892  	    ld   ($92F8),a
47B4  DD7E01  	    ld   a,(ix+$01)
47B7  32D891  	    ld   ($91D8),a
47BA  C9      	    ret
47BB  21BB48  	    ld   hl,$48BB
47BE  CDC947  	    call $47C9
47C1  C9      	    ret
47C2  21D348  	    ld   hl,$48D3
47C5  CDC947  	    call $47C9
47C8  C9      	    ret
47C9  5E      	    ld   e,(hl)
47CA  23      	    inc  hl
47CB  56      	    ld   d,(hl)
47CC  23      	    inc  hl
47CD  46      	    ld   b,(hl)
47CE  23      	    inc  hl
47CF  4E      	    ld   c,(hl)
47D0  23      	    inc  hl
47D1  EB      	    ex   de,hl
47D2  1A      	    ld   a,(de)
47D3  77      	    ld   (hl),a
47D4  CBD4    	    set  2,h
47D6  71      	    ld   (hl),c
47D7  CB94    	    res  2,h
47D9  13      	    inc  de
47DA  D5      	    push de
47DB  11E0FF  	    ld   de,$FFE0
47DE  19      	    add  hl,de
47DF  D1      	    pop  de
47E0  10F0    	    djnz $47D2
47E2  C9      	    ret
47E3  2693    	    ld   h,$93
47E5  24      	    inc  h
47E6  F5      	    push af
47E7  0693    	    ld   b,$93
47E9  D9      	    exx
47EA  F5      	    push af
47EB  E692    	    and  $92
47ED  D7      	    rst  $10
47EE  F5      	    push af
47EF  C692    	    add  a,$92
47F1  D5      	    push de
47F2  F5      	    push af
47F3  A6      	    and  (hl)
47F4  92      	    sub  d
47F5  D3F5    	    out  ($F5),a
47F7  86      	    add  a,(hl)
47F8  92      	    sub  d
47F9  D1      	    pop  de
47FA  F5      	    push af
47FB  66      	    ld   h,(hl)
47FC  92      	    sub  d
47FD  CF      	    rst  $08
47FE  F5      	    push af
47FF  46      	    ld   b,(hl)
4800  92      	    sub  d
4801  CDF526  	    call $26F5
4804  92      	    sub  d
4805  CBF5    	    set  6,l
4807  0692    	    ld   b,$92
4809  C9      	    ret
480A  F5      	    push af
480B  E691    	    and  $91
480D  C7      	    rst  $00
480E  F5      	    push af
480F  C691    	    add  a,$91
4811  C5      	    push bc
4812  F5      	    push af
4813  A6      	    and  (hl)
4814  91      	    sub  c
4815  C3F586  	    jp   $86F5
4818  91      	    sub  c
4819  C1      	    pop  bc
481A  F5      	    push af
481B  66      	    ld   h,(hl)
481C  91      	    sub  c
481D  BF      	    cp   a
481E  F5      	    push af
481F  46      	    ld   b,(hl)
4820  91      	    sub  c
4821  BD      	    cp   l
4822  F5      	    push af
4823  2691    	    ld   h,$91
4825  BB      	    cp   e
4826  F5      	    push af
4827  0691    	    ld   b,$91
4829  B9      	    cp   c
482A  F5      	    push af
482B  E690    	    and  $90
482D  B7      	    or   a
482E  F5      	    push af
482F  C690    	    add  a,$90
4831  B5      	    or   l
4832  F5      	    push af
4833  A6      	    and  (hl)
4834  90      	    sub  b
4835  B3      	    or   e
4836  F5      	    push af
4837  27      	    daa
4838  93      	    sub  e
4839  24      	    inc  h
483A  F5      	    push af
483B  07      	    rlca
483C  93      	    sub  e
483D  DAF5E7  	    jp   c,$E7F5
4840  92      	    sub  d
4841  D8      	    ret  c
4842  F5      	    push af
4843  C7      	    rst  $00
4844  92      	    sub  d
4845  D6F5    	    sub  $F5
4847  A7      	    and  a
4848  92      	    sub  d
4849  D4F587  	    call nc,$87F5
484C  92      	    sub  d
484D  D2F567  	    jp   nc,$67F5
4850  92      	    sub  d
4851  D0      	    ret  nc
4852  F5      	    push af
4853  47      	    ld   b,a
4854  92      	    sub  d
4855  CEF5    	    adc  a,$F5
4857  27      	    daa
4858  92      	    sub  d
4859  CCF507  	    call z,$07F5
485C  92      	    sub  d
485D  CAF5E7  	    jp   z,$E7F5
4860  91      	    sub  c
4861  C8      	    ret  z
4862  F5      	    push af
4863  C7      	    rst  $00
4864  91      	    sub  c
4865  C6F5    	    add  a,$F5
4867  A7      	    and  a
4868  91      	    sub  c
4869  C4F587  	    call nz,$87F5
486C  91      	    sub  c
486D  C2F567  	    jp   nz,$67F5
4870  91      	    sub  c
4871  C0      	    ret  nz
4872  F5      	    push af
4873  47      	    ld   b,a
4874  91      	    sub  c
4875  BE      	    cp   (hl)
4876  F5      	    push af
4877  27      	    daa
4878  91      	    sub  c
4879  BC      	    cp   h
487A  F5      	    push af
487B  07      	    rlca
487C  91      	    sub  c
487D  BA      	    cp   d
487E  F5      	    push af
487F  E7      	    rst  $20
4880  90      	    sub  b
4881  B8      	    cp   b
4882  F5      	    push af
4883  C7      	    rst  $00
4884  90      	    sub  b
4885  B6      	    or   (hl)
4886  F5      	    push af
4887  A7      	    and  a
4888  90      	    sub  b
4889  B4      	    or   h
488A  F5      	    push af
488B  3693    	    ld   (hl),$93
488D  14      	    inc  d
488E  86      	    add  a,(hl)
                coin_copyright_table: ; INSERT COIN / COIN PLAY / (c)1982 CHUO CO.,LTD (text+VRAM addr+color)
488F               db   $24, $24, $24, $24, $12, $17, $1C, $0E              ; |    INSE|
4897               db   $1B, $1D, $24, $24, $0C, $18, $12, $17              ; |RT  COIN|
489F               db   $24, $24, $24, $24, $38, $93, $14, $82              ; |    ..K.|
48A7               db   $24, $24, $24, $24, $24, $0C, $18, $12              ; |     COI|
48AF               db   $17, $24, $24, $24, $24, $24, $19, $15              ; |N     PL|
48B7               db   $0A, $22, $24, $24, $3A, $93, $14, $80              ; |AY  ..K.|
48BF               db   $24, $24, $24, $24, $24, $24, $24, $24              ; |        |
48C7               db   $24, $24, $24, $24, $24, $24, $24, $24              ; |        |
48CF               db   $24, $24, $24, $24, $7C, $93, $18, $86              ; |    ..O.|
48D7               db   $24, $24, $28, $24, $01, $09, $08, $02              ; |  (c) 1982|
48DF               db   $24, $0C, $11, $1E, $18, $24, $0C, $18              ; | CHUO CO|
48E7               db   $31, $24, $15, $1D, $0D, $2B, $24, $24              ; |., LTD.  |
                debug_draw_check: ; if hw_in_1 & $40 draw debug text at $9100 (else no-op)
48EF  F5      	    push af
48F0  3A00A8  	    ld   a,(hw_in_1)
48F3  E640    	    and  $40
48F5  C2FA48  	    jp   nz,$48FA
48F8  F1      	    pop  af
48F9  C9      	    ret
48FA  210091  	    ld   hl,$9100
48FD  111A49  	    ld   de,$491A
4900  060E    	    ld   b,$0E
4902  CD0E49  	    call $490E
4905  3A00B8  	    ld   a,(watchdog)
4908  00      	    nop
4909  00      	    nop
490A  00      	    nop
490B  C3FA48  	    jp   $48FA
490E  1A      	    ld   a,(de)
490F  77      	    ld   (hl),a
4910  13      	    inc  de
4911  C5      	    push bc
4912  012000  	    ld   bc,$0020
4915  09      	    add  hl,bc
4916  C1      	    pop  bc
4917  10F5    	    djnz $490E
4919  C9      	    ret
                licensee_text:  ; font tiles -> VRAM $9100 via draw at $48FA; ROT90 reads "CHUO CO.,LTD"
491A               db   $24, $0D, $1D, $15, $24, $31, $18, $0C  ; _ D T L _ [.,] O C
4922               db   $24, $18, $1E, $11, $0C, $24            ; _ O U H C _

4FFF          	    org $4fff
4FFF  00      	    nop
