	.file	"lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.type	toggle_e, @function
toggle_e:
.LFB7:
	.file 1 "lcd.c"
	.loc 1 102 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 103 0
	sbi 0x8,2
.LVL0:
.LBB28:
.LBB29:
	.file 2 "/usr/lib/avr/include/util/delay.h"
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL1:
.LBE29:
.LBE28:
	.loc 1 105 0
	cbi 0x8,2
	ret
	.cfi_endproc
.LFE7:
	.size	toggle_e, .-toggle_e
	.type	lcd_write, @function
lcd_write:
.LFB8:
	.loc 1 119 0
	.cfi_startproc
.LVL2:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 123 0
	tst r22
	breq .L3
	.loc 1 124 0
	sbi 0x8,0
	rjmp .L4
.L3:
	.loc 1 126 0
	cbi 0x8,0
.L4:
	.loc 1 128 0
	cbi 0x8,1
	.loc 1 151 0
	sbi 0xa,2
	.loc 1 152 0
	sbi 0xa,3
	.loc 1 153 0
	sbi 0xa,4
	.loc 1 154 0
	sbi 0xa,5
	.loc 1 157 0
	cbi 0xb,5
	.loc 1 158 0
	cbi 0xb,4
	.loc 1 159 0
	cbi 0xb,3
	.loc 1 160 0
	cbi 0xb,2
	.loc 1 161 0
	sbrc r28,7
	.loc 1 161 0 discriminator 1
	sbi 0xb,5
.L5:
	.loc 1 162 0
	sbrc r28,6
	.loc 1 162 0 discriminator 1
	sbi 0xb,4
.L6:
	.loc 1 163 0
	sbrc r28,5
	.loc 1 163 0 discriminator 1
	sbi 0xb,3
.L7:
	.loc 1 164 0
	sbrc r28,4
	.loc 1 164 0 discriminator 1
	sbi 0xb,2
.L8:
	.loc 1 165 0
	call toggle_e
.LVL3:
	.loc 1 168 0
	cbi 0xb,5
	.loc 1 169 0
	cbi 0xb,4
	.loc 1 170 0
	cbi 0xb,3
	.loc 1 171 0
	cbi 0xb,2
	.loc 1 172 0
	sbrc r28,3
	.loc 1 172 0 discriminator 1
	sbi 0xb,5
.L9:
	.loc 1 173 0
	sbrc r28,2
	.loc 1 173 0 discriminator 1
	sbi 0xb,4
.L10:
	.loc 1 174 0
	sbrc r28,1
	.loc 1 174 0 discriminator 1
	sbi 0xb,3
.L11:
	.loc 1 175 0
	sbrc r28,0
	.loc 1 175 0 discriminator 1
	sbi 0xb,2
.L12:
	.loc 1 176 0
	call toggle_e
.LVL4:
	.loc 1 179 0
	sbi 0xb,2
	.loc 1 180 0
	sbi 0xb,3
	.loc 1 181 0
	sbi 0xb,4
	.loc 1 182 0
	sbi 0xb,5
/* epilogue start */
	.loc 1 184 0
	pop r28
.LVL5:
	ret
	.cfi_endproc
.LFE8:
	.size	lcd_write, .-lcd_write
	.type	lcd_read.constprop.0, @function
lcd_read.constprop.0:
.LFB22:
	.loc 1 199 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL6:
	.loc 1 207 0
	cbi 0x8,0
	.loc 1 208 0
	sbi 0x8,1
	.loc 1 230 0
	cbi 0xa,2
	.loc 1 231 0
	cbi 0xa,3
	.loc 1 232 0
	cbi 0xa,4
	.loc 1 233 0
	cbi 0xa,5
	.loc 1 236 0
	sbi 0x8,2
.LVL7:
.LBB30:
.LBB31:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL8:
.LBE31:
.LBE30:
	.loc 1 239 0
	sbis 0x9,2
	rjmp .L44
	.loc 1 239 0
	ldi r24,lo8(16)
	rjmp .L36
.L44:
	.loc 1 238 0
	ldi r24,0
.L36:
.LVL9:
	.loc 1 240 0
	sbic 0x9,3
	.loc 1 240 0
	ori r24,lo8(32)
.LVL10:
.L37:
	.loc 1 241 0
	sbic 0x9,4
	.loc 1 241 0
	ori r24,lo8(64)
.LVL11:
.L38:
	.loc 1 242 0
	sbic 0x9,5
	.loc 1 242 0
	ori r24,lo8(-128)
.LVL12:
.L39:
	.loc 1 243 0
	cbi 0x8,2
.LVL13:
.LBB32:
.LBB33:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL14:
.LBE33:
.LBE32:
	.loc 1 248 0
	sbi 0x8,2
.LVL15:
.LBB34:
.LBB35:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL16:
.LBE35:
.LBE34:
	.loc 1 250 0
	sbic 0x9,2
	.loc 1 250 0
	ori r24,lo8(1)
.LVL17:
.L40:
	.loc 1 251 0
	sbic 0x9,3
	.loc 1 251 0
	ori r24,lo8(2)
.LVL18:
.L41:
	.loc 1 252 0
	sbic 0x9,4
	.loc 1 252 0
	ori r24,lo8(4)
.LVL19:
.L42:
	.loc 1 253 0
	sbic 0x9,5
	.loc 1 253 0
	ori r24,lo8(8)
.LVL20:
.L43:
	.loc 1 254 0
	cbi 0x8,2
	.loc 1 257 0
	ret
	.cfi_endproc
.LFE22:
	.size	lcd_read.constprop.0, .-lcd_read.constprop.0
	.type	lcd_waitbusy, @function
lcd_waitbusy:
.LFB10:
	.loc 1 270 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L67:
	.loc 1 274 0 discriminator 1
	call lcd_read.constprop.0
.LVL21:
	sbrc r24,7
	rjmp .L67
.LVL22:
.LBB36:
.LBB37:
	.loc 2 276 0
	ldi r24,lo8(21)
1:	dec r24
	brne 1b
.LVL23:
	nop
.LVL24:
.LBE37:
.LBE36:
	.loc 1 280 0
	jmp lcd_read.constprop.0
.LVL25:
	.cfi_endproc
.LFE10:
	.size	lcd_waitbusy, .-lcd_waitbusy
.global	lcd_command
	.type	lcd_command, @function
lcd_command:
.LFB12:
	.loc 1 339 0
	.cfi_startproc
.LVL26:
	push r28
.LCFI1:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 340 0
	call lcd_waitbusy
.LVL27:
	.loc 1 341 0
	ldi r22,0
	mov r24,r28
/* epilogue start */
	.loc 1 342 0
	pop r28
.LVL28:
	.loc 1 341 0
	jmp lcd_write
.LVL29:
	.cfi_endproc
.LFE12:
	.size	lcd_command, .-lcd_command
.global	lcd_data
	.type	lcd_data, @function
lcd_data:
.LFB13:
	.loc 1 351 0
	.cfi_startproc
.LVL30:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 352 0
	call lcd_waitbusy
.LVL31:
	.loc 1 353 0
	ldi r22,lo8(1)
	mov r24,r28
/* epilogue start */
	.loc 1 354 0
	pop r28
.LVL32:
	.loc 1 353 0
	jmp lcd_write
.LVL33:
	.cfi_endproc
.LFE13:
	.size	lcd_data, .-lcd_data
.global	lcd_gotoxy
	.type	lcd_gotoxy, @function
lcd_gotoxy:
.LFB14:
	.loc 1 365 0
	.cfi_startproc
.LVL34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 370 0
	cpse r22,__zero_reg__
	rjmp .L72
	.loc 1 371 0
	subi r24,lo8(-(-128))
.LVL35:
	rjmp .L73
.LVL36:
.L72:
	.loc 1 373 0
	subi r24,lo8(-(-64))
.LVL37:
.L73:
	jmp lcd_command
.LVL38:
	.cfi_endproc
.LFE14:
	.size	lcd_gotoxy, .-lcd_gotoxy
.global	lcd_getxy
	.type	lcd_getxy, @function
lcd_getxy:
.LFB15:
	.loc 1 392 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 393 0
	call lcd_waitbusy
.LVL39:
	.loc 1 394 0
	ldi r25,0
	ret
	.cfi_endproc
.LFE15:
	.size	lcd_getxy, .-lcd_getxy
.global	lcd_clrscr
	.type	lcd_clrscr, @function
lcd_clrscr:
.LFB16:
	.loc 1 401 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 402 0
	ldi r24,lo8(1)
	jmp lcd_command
.LVL40:
	.cfi_endproc
.LFE16:
	.size	lcd_clrscr, .-lcd_clrscr
.global	lcd_home
	.type	lcd_home, @function
lcd_home:
.LFB17:
	.loc 1 410 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 411 0
	ldi r24,lo8(2)
	jmp lcd_command
.LVL41:
	.cfi_endproc
.LFE17:
	.size	lcd_home, .-lcd_home
.global	lcd_putc
	.type	lcd_putc, @function
lcd_putc:
.LFB18:
	.loc 1 421 0
	.cfi_startproc
.LVL42:
	push r28
.LCFI3:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 425 0
	call lcd_waitbusy
.LVL43:
	.loc 1 426 0
	cpi r28,lo8(10)
	brne .L78
.LVL44:
.LBB40:
.LBB41:
	.loc 1 298 0
	cpi r24,lo8(64)
	brlo .L80
	.loc 1 301 0
	ldi r24,0
.LVL45:
	rjmp .L79
.LVL46:
.L80:
	.loc 1 299 0
	ldi r24,lo8(64)
.LVL47:
.L79:
	.loc 1 324 0
	subi r24,lo8(-(-128))
.LVL48:
/* epilogue start */
.LBE41:
.LBE40:
	.loc 1 459 0
	pop r28
.LVL49:
.LBB43:
.LBB42:
	.loc 1 324 0
	jmp lcd_command
.LVL50:
.L78:
.LBE42:
.LBE43:
	.loc 1 456 0
	ldi r22,lo8(1)
	mov r24,r28
.LVL51:
/* epilogue start */
	.loc 1 459 0
	pop r28
.LVL52:
	.loc 1 456 0
	jmp lcd_write
.LVL53:
	.cfi_endproc
.LFE18:
	.size	lcd_putc, .-lcd_putc
.global	lcd_puts
	.type	lcd_puts, @function
lcd_puts:
.LFB19:
	.loc 1 469 0
	.cfi_startproc
.LVL54:
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LVL55:
.L82:
	.loc 1 472 0
	ld r24,Y+
.LVL56:
	tst r24
	breq .L84
	.loc 1 473 0
	call lcd_putc
.LVL57:
	rjmp .L82
.LVL58:
.L84:
/* epilogue start */
	.loc 1 476 0
	pop r29
	pop r28
.LVL59:
	ret
	.cfi_endproc
.LFE19:
	.size	lcd_puts, .-lcd_puts
.global	lcd_puts_p
	.type	lcd_puts_p, @function
lcd_puts_p:
.LFB20:
	.loc 1 486 0
	.cfi_startproc
.LVL60:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
.LVL61:
.L86:
.LBB44:
	.loc 1 489 0
/* #APP */
 ;  489 "lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL62:
/* #NOAPP */
	movw r28,r30
	adiw r28,1
.LVL63:
.LBE44:
	.loc 1 489 0
	tst r24
	breq .L88
	.loc 1 490 0
	call lcd_putc
.LVL64:
	movw r30,r28
	rjmp .L86
.LVL65:
.L88:
/* epilogue start */
	.loc 1 493 0
	pop r29
	pop r28
.LVL66:
	ret
	.cfi_endproc
.LFE20:
	.size	lcd_puts_p, .-lcd_puts_p
.global	lcd_init
	.type	lcd_init, @function
lcd_init:
.LFB21:
	.loc 1 505 0
	.cfi_startproc
.LVL67:
	push r28
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 531 0
	sbi 0x7,0
	.loc 1 532 0
	sbi 0x7,1
	.loc 1 533 0
	sbi 0x7,2
	.loc 1 534 0
	sbi 0xa,2
	.loc 1 535 0
	sbi 0xa,3
	.loc 1 536 0
	sbi 0xa,4
	.loc 1 537 0
	sbi 0xa,5
.LVL68:
.LBB45:
.LBB46:
	.loc 2 276 0
	ldi r24,lo8(-1537)
	ldi r25,hi8(-1537)
1:	sbiw r24,1
	brne 1b
.LVL69:
	rjmp .
	nop
.LVL70:
.LBE46:
.LBE45:
	.loc 1 542 0
	sbi 0xb,3
	.loc 1 543 0
	sbi 0xb,2
	.loc 1 544 0
	call toggle_e
.LVL71:
.LBB47:
.LBB48:
	.loc 2 276 0
	ldi r24,lo8(19999)
	ldi r25,hi8(19999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL72:
.LBE48:
.LBE47:
	.loc 1 548 0
	call toggle_e
.LVL73:
.LBB49:
.LBB50:
	.loc 2 276 0
	ldi r24,lo8(255)
	ldi r25,hi8(255)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL74:
.LBE50:
.LBE49:
	.loc 1 552 0
	call toggle_e
.LVL75:
.LBB51:
.LBB52:
	.loc 2 276 0
	ldi r24,lo8(255)
	ldi r25,hi8(255)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL76:
.LBE52:
.LBE51:
	.loc 1 556 0
	cbi 0xb,2
	.loc 1 557 0
	call toggle_e
.LVL77:
.LBB53:
.LBB54:
	.loc 2 276 0
	ldi r24,lo8(255)
	ldi r25,hi8(255)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL78:
.LBE54:
.LBE53:
	.loc 1 585 0
	ldi r24,lo8(40)
	call lcd_command
.LVL79:
	.loc 1 587 0
	ldi r24,lo8(8)
	call lcd_command
.LVL80:
	.loc 1 588 0
	call lcd_clrscr
.LVL81:
	.loc 1 589 0
	ldi r24,lo8(6)
	call lcd_command
.LVL82:
	.loc 1 590 0
	mov r24,r28
/* epilogue start */
	.loc 1 592 0
	pop r28
.LVL83:
	.loc 1 590 0
	jmp lcd_command
.LVL84:
	.cfi_endproc
.LFE21:
	.size	lcd_init, .-lcd_init
.Letext0:
	.file 3 "/usr/lib/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x769
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF34
	.byte	0xc
	.long	.LASF35
	.long	.LASF36
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7e
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x80
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x82
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF23
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0xba
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0xff
	.long	0xba
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.word	0x101
	.long	0xba
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.word	0x105
	.long	0x5e
	.uleb128 0x8
	.byte	0x1
	.long	.LASF37
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x2c
	.byte	0x1
	.long	0xe8
	.uleb128 0xa
	.string	"rs"
	.byte	0x1
	.byte	0xc7
	.long	0x2c
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0xc9
	.long	0x2c
	.byte	0
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x137
	.uleb128 0xd
	.long	0x7e
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.byte	0x68
	.uleb128 0xe
	.long	0x8b
	.long	.LLST0
	.uleb128 0xf
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x10
	.long	0x96
	.long	.LLST1
	.uleb128 0x10
	.long	0xa2
	.long	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF16
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.byte	0x1
	.long	0x18b
	.uleb128 0x12
	.long	.LASF14
	.byte	0x1
	.byte	0x76
	.long	0x2c
	.long	.LLST4
	.uleb128 0x13
	.string	"rs"
	.byte	0x1
	.byte	0x76
	.long	0x2c
	.long	.LLST5
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x78
	.long	0x37
	.uleb128 0x14
	.long	.LVL3
	.long	0xe8
	.uleb128 0x14
	.long	.LVL4
	.long	0xe8
	.byte	0
	.uleb128 0x15
	.long	0xc1
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x258
	.uleb128 0x10
	.long	0xdc
	.long	.LLST6
	.uleb128 0x16
	.long	0xd2
	.byte	0
	.uleb128 0x17
	.long	0x7e
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.byte	0xed
	.long	0x1e9
	.uleb128 0xe
	.long	0x8b
	.long	.LLST7
	.uleb128 0xf
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x10
	.long	0x96
	.long	.LLST8
	.uleb128 0x10
	.long	0xa2
	.long	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x7e
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0xf5
	.long	0x222
	.uleb128 0xe
	.long	0x8b
	.long	.LLST10
	.uleb128 0xf
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x10
	.long	0x96
	.long	.LLST11
	.uleb128 0x10
	.long	0xa2
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x7e
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.byte	0xf9
	.uleb128 0xe
	.long	0x8b
	.long	.LLST13
	.uleb128 0xf
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x10
	.long	0x96
	.long	.LLST14
	.uleb128 0x10
	.long	0xa2
	.long	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF39
	.byte	0x1
	.word	0x10c
	.byte	0x1
	.long	0x2c
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2d2
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.word	0x10f
	.long	0x2c
	.long	.LLST16
	.uleb128 0x1a
	.long	0x7e
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.word	0x115
	.long	0x2be
	.uleb128 0xe
	.long	0x8b
	.long	.LLST17
	.uleb128 0xf
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x10
	.long	0x96
	.long	.LLST18
	.uleb128 0x10
	.long	0xa2
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL21
	.long	0x18b
	.uleb128 0x1b
	.long	.LVL25
	.byte	0x1
	.long	0x18b
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.word	0x152
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST20
	.byte	0x1
	.long	0x31e
	.uleb128 0x1d
	.string	"cmd"
	.byte	0x1
	.word	0x152
	.long	0x2c
	.long	.LLST21
	.uleb128 0x14
	.long	.LVL27
	.long	0x258
	.uleb128 0x1e
	.long	.LVL29
	.byte	0x1
	.long	0x137
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1f
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.word	0x15e
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST22
	.byte	0x1
	.long	0x36a
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.word	0x15e
	.long	0x2c
	.long	.LLST23
	.uleb128 0x14
	.long	.LVL31
	.long	0x258
	.uleb128 0x1e
	.long	.LVL33
	.byte	0x1
	.long	0x137
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1f
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.word	0x16c
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3ac
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.word	0x16c
	.long	0x2c
	.long	.LLST24
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.word	0x16c
	.long	0x2c
	.long	.LLST25
	.uleb128 0x1b
	.long	.LVL38
	.byte	0x1
	.long	0x2d2
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.word	0x187
	.byte	0x1
	.long	0x3e
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3d5
	.uleb128 0x14
	.long	.LVL39
	.long	0x258
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.word	0x190
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x401
	.uleb128 0x1e
	.long	.LVL40
	.byte	0x1
	.long	0x2d2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.word	0x199
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x42d
	.uleb128 0x1e
	.long	.LVL41
	.byte	0x1
	.long	0x2d2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF24
	.byte	0x1
	.word	0x121
	.byte	0x1
	.byte	0x3
	.long	0x454
	.uleb128 0x24
	.string	"pos"
	.byte	0x1
	.word	0x121
	.long	0x2c
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.word	0x123
	.long	0x2c
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.word	0x1a4
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST26
	.byte	0x1
	.long	0x4e5
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.word	0x1a4
	.long	0x4e5
	.long	.LLST27
	.uleb128 0x19
	.string	"pos"
	.byte	0x1
	.word	0x1a6
	.long	0x2c
	.long	.LLST28
	.uleb128 0x25
	.long	0x42d
	.long	.LBB40
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.word	0x1ac
	.long	0x4c4
	.uleb128 0xe
	.long	0x43b
	.long	.LLST29
	.uleb128 0x26
	.long	.Ldebug_ranges0+0
	.uleb128 0x10
	.long	0x447
	.long	.LLST30
	.uleb128 0x1b
	.long	.LVL50
	.byte	0x1
	.long	0x2d2
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL43
	.long	0x258
	.uleb128 0x1e
	.long	.LVL53
	.byte	0x1
	.long	0x137
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1f
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF27
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.word	0x1d3
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST31
	.byte	0x1
	.long	0x52d
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.word	0x1d3
	.long	0x52d
	.long	.LLST32
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.word	0x1d6
	.long	0x4e5
	.long	.LLST33
	.uleb128 0x14
	.long	.LVL57
	.long	0x454
	.byte	0
	.uleb128 0x27
	.byte	0x2
	.long	0x533
	.uleb128 0x28
	.long	0x4e5
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.word	0x1e4
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST34
	.byte	0x1
	.long	0x5a9
	.uleb128 0x20
	.long	.LASF30
	.byte	0x1
	.word	0x1e4
	.long	0x52d
	.long	.LLST35
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.word	0x1e7
	.long	0x4e5
	.long	.LLST36
	.uleb128 0x29
	.long	.LBB44
	.long	.LBE44
	.long	0x59f
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.word	0x1e9
	.long	0x45
	.long	.LLST37
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.word	0x1e9
	.long	0x2c
	.long	.LLST36
	.byte	0
	.uleb128 0x14
	.long	.LVL64
	.long	0x454
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.word	0x1f8
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST39
	.byte	0x1
	.uleb128 0x20
	.long	.LASF33
	.byte	0x1
	.word	0x1f8
	.long	0x2c
	.long	.LLST40
	.uleb128 0x1a
	.long	0x7e
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x21b
	.long	0x60a
	.uleb128 0xe
	.long	0x8b
	.long	.LLST41
	.uleb128 0xf
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x10
	.long	0x96
	.long	.LLST42
	.uleb128 0x10
	.long	0xa2
	.long	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x7e
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x221
	.long	0x644
	.uleb128 0xe
	.long	0x8b
	.long	.LLST44
	.uleb128 0xf
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x10
	.long	0x96
	.long	.LLST45
	.uleb128 0x10
	.long	0xa2
	.long	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x7e
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x225
	.long	0x67e
	.uleb128 0xe
	.long	0x8b
	.long	.LLST47
	.uleb128 0xf
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x10
	.long	0x96
	.long	.LLST48
	.uleb128 0x10
	.long	0xa2
	.long	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x7e
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x229
	.long	0x6b8
	.uleb128 0xe
	.long	0x8b
	.long	.LLST50
	.uleb128 0xf
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x10
	.long	0x96
	.long	.LLST51
	.uleb128 0x10
	.long	0xa2
	.long	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x7e
	.long	.LBB53
	.long	.LBE53
	.byte	0x1
	.word	0x22e
	.long	0x6f2
	.uleb128 0xe
	.long	0x8b
	.long	.LLST53
	.uleb128 0xf
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x10
	.long	0x96
	.long	.LLST54
	.uleb128 0x10
	.long	0xa2
	.long	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL71
	.long	0xe8
	.uleb128 0x14
	.long	.LVL73
	.long	0xe8
	.uleb128 0x14
	.long	.LVL75
	.long	0xe8
	.uleb128 0x14
	.long	.LVL77
	.long	0xe8
	.uleb128 0x2c
	.long	.LVL79
	.long	0x2d2
	.long	0x72a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x2c
	.long	.LVL80
	.long	0x2d2
	.long	0x73d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x14
	.long	.LVL81
	.long	0x3d5
	.uleb128 0x2c
	.long	.LVL82
	.long	0x2d2
	.long	0x759
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1e
	.long	.LVL84
	.byte	0x1
	.long	0x2d2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST2:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB8-.Ltext0
	.long	.LCFI0-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0-.Ltext0
	.long	.LFE8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST4:
	.long	.LVL2-.Ltext0
	.long	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL3-1-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL5-.Ltext0
	.long	.LFE8-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL2-.Ltext0
	.long	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x66
	.long	.LVL3-1-.Ltext0
	.long	.LFE8-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LFE22-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST8:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST9:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST11:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST12:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST14:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST15:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL21-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST17:
	.long	.LVL22-.Ltext0
	.long	.LVL24-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40800000
	.long	0
	.long	0
.LLST18:
	.long	.LVL22-.Ltext0
	.long	.LVL24-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST19:
	.long	.LVL22-.Ltext0
	.long	.LVL24-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LFB12-.Ltext0
	.long	.LCFI1-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI1-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST21:
	.long	.LVL26-.Ltext0
	.long	.LVL27-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL27-1-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL28-.Ltext0
	.long	.LVL29-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL29-1-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LFB13-.Ltext0
	.long	.LCFI2-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST23:
	.long	.LVL30-.Ltext0
	.long	.LVL31-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL31-1-.Ltext0
	.long	.LVL32-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL32-.Ltext0
	.long	.LVL33-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL33-1-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 -128
	.byte	0x9f
	.long	.LVL36-.Ltext0
	.long	.LVL37-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL37-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL34-.Ltext0
	.long	.LVL38-1-.Ltext0
	.word	0x1
	.byte	0x66
	.long	.LVL38-1-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LFB18-.Ltext0
	.long	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI3-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST27:
	.long	.LVL42-.Ltext0
	.long	.LVL43-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL43-1-.Ltext0
	.long	.LVL49-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL50-.Ltext0
	.long	.LVL52-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL52-.Ltext0
	.long	.LVL53-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL53-1-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL43-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL50-.Ltext0
	.long	.LVL51-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST29:
	.long	.LVL44-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST30:
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL48-.Ltext0
	.long	.LVL50-1-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 -128
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LFB19-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST32:
	.long	.LVL54-.Ltext0
	.long	.LVL55-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL56-.Ltext0
	.long	.LVL59-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LVL56-.Ltext0
	.long	.LVL57-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL58-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LFB20-.Ltext0
	.long	.LCFI6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST35:
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL61-.Ltext0
	.long	.LVL63-.Ltext0
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL63-.Ltext0
	.long	.LVL66-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL62-.Ltext0
	.long	.LVL64-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL65-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST37:
	.long	.LVL61-.Ltext0
	.long	.LVL64-1-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64-1-.Ltext0
	.long	.LVL65-.Ltext0
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL65-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST39:
	.long	.LFB21-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST40:
	.long	.LVL67-.Ltext0
	.long	.LVL69-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL69-.Ltext0
	.long	.LVL83-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL83-.Ltext0
	.long	.LVL84-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL84-1-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL68-.Ltext0
	.long	.LVL70-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x467a0000
	.long	0
	.long	0
.LLST42:
	.long	.LVL68-.Ltext0
	.long	.LVL70-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x487a0000
	.long	0
	.long	0
.LLST43:
	.long	.LVL68-.Ltext0
	.long	.LVL70-.Ltext0
	.word	0x5
	.byte	0x8
	.byte	0xfa
	.byte	0x3a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST45:
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x479c4000
	.long	0
	.long	0
.LLST46:
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.word	0x6
	.byte	0xc
	.long	0x13880
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST48:
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44800000
	.long	0
	.long	0
.LLST49:
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.word	0x4
	.byte	0xa
	.word	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL75-.Ltext0
	.long	.LVL76-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST51:
	.long	.LVL75-.Ltext0
	.long	.LVL76-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44800000
	.long	0
	.long	0
.LLST52:
	.long	.LVL75-.Ltext0
	.long	.LVL76-.Ltext0
	.word	0x4
	.byte	0xa
	.word	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST54:
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44800000
	.long	0
	.long	0
.LLST55:
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.word	0x4
	.byte	0xa
	.word	0x400
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB40-.Ltext0
	.long	.LBE40-.Ltext0
	.long	.LBB43-.Ltext0
	.long	.LBE43-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums"
.LASF25:
	.string	"addressCounter"
.LASF28:
	.string	"lcd_puts"
.LASF18:
	.string	"lcd_command"
.LASF21:
	.string	"lcd_clrscr"
.LASF13:
	.string	"__us"
.LASF37:
	.string	"__builtin_avr_delay_cycles"
.LASF14:
	.string	"data"
.LASF15:
	.string	"toggle_e"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"lcd_gotoxy"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"lcd_init"
.LASF16:
	.string	"lcd_write"
.LASF19:
	.string	"lcd_data"
.LASF12:
	.string	"double"
.LASF10:
	.string	"__tmp"
.LASF22:
	.string	"lcd_home"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"_delay_us"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF33:
	.string	"dispAttr"
.LASF31:
	.string	"__addr16"
.LASF32:
	.string	"__result"
.LASF40:
	.string	"lcd_getxy"
.LASF8:
	.string	"long long int"
.LASF29:
	.string	"lcd_puts_p"
.LASF36:
	.string	"/mnt/e/Education/Academic/3rd YEAR/5th Sem/CO321-Embedded Systems/labs/lab07"
.LASF11:
	.string	"__ticks_dc"
.LASF38:
	.string	"lcd_read"
.LASF30:
	.string	"progmem_s"
.LASF3:
	.string	"uint16_t"
.LASF24:
	.string	"lcd_newline"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF27:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"lcd_putc"
.LASF39:
	.string	"lcd_waitbusy"
.LASF35:
	.string	"lcd.c"
.LASF17:
	.string	"dataBits"
	.ident	"GCC: (GNU) 5.4.0"
