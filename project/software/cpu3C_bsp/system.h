/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu3C' in SOPC Builder design 'MSoC'
 * SOPC Builder design path: E:/Education/Academic/workspaces/CO503-Advanced-Embedded-Systems-Labs/lab04/part03/MSoC.sopcinfo
 *
 * Generated: Mon Jun 17 01:18:53 IST 2024
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00020820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1d
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00010020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x12
#define ALT_CPU_NAME "cpu3C"
#define ALT_CPU_RESET_ADDR 0x00010000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00020820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1d
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00010020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x12
#define NIOS2_RESET_ADDR 0x00010000


/*
 * Custom instruction macros
 *
 */

#define ALT_CI_DCT_COMPONENT3C(n,A,B) __builtin_custom_inii(ALT_CI_DCT_COMPONENT3C_N+(n&ALT_CI_DCT_COMPONENT3C_N_MASK),(A),(B))
#define ALT_CI_DCT_COMPONENT3C_N 0x0
#define ALT_CI_DCT_COMPONENT3C_N_MASK ((1<<5)-1)


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_FIFO
#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_QSYS
#define __DCT_COMPONENT
#define __FIFO_MEM_SUB


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart3C"
#define ALT_STDERR_BASE 0x21040
#define ALT_STDERR_DEV jtag_uart3C
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart3C"
#define ALT_STDIN_BASE 0x21040
#define ALT_STDIN_DEV jtag_uart3C
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart3C"
#define ALT_STDOUT_BASE 0x21040
#define ALT_STDOUT_DEV jtag_uart3C
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "MSoC"


/*
 * fifo3to4C_in configuration
 *
 */

#define ALT_MODULE_CLASS_fifo3to4C_in altera_avalon_fifo
#define FIFO3TO4C_IN_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO3TO4C_IN_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO3TO4C_IN_BASE 0x21048
#define FIFO3TO4C_IN_BITS_PER_SYMBOL 16
#define FIFO3TO4C_IN_CHANNEL_WIDTH 8
#define FIFO3TO4C_IN_ERROR_WIDTH 8
#define FIFO3TO4C_IN_FIFO_DEPTH 64
#define FIFO3TO4C_IN_IRQ -1
#define FIFO3TO4C_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFO3TO4C_IN_NAME "/dev/fifo3to4C_in"
#define FIFO3TO4C_IN_SINGLE_CLOCK_MODE 1
#define FIFO3TO4C_IN_SPAN 4
#define FIFO3TO4C_IN_SYMBOLS_PER_BEAT 2
#define FIFO3TO4C_IN_TYPE "altera_avalon_fifo"
#define FIFO3TO4C_IN_USE_AVALONMM_READ_SLAVE 1
#define FIFO3TO4C_IN_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO3TO4C_IN_USE_AVALONST_SINK 0
#define FIFO3TO4C_IN_USE_AVALONST_SOURCE 0
#define FIFO3TO4C_IN_USE_BACKPRESSURE 1
#define FIFO3TO4C_IN_USE_IRQ 1
#define FIFO3TO4C_IN_USE_PACKET 1
#define FIFO3TO4C_IN_USE_READ_CONTROL 0
#define FIFO3TO4C_IN_USE_REGISTER 0
#define FIFO3TO4C_IN_USE_WRITE_CONTROL 1


/*
 * fifo3to4C_in_csr configuration
 *
 */

#define ALT_MODULE_CLASS_fifo3to4C_in_csr altera_avalon_fifo
#define FIFO3TO4C_IN_CSR_AVALONMM_AVALONMM_DATA_WIDTH 32
#define FIFO3TO4C_IN_CSR_AVALONMM_AVALONST_DATA_WIDTH 32
#define FIFO3TO4C_IN_CSR_BASE 0x21020
#define FIFO3TO4C_IN_CSR_BITS_PER_SYMBOL 16
#define FIFO3TO4C_IN_CSR_CHANNEL_WIDTH 8
#define FIFO3TO4C_IN_CSR_ERROR_WIDTH 8
#define FIFO3TO4C_IN_CSR_FIFO_DEPTH 64
#define FIFO3TO4C_IN_CSR_IRQ 4
#define FIFO3TO4C_IN_CSR_IRQ_INTERRUPT_CONTROLLER_ID 0
#define FIFO3TO4C_IN_CSR_NAME "/dev/fifo3to4C_in_csr"
#define FIFO3TO4C_IN_CSR_SINGLE_CLOCK_MODE 1
#define FIFO3TO4C_IN_CSR_SPAN 32
#define FIFO3TO4C_IN_CSR_SYMBOLS_PER_BEAT 2
#define FIFO3TO4C_IN_CSR_TYPE "altera_avalon_fifo"
#define FIFO3TO4C_IN_CSR_USE_AVALONMM_READ_SLAVE 1
#define FIFO3TO4C_IN_CSR_USE_AVALONMM_WRITE_SLAVE 1
#define FIFO3TO4C_IN_CSR_USE_AVALONST_SINK 0
#define FIFO3TO4C_IN_CSR_USE_AVALONST_SOURCE 0
#define FIFO3TO4C_IN_CSR_USE_BACKPRESSURE 1
#define FIFO3TO4C_IN_CSR_USE_IRQ 1
#define FIFO3TO4C_IN_CSR_USE_PACKET 1
#define FIFO3TO4C_IN_CSR_USE_READ_CONTROL 0
#define FIFO3TO4C_IN_CSR_USE_REGISTER 0
#define FIFO3TO4C_IN_CSR_USE_WRITE_CONTROL 1


/*
 * fifosub1to3C_avalonmm_read_slave configuration
 *
 */

#define ALT_MODULE_CLASS_fifosub1to3C_avalonmm_read_slave fifo_mem_sub
#define FIFOSUB1TO3C_AVALONMM_READ_SLAVE_BASE 0x2104c
#define FIFOSUB1TO3C_AVALONMM_READ_SLAVE_IRQ -1
#define FIFOSUB1TO3C_AVALONMM_READ_SLAVE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFOSUB1TO3C_AVALONMM_READ_SLAVE_NAME "/dev/fifosub1to3C_avalonmm_read_slave"
#define FIFOSUB1TO3C_AVALONMM_READ_SLAVE_SPAN 4
#define FIFOSUB1TO3C_AVALONMM_READ_SLAVE_TYPE "fifo_mem_sub"


/*
 * fifosub1to3C_wrclk_control_slave configuration
 *
 */

#define ALT_MODULE_CLASS_fifosub1to3C_wrclk_control_slave fifo_mem_sub
#define FIFOSUB1TO3C_WRCLK_CONTROL_SLAVE_BASE 0x10001000
#define FIFOSUB1TO3C_WRCLK_CONTROL_SLAVE_IRQ -1
#define FIFOSUB1TO3C_WRCLK_CONTROL_SLAVE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FIFOSUB1TO3C_WRCLK_CONTROL_SLAVE_NAME "/dev/fifosub1to3C_wrclk_control_slave"
#define FIFOSUB1TO3C_WRCLK_CONTROL_SLAVE_SPAN 32
#define FIFOSUB1TO3C_WRCLK_CONTROL_SLAVE_TYPE "fifo_mem_sub"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER3C
#define ALT_TIMESTAMP_CLK TIMER3C


/*
 * jtag_uart3C configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart3C altera_avalon_jtag_uart
#define JTAG_UART3C_BASE 0x21040
#define JTAG_UART3C_IRQ 16
#define JTAG_UART3C_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART3C_NAME "/dev/jtag_uart3C"
#define JTAG_UART3C_READ_DEPTH 64
#define JTAG_UART3C_READ_THRESHOLD 8
#define JTAG_UART3C_SPAN 8
#define JTAG_UART3C_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART3C_WRITE_DEPTH 64
#define JTAG_UART3C_WRITE_THRESHOLD 8


/*
 * mem3C configuration
 *
 */

#define ALT_MODULE_CLASS_mem3C altera_avalon_onchip_memory2
#define MEM3C_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define MEM3C_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MEM3C_BASE 0x10000
#define MEM3C_CONTENTS_INFO ""
#define MEM3C_DUAL_PORT 0
#define MEM3C_GUI_RAM_BLOCK_TYPE "AUTO"
#define MEM3C_INIT_CONTENTS_FILE "MSoC_mem3C"
#define MEM3C_INIT_MEM_CONTENT 1
#define MEM3C_INSTANCE_ID "NONE"
#define MEM3C_IRQ -1
#define MEM3C_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEM3C_NAME "/dev/mem3C"
#define MEM3C_NON_DEFAULT_INIT_FILE_ENABLED 0
#define MEM3C_RAM_BLOCK_TYPE "AUTO"
#define MEM3C_READ_DURING_WRITE_MODE "DONT_CARE"
#define MEM3C_SINGLE_CLOCK_OP 0
#define MEM3C_SIZE_MULTIPLE 1
#define MEM3C_SIZE_VALUE 65536
#define MEM3C_SPAN 65536
#define MEM3C_TYPE "altera_avalon_onchip_memory2"
#define MEM3C_WRITABLE 1


/*
 * timer3C configuration
 *
 */

#define ALT_MODULE_CLASS_timer3C altera_avalon_timer
#define TIMER3C_ALWAYS_RUN 0
#define TIMER3C_BASE 0x21000
#define TIMER3C_COUNTER_SIZE 32
#define TIMER3C_FIXED_PERIOD 0
#define TIMER3C_FREQ 50000000
#define TIMER3C_IRQ 0
#define TIMER3C_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER3C_LOAD_VALUE 49999
#define TIMER3C_MULT 0.0010
#define TIMER3C_NAME "/dev/timer3C"
#define TIMER3C_PERIOD 1
#define TIMER3C_PERIOD_UNITS "ms"
#define TIMER3C_RESET_OUTPUT 0
#define TIMER3C_SNAPSHOT 1
#define TIMER3C_SPAN 32
#define TIMER3C_TICKS_PER_SEC 1000.0
#define TIMER3C_TIMEOUT_PULSE_OUTPUT 0
#define TIMER3C_TYPE "altera_avalon_timer"

#endif /* __SYSTEM_H_ */
