`timescale 1ns / 1ps

module SerialSequenceDetector_tb;

	// Inputs
	reg si;
	reg clk;

	// Outputs
	wire detected;

	// Instantiate the Unit Under Test (UUT)
	SerialSequenceDetector uut (
		.si(si), 
		.clk(clk), 
		.detected(detected)
	);

	always #5 clk = ~clk;
	initial begin
	
		si = 0;
		clk = 1;
		
		#10;
		si = 1;
		
		#10;
		si = 0;
		#10;
		si = 1;
		#20;
		si = 0;
		
		$finish;
	end
      
endmodule

