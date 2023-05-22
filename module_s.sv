module module_s(input logic a,b, output logic y1, y2, y3);
//here all we have to do is create and, or gates for y1, y2
and U1(y1, a, b);
or U2(y2, a, b);

//now we have to make an XOR gate, but I don't think that is given to us
//so I will use nand gates to make a xor gate
logic t1, t2, t3;
nand temp1 (t1, a, b);
nand temp2 (t2, a, t1);
nand temp3 (t3, t1, b);

//this should give us an xor gate result for y3
nand U3 (y3, t2, t3);

endmodule