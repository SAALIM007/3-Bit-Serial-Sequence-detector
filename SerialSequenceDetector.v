`timescale 1ns / 1ps

module SerialSequenceDetector(
    input si,
    input clk,
    output reg detected
    );

	reg [2:0] CurrentSequence;
	parameter Sequence = 3'b101;
	
	always @(posedge clk)begin
		CurrentSequence <= { CurrentSequence[1:0],si };
		if(CurrentSequence == Sequence)
			detected <= 1'b1;
		else
			detected <= 1'b0;
	end

endmodule
