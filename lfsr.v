module PNgenerator(input wire clk, input wire reset, output reg Y);
	wire s0;
	reg s1, s2, s3;
	assign s0 = s1 ^ Y ;
	always @(posedge clk) begin
		
			s1 <= s0 & reset | ~reset & 1;
			s2 <= s1 & reset;
			s3 <= s2 & reset;
			Y <= s3 & reset;			

	end
endmodule
