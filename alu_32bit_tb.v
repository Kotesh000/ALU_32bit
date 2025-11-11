`timescale 1ns / 1ps
module alu_32bit_tb();
reg [31:0]a;
reg [31:0]b;
reg [2:0]sel;
wire c,z,n;
wire [31:0]out;
alu_32bit g1(.a(a), .b(b), .sel(sel), .out(out),.c(c),.z(z), .n(n));
initial begin
a=32'b11111111111111111111111111111111;
b=32'b10000000000000000000000000000001;
sel=3'b000;#10
sel=3'b001;#10
sel=3'b010;#10
sel=3'b011;#10
sel=3'b100;#10
sel=3'b101;#10
sel=3'b110;#10
sel=3'b111;#10
$stop;
end
endmodule