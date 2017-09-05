module clk_div(clk_in, clk_out);
	input clk_in;
	output reg clk_out;
	
	reg [6:0]count;
	always @(posedge clk_in)begin
		count <= count + 1;
		if(count==50)begin
			clk_out <= 1;
		end
		if(count==100)begin
			clk_out <= 0;
			count <= 0;
		end
	end
endmodule