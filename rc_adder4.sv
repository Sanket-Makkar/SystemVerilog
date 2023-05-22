module rc_adder4 #(
  parameter N = 3
)( 
  input logic [N-1:0] a,b,
  output logic [N-1:0] s,
  output logic co
);

    logic [N-1:0] c;
    assign c[0] = 0;
    rc_adder_slice UT [N-1:0](
	.a(a),
	.b(b),
	.c_in(c),
	.s(s),
	.c_out(co)
    );

endmodule