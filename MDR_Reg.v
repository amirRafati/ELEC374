module MDR_Reg (
	 input wire clk
	,input wire clr
	//,input wire Read
	//,input wire [31:0] data_in_Bus_Mux_Out
	//,input wire [31:0] data_in_Mdatain
	,input wire reg_32_bits MDR_in
	,output reg [31:0] data_out
	
	);
	
	//input wire [31:0] data_in
	
	MDR mdr_inst ((clk), (clr), (we), (d), (q))
	
  /*
  always @(posedge clk) begin
  if (signal)
	assign bus = MDR_in ? data_in_Bus_Mux_Out : data_out;
	
	else 
		assign bus = MDR_in ? data_in_Mdatain : data_out;
  end 
	*/
	
  	always@(posedge clk) 
	begin
		if (clr) begin
			data_out <= 32'b0;
		end
		else if(we) begin
			data_out <= MDR_in;
		end 
	end
endmodule