`timescale 1ns / 1ps

module SerialSequenceDetector_tb;

	// Inputs
	reg si;
	reg clk;

	// Outputs
	wire detected;

	// Parameters for testing
	parameter NoOfTestingBits = 10;
	
	// Seed for random number
	
	integer seed = 4;
	
	
	// Instantiate the Unit Under Test (UUT)
	SerialSequenceDetector uut (
		.si(si), 
		.clk(clk), 
		.detected(detected)
	);

	integer i;
	
	always #5 clk = ~clk;
	initial begin
	
		si = 0;
		clk = 1;
		
		for(i = 0;i<NoOfTestingBits;i=i+1)begin
			#10;
			si = $random(seed);
		end
		
		$finish;
	end
      
endmodule

