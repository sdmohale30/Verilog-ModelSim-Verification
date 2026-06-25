module and_gate_tb;
reg a,b;
wire y;
and_gate rrr(y,a,b);
initial begin
$monitor("a=%b|b%b|y=%b",a,b,y);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
endmodule


