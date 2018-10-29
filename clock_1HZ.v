`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2018 16:51:26
// Design Name: 
// Module Name: clock_1HZ
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

//clock_1HZ cd1(.clk_in(fclk),.clk_out(clk_1hz));

module clock_1HZ(input clk_in,output reg clk_out);
reg [25:0] counter;
initial
begin
    counter=0;
    clk_out=0;
end
always@(posedge clk_in)
begin
    if(counter==50000000)
    begin
        counter <=0;
        clk_out<=~clk_out;
    end
    else
        counter=counter+1;    
end
endmodule
