`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 22:52:34
// Design Name: 
// Module Name: INTRODUCTION_TO_DLD
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


module Digital_system(
input power_in, manual_in, 
input [6:0] temp_set,temp_sensor,
output power_out, FAN
    );
reg FAN;   
    
    assign power_out = power_in;   
    always @ (power_in, temp_sensor, manual_in, temp_set) begin
        if (power_in) begin 
         
            if (temp_sensor >= temp_set || manual_in == 1) begin
                FAN = 1;
                end
            
            else begin
            FAN = 0;
            end
        end
        
        else begin
            FAN = 0;
        end
   end
  
endmodule
