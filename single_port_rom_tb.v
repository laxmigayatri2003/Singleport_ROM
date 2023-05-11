`timescale 1ns / 1ps
 `define clkperiodby2 5 // Specify the frequency of operation as 100 MHz
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2023 09:48:35 AM
// Design Name: 
// Module Name: single_port_rom_tb
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


module single_port_rom_tb;
       wire [7:0] d ; 
       reg clk ; 
       reg [5:0] a ;  
single_port_rom romq1( 
     .clk(clk), 
     .a(a), 
     .d(d) 
 ) ; 
integer count ; // count is an integer variable. 
initial 
  begin 
     clk = 1'b0 ; // Initialize the clock and 
      #7 a = 0 ; // address. 
for (count = 0; count < 64; count = count+1) // count = 0-63. 
      #10 a = count ; // Apply new address 
 // every 10 ns a = 0-63. 
 
#200 // Stop after some time. 
$stop ; 
end 
always 
 #`clkperiodby2 clk <= ~clk ; // Generate 100 MHz clock. 
endmodule
