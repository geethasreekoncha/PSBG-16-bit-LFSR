
module tb;
	reg clk;
	reg reset;
	wire Y;
	PNgenerator DUT(clk,reset,Y);
	initial begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0, clk,reset,Y);
        reset = 0;
        clk = 0;
        #100; 

        #10 reset = 1;

        #240;
        #20 reset = 0;
        $finish;
    end

    always @(posedge clk) begin
        $monitor("At time = %t, Clk = %b, rst = %b, Y = %b", $time, clk, reset, Y);
    end
	always #10 clk = ~clk;

endmodule



