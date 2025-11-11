`timescale 1ns / 1ps
module alu_32bit(input [31:0]a, input [31:0]b, input [2:0]sel, 
output reg c,z,n, output reg [31:0]out);
always@(*)begin
case (sel)
3'b100 : c=(a+b)>32'b11111111111111111111111111111111;
3'b101 : c=a<b;
default: c=0;
endcase
case(sel)
3'b000: out=~a;
3'b001: out=a|b;
3'b010: out=a&b;
3'b011: out=-a;
3'b100: {c,out}=a+b;
3'b101: {c,out}=a-b;
3'b110: out=a*b;
3'b111: out=(b!=0)?a/b:32'b0;
default: out = 32'b0;
endcase
z = (out==0);
n = out[31];
end
endmodule