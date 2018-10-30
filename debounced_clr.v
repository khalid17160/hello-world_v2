`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2018 11:03:23
// Design Name: 
// Module Name: debounced_clr
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

//debouncer db(.clr(reset),.clk(clk_div19),.debounced_clr(deb_out));

module debouncer( input clr, output debounced_clr, input clk);
    reg delay1,delay2,delay3;
    
    always@ (posedge clk)
    begin
        delay1 <= clr;
        delay2 <= delay1;
        delay3 <= delay2;
    end
    
    assign debounced_clr= delay1 & delay2 & delay3;
endmodule
