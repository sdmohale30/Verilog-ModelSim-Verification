module add4(s,a,b);
input [3:0]a,b;
output [4:0]s;
wire [2:0]c;
fa fa0(s[0],c[0],a[0],b[0],1'b0);
fa fa1(s[1],c[1],a[1],b[1],c[0]);
fa fa2(s[2],c[2],a[2],b[2],c[1]);
fa fa3(s[3],s[4],a[3],b[3],c[2]);
endmodule
