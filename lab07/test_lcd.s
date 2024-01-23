	.file	"test_lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"LCD Test 5\n"
.LC1:
	.string	"CurOn"
.LC2:
	.string	"Copyright: "
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB11:
	.file 1 "test_lcd.c"
	.loc 1 27 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI2:
	.cfi_def_cfa_register 28
	sbiw r28,7
.LCFI3:
	.cfi_def_cfa_offset 11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL0:
	.loc 1 33 0
	ldi r24,lo8(12)
	call lcd_init
.LVL1:
.L3:
	.loc 1 41 0
	call lcd_clrscr
.LVL2:
	.loc 1 44 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call lcd_puts
.LVL3:
	.loc 1 47 0
	ldi r22,lo8(1)
	ldi r24,lo8(7)
	call lcd_gotoxy
.LVL4:
	.loc 1 50 0
	ldi r24,lo8(58)
	call lcd_putc
.LVL5:
.LBB29:
.LBB30:
	.file 2 "/usr/lib/avr/include/util/delay.h"
	.loc 2 187 0
	ldi r18,lo8(15999999)
	ldi r24,hi8(15999999)
	ldi r25,hlo8(15999999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL6:
.LBE30:
.LBE29:
	.loc 1 54 0
	call lcd_clrscr
.LVL7:
.LBB31:
.LBB32:
	.loc 2 187 0
	ldi r30,lo8(3199999)
	ldi r31,hi8(3199999)
	ldi r18,hlo8(3199999)
1:	subi r30,1
	sbci r31,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
.LVL8:
.LBE32:
.LBE31:
	.loc 1 62 0
	ldi r24,lo8(14)
	call lcd_command
.LVL9:
	.loc 1 65 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call lcd_puts
.LVL10:
.LBB33:
.LBB34:
	.loc 2 187 0
	ldi r24,lo8(15999999)
	ldi r25,hi8(15999999)
	ldi r30,hlo8(15999999)
1:	subi r24,1
	sbci r25,0
	sbci r30,0
	brne 1b
	rjmp .
	nop
.LVL11:
.LBE34:
.LBE33:
	.loc 1 73 0
	call lcd_clrscr
.LVL12:
.LBB35:
.LBB36:
	.loc 2 187 0
	ldi r31,lo8(3199999)
	ldi r18,hi8(3199999)
	ldi r24,hlo8(3199999)
1:	subi r31,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.LVL13:
.LBE36:
.LBE35:
	.loc 1 77 0
	ldi r24,lo8(__c.2071)
	ldi r25,hi8(__c.2071)
	call lcd_puts_p
.LVL14:
	.loc 1 78 0
	ldi r24,lo8(__c.2073)
	ldi r25,hi8(__c.2073)
	call lcd_puts_p
.LVL15:
	.loc 1 81 0
	ldi r24,lo8(24)
	call lcd_command
.LVL16:
.LBB37:
.LBB38:
	.loc 2 187 0
	ldi r25,lo8(15999999)
	ldi r30,hi8(15999999)
	ldi r31,hlo8(15999999)
1:	subi r25,1
	sbci r30,0
	sbci r31,0
	brne 1b
	rjmp .
	nop
.LVL17:
.LBE38:
.LBE37:
	.loc 1 86 0
	ldi r24,lo8(12)
	call lcd_command
.LVL18:
.LBB39:
.LBB40:
	.loc 2 187 0
	ldi r18,lo8(3199999)
	ldi r24,hi8(3199999)
	ldi r25,hlo8(3199999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL19:
.LBE40:
.LBE39:
	.loc 1 93 0
	call lcd_clrscr
.LVL20:
.LBB41:
.LBB42:
	.loc 2 187 0
	ldi r30,lo8(3199999)
	ldi r31,hi8(3199999)
	ldi r18,hlo8(3199999)
1:	subi r30,1
	sbci r31,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
.LVL21:
.LBE42:
.LBE41:
.LBB43:
.LBB44:
	.file 3 "/usr/lib/avr/include/stdlib.h"
	.loc 3 439 0
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(-122)
	ldi r25,0
	call __itoa_ncheck
.LVL22:
.LBE44:
.LBE43:
	.loc 1 100 0
	movw r24,r28
	adiw r24,1
	call lcd_puts
.LVL23:
.LBB45:
.LBB46:
	.loc 2 187 0
	ldi r24,lo8(15999999)
	ldi r25,hi8(15999999)
	ldi r30,hlo8(15999999)
1:	subi r24,1
	sbci r25,0
	sbci r30,0
	brne 1b
	rjmp .
	nop
.LVL24:
.LBE46:
.LBE45:
	.loc 1 109 0
	call lcd_clrscr
.LVL25:
.LBB47:
.LBB48:
	.loc 2 187 0
	ldi r31,lo8(3199999)
	ldi r18,hi8(3199999)
	ldi r24,hlo8(3199999)
1:	subi r31,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.LVL26:
.LBE48:
.LBE47:
	.loc 1 111 0
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	call lcd_puts
.LVL27:
	.loc 1 117 0
	ldi r24,lo8(64)
	call lcd_command
.LVL28:
	ldi r16,lo8(copyRightChar)
	ldi r17,hi8(copyRightChar)
.LVL29:
.L2:
.LBB49:
	.loc 1 119 0 discriminator 3
	movw r30,r16
/* #APP */
 ;  119 "test_lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL30:
/* #NOAPP */
.LBE49:
	.loc 1 119 0 discriminator 3
	call lcd_data
.LVL31:
	subi r16,-1
	sbci r17,-1
.LVL32:
	.loc 1 118 0 discriminator 3
	ldi r31,hi8(copyRightChar+16)
	cpi r16,lo8(copyRightChar+16)
	cpc r17,r31
	brne .L2
	.loc 1 124 0
	ldi r22,lo8(1)
	ldi r24,0
	call lcd_gotoxy
.LVL33:
	.loc 1 127 0
	ldi r24,0
	call lcd_putc
.LVL34:
	.loc 1 128 0
	ldi r24,lo8(1)
	call lcd_putc
.LVL35:
.LBB50:
.LBB51:
	.loc 2 187 0
	ldi r18,lo8(15999999)
	ldi r24,hi8(15999999)
	ldi r25,hlo8(15999999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	rjmp .L3
.LBE51:
.LBE50:
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.progmem.data,"a",@progbits
	.type	__c.2073, @object
	.size	__c.2073, 33
__c.2073:
	.string	"Line 2 longer than 14 characters"
	.type	__c.2071, @object
	.size	__c.2071, 34
__c.2071:
	.string	"Line 1 longer than 14 characters\n"
	.type	copyRightChar, @object
	.size	copyRightChar, 16
copyRightChar:
	.byte	7
	.byte	8
	.byte	19
	.byte	20
	.byte	20
	.byte	19
	.byte	8
	.byte	7
	.byte	0
	.byte	16
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	16
	.byte	0
	.text
.Letext0:
	.file 4 "/usr/lib/avr/include/stdint.h"
	.file 5 "lcd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6a4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0xc
	.long	.LASF32
	.long	.LASF33
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x4
	.byte	0x7e
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x4
	.byte	0x80
	.long	0x29
	.uleb128 0x4
	.long	.LASF6
	.byte	0x4
	.byte	0x82
	.long	0x6d
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
	.long	.LASF34
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0xbb
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0xa6
	.long	0xbb
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0xa8
	.long	0xbb
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xac
	.long	0x62
	.uleb128 0x8
	.byte	0x1
	.long	.LASF35
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x9
	.byte	0x1
	.long	.LASF36
	.byte	0x3
	.word	0x1ad
	.byte	0x1
	.long	0x130
	.byte	0x3
	.long	0x130
	.uleb128 0xa
	.long	.LASF14
	.byte	0x3
	.word	0x1ad
	.long	0x30
	.uleb128 0xb
	.string	"__s"
	.byte	0x3
	.word	0x1ad
	.long	0x130
	.uleb128 0xa
	.long	.LASF15
	.byte	0x3
	.word	0x1ad
	.long	0x30
	.uleb128 0xc
	.long	0x11e
	.uleb128 0xd
	.byte	0x1
	.long	.LASF37
	.byte	0x3
	.word	0x1b0
	.byte	0x1
	.long	0x130
	.byte	0x1
	.uleb128 0xe
	.long	0x30
	.uleb128 0xe
	.long	0x130
	.uleb128 0xe
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x10
	.byte	0x1
	.long	.LASF22
	.byte	0x3
	.word	0x1b6
	.byte	0x1
	.long	0x130
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x136
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF16
	.uleb128 0x12
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	0x30
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST0
	.byte	0x1
	.long	0x5e7
	.uleb128 0x13
	.long	.LASF17
	.byte	0x1
	.byte	0x1c
	.long	0x5e7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0x1d
	.long	0x30
	.byte	0x86
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.long	0x50
	.long	.LLST1
	.uleb128 0x16
	.long	0x82
	.long	.LBB29
	.long	.LBE29
	.byte	0x1
	.byte	0x34
	.long	0x1bc
	.uleb128 0x17
	.long	0x8f
	.long	.LLST2
	.uleb128 0x18
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x19
	.long	0x9a
	.long	.LLST3
	.uleb128 0x19
	.long	0xa5
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB31
	.long	.LBE31
	.byte	0x1
	.byte	0x37
	.long	0x1f5
	.uleb128 0x17
	.long	0x8f
	.long	.LLST5
	.uleb128 0x18
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x19
	.long	0x9a
	.long	.LLST6
	.uleb128 0x19
	.long	0xa5
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.byte	0x43
	.long	0x22e
	.uleb128 0x17
	.long	0x8f
	.long	.LLST8
	.uleb128 0x18
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x19
	.long	0x9a
	.long	.LLST9
	.uleb128 0x19
	.long	0xa5
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB35
	.long	.LBE35
	.byte	0x1
	.byte	0x4a
	.long	0x267
	.uleb128 0x17
	.long	0x8f
	.long	.LLST11
	.uleb128 0x18
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x19
	.long	0x9a
	.long	.LLST12
	.uleb128 0x19
	.long	0xa5
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB37
	.long	.LBE37
	.byte	0x1
	.byte	0x53
	.long	0x2a0
	.uleb128 0x17
	.long	0x8f
	.long	.LLST14
	.uleb128 0x18
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x19
	.long	0x9a
	.long	.LLST15
	.uleb128 0x19
	.long	0xa5
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB39
	.long	.LBE39
	.byte	0x1
	.byte	0x57
	.long	0x2d9
	.uleb128 0x17
	.long	0x8f
	.long	.LLST17
	.uleb128 0x18
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x19
	.long	0x9a
	.long	.LLST18
	.uleb128 0x19
	.long	0xa5
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB41
	.long	.LBE41
	.byte	0x1
	.byte	0x5e
	.long	0x312
	.uleb128 0x17
	.long	0x8f
	.long	.LLST20
	.uleb128 0x18
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x19
	.long	0x9a
	.long	.LLST21
	.uleb128 0x19
	.long	0xa5
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xc2
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.byte	0x61
	.long	0x36c
	.uleb128 0x17
	.long	0xed
	.long	.LLST23
	.uleb128 0x1a
	.long	0xe1
	.uleb128 0x17
	.long	0xd5
	.long	.LLST24
	.uleb128 0x18
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x1b
	.long	.LVL22
	.long	0x629
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x86
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.byte	0x66
	.long	0x3a5
	.uleb128 0x17
	.long	0x8f
	.long	.LLST25
	.uleb128 0x18
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x19
	.long	0x9a
	.long	.LLST26
	.uleb128 0x19
	.long	0xa5
	.long	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.byte	0x6e
	.long	0x3de
	.uleb128 0x17
	.long	0x8f
	.long	.LLST28
	.uleb128 0x18
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x19
	.long	0x9a
	.long	.LLST29
	.uleb128 0x19
	.long	0xa5
	.long	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LBB49
	.long	.LBE49
	.long	0x40a
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.byte	0x77
	.long	0x57
	.long	.LLST31
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x1
	.byte	0x77
	.long	0x45
	.long	.LLST32
	.byte	0
	.uleb128 0x16
	.long	0x82
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.byte	0x82
	.long	0x445
	.uleb128 0x1f
	.long	0x8f
	.byte	0x4
	.long	0x459c4000
	.uleb128 0x18
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x20
	.long	0x9a
	.byte	0x4
	.long	0x4c989680
	.uleb128 0x21
	.long	0xa5
	.long	0x4c4b400
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL1
	.long	0x637
	.long	0x458
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x23
	.long	.LVL2
	.long	0x645
	.uleb128 0x22
	.long	.LVL3
	.long	0x653
	.long	0x47d
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.uleb128 0x22
	.long	.LVL4
	.long	0x661
	.long	0x495
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL5
	.long	0x66f
	.long	0x4a9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.uleb128 0x23
	.long	.LVL7
	.long	0x645
	.uleb128 0x22
	.long	.LVL9
	.long	0x67d
	.long	0x4c5
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x22
	.long	.LVL10
	.long	0x653
	.long	0x4e1
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.uleb128 0x23
	.long	.LVL12
	.long	0x645
	.uleb128 0x22
	.long	.LVL14
	.long	0x68b
	.long	0x506
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2071
	.byte	0
	.uleb128 0x22
	.long	.LVL15
	.long	0x68b
	.long	0x522
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2073
	.byte	0
	.uleb128 0x22
	.long	.LVL16
	.long	0x67d
	.long	0x535
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.long	.LVL18
	.long	0x67d
	.long	0x548
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x23
	.long	.LVL20
	.long	0x645
	.uleb128 0x22
	.long	.LVL23
	.long	0x653
	.long	0x56a
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x23
	.long	.LVL25
	.long	0x645
	.uleb128 0x22
	.long	.LVL27
	.long	0x653
	.long	0x58f
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.uleb128 0x22
	.long	.LVL28
	.long	0x67d
	.long	0x5a3
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.long	.LVL31
	.long	0x699
	.uleb128 0x22
	.long	.LVL33
	.long	0x661
	.long	0x5c4
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL34
	.long	0x66f
	.long	0x5d7
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LVL35
	.long	0x66f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x136
	.long	0x5f7
	.uleb128 0x25
	.long	0x5f7
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF20
	.uleb128 0x24
	.long	0x60e
	.long	0x60e
	.uleb128 0x25
	.long	0x5f7
	.byte	0xf
	.byte	0
	.uleb128 0x26
	.long	0x50
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0x14
	.long	0x624
	.byte	0x5
	.byte	0x3
	.long	copyRightChar
	.uleb128 0x26
	.long	0x5fe
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF22
	.long	.LASF22
	.byte	0x3
	.word	0x1b6
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF23
	.long	.LASF23
	.byte	0x5
	.word	0x129
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF24
	.long	.LASF24
	.byte	0x5
	.word	0x130
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF25
	.long	.LASF25
	.byte	0x5
	.word	0x151
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x5
	.word	0x141
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF27
	.long	.LASF27
	.byte	0x5
	.word	0x149
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF28
	.long	.LASF28
	.byte	0x5
	.word	0x162
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF29
	.long	.LASF29
	.byte	0x5
	.word	0x15a
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF30
	.long	.LASF30
	.byte	0x5
	.word	0x16c
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
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
	.uleb128 0x4
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x87
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB11
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI3
	.long	.LFE11
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.word	0x9
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	copyRightChar
	.byte	0x1c
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.word	0xb
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	copyRightChar
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL32
	.long	.LFE11
	.word	0x9
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	copyRightChar
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4c989680
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0xc
	.long	0x4c4b400
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4b742400
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0xc
	.long	0xf42400
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST9:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4c989680
	.long	0
	.long	0
.LLST10:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0xc
	.long	0x4c4b400
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST12:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4b742400
	.long	0
	.long	0
.LLST13:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0xc
	.long	0xf42400
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST15:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4c989680
	.long	0
	.long	0
.LLST16:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0xc
	.long	0x4c4b400
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST18:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4b742400
	.long	0
	.long	0
.LLST19:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0xc
	.long	0xf42400
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST21:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4b742400
	.long	0
	.long	0
.LLST22:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0xc
	.long	0xf42400
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL21
	.long	.LVL22
	.word	0x3
	.byte	0x8
	.byte	0x86
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST26:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4c989680
	.long	0
	.long	0
.LLST27:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0xc
	.long	0x4c4b400
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST29:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4b742400
	.long	0
	.long	0
.LLST30:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0xc
	.long	0xf42400
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL29
	.long	.LVL32
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE11
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL30
	.long	.LVL31-1
	.word	0x1
	.byte	0x68
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB11
	.long	.LFE11
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums"
.LASF21:
	.string	"copyRightChar"
.LASF25:
	.string	"lcd_puts"
.LASF32:
	.string	"test_lcd.c"
.LASF24:
	.string	"lcd_clrscr"
.LASF18:
	.string	"__addr16"
.LASF37:
	.string	"__itoa"
.LASF14:
	.string	"__val"
.LASF35:
	.string	"__builtin_avr_delay_cycles"
.LASF22:
	.string	"__itoa_ncheck"
.LASF36:
	.string	"itoa"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"lcd_gotoxy"
.LASF7:
	.string	"long unsigned int"
.LASF23:
	.string	"lcd_init"
.LASF34:
	.string	"_delay_ms"
.LASF19:
	.string	"__result"
.LASF30:
	.string	"lcd_data"
.LASF12:
	.string	"double"
.LASF10:
	.string	"__tmp"
.LASF38:
	.string	"main"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF20:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF29:
	.string	"lcd_puts_p"
.LASF33:
	.string	"/mnt/e/Education/Academic/3rd YEAR/5th Sem/CO321-Embedded Systems/labs/lab07"
.LASF16:
	.string	"char"
.LASF11:
	.string	"__ticks_dc"
.LASF17:
	.string	"buffer"
.LASF5:
	.string	"uint16_t"
.LASF28:
	.string	"lcd_command"
.LASF6:
	.string	"uint32_t"
.LASF1:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"lcd_putc"
.LASF13:
	.string	"__ms"
.LASF15:
	.string	"__radix"
	.ident	"GCC: (GNU) 5.4.0"
.global __do_copy_data
