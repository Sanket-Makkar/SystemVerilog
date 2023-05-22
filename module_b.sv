module module_b(input logic a,b, output logic y1, y2, y3);

always_comb
begin
y1 = a & b;
end

// Complete for OR and XOR gates
 always_comb begin
y2 = a | b;
end


endmodule