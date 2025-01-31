`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Simple adder circuit to add two 1 byte numbers with carry-in and carry-out bit functionality 
// 
//////////////////////////////////////////////////////////////////////////////////


module simple_adder(val1, val2, c_in, sum, c_out);
    input logic [7:0] val1;
    input logic [7:0] val2;
    input logic c_in;
    output logic [7:0] sum;
    output logic c_out;
    
    logic [8:0] result;
    assign result = val1 + val2 + c_in;
    assign sum = result[7:0];
    assign c_out = result[8];   
endmodule: simple_adder


