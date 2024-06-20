
`timescale 1ns / 1ps

module MUL_Component (
    input clk,
    input reset,
    input [1:0] address,
    input signed [31:0] writedata,
    input write,
    input read,
    input chipselect,
    output reg signed [31:0] readdata
);

    // reg to store input and reuslt
    reg signed [31:0] data1, data2;
    wire signed [31:0] result;

    assign result = data1 * data2;

    // Main computation and control
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset state
            data1 <= 0;
            data2 <= 0;
            readdata <= 0;
        end else begin

            // Write operation
            if (write && chipselect) begin
                case (address)
                    2'b00: data1 <= writedata;
                    2'b01: data2 <= writedata;
                endcase
            end

            // Read operation
            if (read && chipselect) begin
                readdata <= result;
            end

        end
    end



endmodule
