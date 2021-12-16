//File dec_counter.v

`timescale 1ns / 1ns

module dec_counter(count,clk,reset);
  input clk,reset;
  output reg [3:0] count;
  
  always @(posedge clk) begin
    if (reset) count <= 4'd0;
    else begin
      case (count)
        4'd0,4'd1,4'd2,4'd3,4'd4,4'd5,4'd6,
        4'd7,4'd8,4'd9: count <= count + 1;
        4'd10 : count <= 4'd0;
        default: count <= 4'd0;
      endcase
    end
  end
  
endmodule
    
