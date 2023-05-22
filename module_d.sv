module module_d(input logic a,b, output logic y1, y2, y3);

assign y1 = a & b;

// Complete for OR and XOR gates
assign y2 =  a | b;

//xor is remaining now
//based on diagram below
//a    b     y3
//0    0     0
//0    1     1 * 
//1    0     1 *
//1    1     0
//we get the equation: (a & (~b)) | (b & (~a))

assign y3 = (a & (~b)) | (b & (~a));

endmodule
