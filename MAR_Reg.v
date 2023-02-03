
//delete
module MAR (
	 input wire clk
	,input wire clr
	,input wire [31:0] data_in
	,input wire reg_32_bits MAR_in
	,output reg [31:0] data_out
	);
	
	MAR mar_inst ((clk), (clr), (we), (d), (q))                          

  always @(posedge clk) begin
    if (MAR_in) data_out <= data_in;
  end
  
endmodule