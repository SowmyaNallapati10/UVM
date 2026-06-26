`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 09:28:20
// Design Name: 
// Module Name: Setup
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*
module Setup();
   initial begin
    #5
    $display("Hello CDAC : $display  %0t ns", $time);
   end
endmodule
*/

`include "uvm_macros.svh"
import uvm_pkg::*;
module tb;
initial begin
    $display("Hello CDAC : $display @ %0t", $time);
    `uvm_info("TB_TOP", "Hello CDAC", UVM_MEDIUM); //ID, MSG, VERBOSITY
end
endmodule