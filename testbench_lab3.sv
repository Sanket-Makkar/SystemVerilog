`timescale 1ns/10ps

module testbench_lab3 ();

    logic [2:0] a, b, s;
    logic co;

    rc_adder4 #(
	.N(3)
    ) UUT (
	.a(a),
	.b(b),
	.s(s),
	.co(co)
    );

    initial begin
        a = 0;
        forever begin
            #10 a++;
        end
    end

// COMPLETE BY WRITING AN INITIAL BLOCK FOR b. 
// Set initial value for b equal to 0 and increment b every 20 time units
    initial begin
	b = 0;
	forever begin
	    #20 b++;
	end
     end


    initial begin
        $display("TIME | A B | S CO");   
        $display("-----------------");    
        $monitor("  %2d | %d %d | %d %b", 
            $time, a, b, s, co);         

        #160;
        $finish();
    end

endmodule