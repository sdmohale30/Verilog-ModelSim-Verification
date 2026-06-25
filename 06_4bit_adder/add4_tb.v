module add4_tb;
reg [3:0]a,b;
wire [4:0]s;
wire [2:0]c;
add4 rrr(s,a,b);
initial begin
$monitor("a=%d|b=%d|s=%d",a,b,s);
a=4'b0110;#10;
b=4'b1010;#10;
end
endmodule



