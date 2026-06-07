`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2026 14:38:43
// Design Name: 
// Module Name: ram
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


module ram( input rst,clk,input wrebl, input[2:0] wraddress,input [7:0] datain,input [2:0] rdaddress ,output reg [7:0] dataout

    );// 8*8 ram , 8 location , 8 address each location store 8 bit of data
    
    reg  [7:0] mem [7:0];// 8 location , each location contain 8 bit of data
    integer i;
    
    always@(posedge clk or posedge rst)// implement whn rising cloc edge or rst from 0 to 1
         begin
            if(rst) begin
              for(i=0 ; i<8 ; i=i+1)// calc all possible iteration from m[7] to m[0]
              mem[i]=0;// set all iteration to 0;
              end
              
              else if(wrebl)// wrebl=1(write address and store data )
              mem[wraddress]<= datain;// in memory data is stored in selected adress ie adres 3 data in =5 then data i stored in 3 adress and the data is 5
              //meaning mem[3]=5// data 5 is stored in 3 adresss..
              
              else if(wrebl==0)// wrebl=0 (read address and give data out )
              dataout<=mem[rdaddress];// meaning data out= mem[3]; we kmow mem[3]=5 which we stored earlier 
              //so dataout=mem[3]=5 ; dataout=5;
              end
               
             
endmodule
