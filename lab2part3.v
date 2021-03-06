module Lab2Part3WLC(HEX0,SW);
inout [9:0]SW;
output [6:0] HEX0;
displayLight u0(
.in0(SW[0]),
.in1(SW[1]),
.in2(SW[2]),
.in3(SW[3]),
.out0(HEX0[0]),
.out1(HEX0[1]),
.out2(HEX0[2]),
.out3(HEX0[3]),
.out4(HEX0[4]),
.out5(HEX0[5]),
.out6(HEX0[6])
);
endmodule





module displayLight(in0,in1,in2,in3,out0,out1,out2,out3,out4,out5,out6);
input in0;
input in1;
input in2;
input in3;
output out0;
output out1;
output out2;
output out3;
output out4;
output out5;
output out6;

assign out0=((~in3 & ~in2 & ~in1 & in0)|(~in3 & in2 & ~in1 & ~in0)|(in3&~in2&in1&in0)|(in3&in2&~in1&in0));
assign out1=((~in3&in2&~in1&in0)|(~in3&in2&in1&~in0)|(in3&~in2&in1&in0)|(in3&in2&~in1&~in0)|(in3&in2&in1&~in0)|(in3&in2&in1&in0));
assign out2=((~in3&~in2&in1&~in0)|(in3&in2&~in1&~in0)|(in3&in2&in1&~in0)|(in3&in2&in1&in0));
assign out3=((~in3 &~in2&~in1&in0)|(~in3&in2&~in1&~in0)|(~in3&in2&in1&in0)|(in3&~in2&in1&~in0)|(in3&in2&in1&in0));
assign out4=((~in3&~in2&~in1&in0)|(~in3&~in2&in1&in0)|(~in3&in2&~in1&~in0)|(~in3&in2&~in1&in0)|(~in3&in2&in1&in0)|(in3&~in2&~in1&in0));
assign out5=((~in3&~in2&~in1&in0)|(~in3&~in2&in1&~in0)|(~in3&~in2&in1&in0)|(~in3&in2&in1&in0)|(in3&in2&~in1&in0));
assign out6=((~in3&~in2&~in1&~in0)|(~in3&~in2&~in1&in0)|(~in3&in2&in1&in0)|(in3&in2&~in1&~in0));
endmodule
