`include "MUL_Component.v"

`timescale 1ns / 1ps

module MUL_Custom_Instruction(clk,
                              reset,
                              dataa,
                              n,
                              clk_en,
                              start,
							done,
                              result);


  input clk;
  input reset;
  input signed [31:0] dataa;  
  input [2:0] n;
  input clk_en;
  input start;
  output done;
  output signed [31:0] result;

  wire [1:0] address;
  wire write;
  wire read;
  reg done_delay;

  assign write = (n<2);
  assign read = (n>1);
 assign address = (n == 0) ? 2'b00 : (n == 1) ? 2'b01 : 2'b10;
                   
  assign done = (n>1)? done_delay : start;

  always @ (posedge clk or posedge reset)
  begin
    // $display("Done: %d, Start = %d", done, start);
  if (reset)
		done_delay <= 0;
  else
		done_delay <= start;
  end

  /* 
    Instantiating the Avalon CRC component and wiring it to be
    custom instruction compilant
  */
  MUL_Component wrapper_wiring(.clk(clk),
                               .reset(reset),
                               .address(address),
                               .writedata(dataa),
                               .write(write & start),
                               .read(read),
                               .chipselect(clk_en),
                               .readdata(result));


endmodule
