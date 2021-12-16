//File?tb_seq_detect.v

`timescale 1ns/1ns

`include "seq_detect.v"

module tb_seq_detect();
  reg din,clk,rst_n;
  wire flag;
  reg [31:0] data;
  
  seq_detect a(flag,din,clk,rst_n);
  
  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end
  
  initial begin
    rst_n = 0;
    #50 rst_n = 1;
  end
  
  initial begin
    data = 32'b1100_0110_0100_0110_1010_0100_1010_0010;
    repeat(31) begin
      #20;
      din = data[31];
      data = data << 1;
    end
  end
    
endmodule