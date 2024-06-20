`timescale 1ns / 1ps

module Soc_fifo_mem_sub_controller (
                    input  wire            avalonmm_read_slave_read,
                    input  wire            avalonmm_write_slave_write,
                    input  wire  [ 31: 0]  avalonmm_write_slave_writedata,
                    input  wire            reset_n,
                    input  wire  [  2: 0]  wrclk_control_slave_address,
                    input  wire            wrclk_control_slave_read,
                    input  wire            wrclk_control_slave_write,
                    input  wire  [ 31: 0]  wrclk_control_slave_writedata,
                    input  wire            wrclock,

                    output wire  [ 31: 0]  avalonmm_read_slave_readdata,
                    output wire            avalonmm_read_slave_waitrequest,
                    output wire            avalonmm_write_slave_waitrequest,
                    output wire            wrclk_control_slave_irq,
                    output wire  [ 31: 0]  wrclk_control_slave_readdata
                  );

  // Instantiation of the SoC_fifo_mem module
  SoC_fifo_mem_sub u_SoC_fifo_mem_sub (
    .avalonmm_read_slave_read(avalonmm_read_slave_read),
    .avalonmm_write_slave_write(avalonmm_write_slave_write),
    .avalonmm_write_slave_writedata(avalonmm_write_slave_writedata),
    .reset_n(reset_n),
    .wrclk_control_slave_address(wrclk_control_slave_address),
    .wrclk_control_slave_read(wrclk_control_slave_read),
    .wrclk_control_slave_write(wrclk_control_slave_write),
    .wrclk_control_slave_writedata(wrclk_control_slave_writedata),
    .wrclock(wrclock),
    .avalonmm_read_slave_readdata(avalonmm_read_slave_readdata),
    .avalonmm_read_slave_waitrequest(avalonmm_read_slave_waitrequest),
    .avalonmm_write_slave_waitrequest(avalonmm_write_slave_waitrequest),
    .wrclk_control_slave_irq(wrclk_control_slave_irq),
    .wrclk_control_slave_readdata(wrclk_control_slave_readdata)
  );

endmodule
