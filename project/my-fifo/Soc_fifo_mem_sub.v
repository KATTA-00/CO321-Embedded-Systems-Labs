// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module SoC_fifo_mem_sub (
                      // inputs:
                       avalonmm_read_slave_read,
                       avalonmm_write_slave_write,
                       avalonmm_write_slave_writedata,
                       reset_n,
                       wrclk_control_slave_address,
                       wrclk_control_slave_read,
                       wrclk_control_slave_write,
                       wrclk_control_slave_writedata,
                       wrclock,

                      // outputs:
                       avalonmm_read_slave_readdata,
                       avalonmm_read_slave_waitrequest,
                       avalonmm_write_slave_waitrequest,
                       wrclk_control_slave_irq,
                       wrclk_control_slave_readdata
                    )
;

  output  [ 31: 0] avalonmm_read_slave_readdata;
  output           avalonmm_read_slave_waitrequest;
  output           avalonmm_write_slave_waitrequest;
  output           wrclk_control_slave_irq;
  output  [ 31: 0] wrclk_control_slave_readdata;
  input            avalonmm_read_slave_read;
  input            avalonmm_write_slave_write;
  input   [ 31: 0] avalonmm_write_slave_writedata;
  input            reset_n;
  input   [  2: 0] wrclk_control_slave_address;
  input            wrclk_control_slave_read;
  input            wrclk_control_slave_write;
  input   [ 31: 0] wrclk_control_slave_writedata;
  input            wrclock;

  wire    [ 31: 0] avalonmm_read_slave_readdata;
  wire             avalonmm_read_slave_waitrequest;
  wire             avalonmm_write_slave_waitrequest;
  wire             clock;
  wire    [ 31: 0] data;
  wire    [ 31: 0] data1;
  wire             empty;
  wire             full;
  wire    [ 31: 0] q;
  wire             rdreq;
  wire             wrclk_control_slave_irq;
  wire    [ 31: 0] wrclk_control_slave_readdata;
  wire             wrreq;
  //the_scfifo_with_controls, which is an e_instance
  MSoC_fifo3to4_scfifo_with_controls the_scfifo_with_controls
    (
      .clock                         (clock),
      .data                          (data),
      .empty                         (empty),
      .full                          (full),
      .q                             (q),
      .rdreq                         (rdreq),
      .reset_n                       (reset_n),
      .wrclk_control_slave_address   (wrclk_control_slave_address),
      .wrclk_control_slave_irq       (wrclk_control_slave_irq),
      .wrclk_control_slave_read      (wrclk_control_slave_read),
      .wrclk_control_slave_readdata  (wrclk_control_slave_readdata),
      .wrclk_control_slave_write     (wrclk_control_slave_write),
      .wrclk_control_slave_writedata (data1),
      .wrreq                         (wrreq)
    );

  //in, which is an e_avalon_slave
  //out, which is an e_avalon_slave
  assign data = avalonmm_write_slave_writedata - 128;
  assign data1 = wrclk_control_slave_writedata - 128;
  assign wrreq = avalonmm_write_slave_write;
  assign avalonmm_read_slave_readdata = q;
  assign rdreq = avalonmm_read_slave_read;
  assign clock = wrclock;
  assign avalonmm_write_slave_waitrequest = full;
  assign avalonmm_read_slave_waitrequest = empty;
  //in_csr, which is an e_avalon_slave

endmodule

