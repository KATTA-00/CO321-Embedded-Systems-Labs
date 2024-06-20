`include "MUL_Custom_Instruction.v"

`timescale 1ns / 1ps

module MUL_tb;

  reg clk;
  reg reset;
  reg signed [31:0] dataa;
  reg [2:0] n;
  reg clk_en;
  reg start;
  wire done;
  wire signed [31:0] result;

  // Instantiate the MUL_Custom_Instruction module
  MUL_Custom_Instruction UUT (
    .clk(clk),
    .reset(reset),
    .dataa(dataa),
    .n(n),
    .clk_en(clk_en),
    .start(start),
    .done(done),
    .result(result)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize inputs
    clk = 0;
    reset = 1;
    dataa = 0;
    n = 0;
    clk_en = 0;
    start = 0;

    // Apply reset
    #10;
    reset = 0;
    clk_en = 1;

    // Write data to data1
    dataa = 32'd3;
    n = 3'd0;
    start = 1;
    #10;
    start = 0;
    #10;

    // Write data to data2
    dataa = 32'd4;
    n = 3'd1;
    start = 1;
    #10;
    start = 0;
    #10;

    // Read and check result
    n = 3'd2;
    start = 1;
    #10;
    start = 0;
    #10;

    // Display the result
    $display("Result: %d", result);

    // Write data to data1
    dataa = 10;
    n = 3'd0;
    start = 1;
    #10;
    start = 0;
    #10;

    // Write data to data2
    dataa = -150;
    n = 3'd1;
    start = 1;
    #10;
    start = 0;
    #10;

    // Read and check result
    n = 3'd2;
    start = 1;
    #10;
    start = 0;
    #10;

    // Display the result
    $display("Result: %d", result);

    #100
    $finish;
  end

endmodule
