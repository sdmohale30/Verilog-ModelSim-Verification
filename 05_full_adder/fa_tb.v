module fa_tb;
reg a,b,cin;
wire s,c;
wire w1,w2,w3;
fa rrr(s,c,a,b);
initial begin
$monitor("a=%b|b%b|cin=%b|s=%b|c=%b",a,b,cin,s,c);
a=0;b=0;cin=0;#10;
a=0;b=0;cin=1;#10;
a=0;b=1;cin=0;#10;
a=0;b=1;cin=1;#10;
a=1;b=0;cin=0;#10;
a=1;b=0;cin=1;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=1;#10;
end
endmodule



