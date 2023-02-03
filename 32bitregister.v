`timescale 1ns/10ps

module reg_32_bits #(parameter qInitial = 0)(
	input wire [7:0] clk, 
	input wire [7:0] clr,
	input wire [7:0] we, //write enable
	input wire [31:0] d,
	output reg [31:0] q
);
		
	
	initial q = qInitial;
	always@(posedge clk) 
	begin
		if (clr) begin
			q <= 32'b0;
		end
		else if(we) begin
			q <= d;
		end 
	end
endmodule