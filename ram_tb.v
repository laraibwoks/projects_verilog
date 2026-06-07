`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2026 15:46:50
// Design Name: 
// Module Name: ram_tb
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


module ram_tb(

    );
    reg rst,clk;
    reg wrebl; 
    reg[3:0] wraddress;
    reg [7:0] datain;
     reg [3:0] rdaddress;
     wire [7:0] dataout; 
     
     
     ram dut(rst,clk,wrebl,wraddress,datain,rdaddress,dataout);
     
     always#5 clk = ~clk;
     
     initial 
     begin
     rst=1;
     clk=0;
     wrebl=0;
     wraddress=0;
     rdaddress=0;
     datain=0;
     
   
     
     #10;
     
     rst=0;
     wrebl=1;
     wraddress=3'b101;
     datain=5;
     #20;
     
      wrebl=0;
     rdaddress=3'b101;
     #20;
     
     wrebl=1;
     wraddress=3'b011;
     datain=10;
     #20;
     
     wrebl=0;
     rdaddress=3'b011;
     
     #100;
     $finish;
     end
     

endmodule
