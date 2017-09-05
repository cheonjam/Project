`define data_zero 14'b0000000_0000000

`define d0 14'b0001000_1000000
`define d1 14'b0001000_1000000
`define d2 14'b0001000_1000000
`define d3 14'b0000100_0100000
`define d4 14'b0000010_0010000
`define d5 14'b0000111_1111101
`define d6 14'b0011000_0000110
`define d7 14'b0100001_1111100
`define d8 14'b0010010_0000000
`define d9 14'b0001100_0000000

`define d10 14'b0000100_0100000
`define d11 14'b0001000_1000000
`define d12 14'b0001000_1000000
`define d13 14'b0000100_0100000
`define d14 14'b0000010_0010000
`define d15 14'b0000111_1111101
`define d16 14'b0011000_0000110
`define d17 14'b0100001_1111100
`define d18 14'b0010010_0000000
`define d19 14'b0001100_0000000

`define d20 14'b0000010_0010000
`define d21 14'b0000100_0100000
`define d22 14'b0000100_0100000
`define d23 14'b0000100_0100000
`define d24 14'b0000010_0010000
`define d25 14'b0000111_1111101
`define d26 14'b0011000_0000110
`define d27 14'b0100001_1111100
`define d28 14'b0010010_0000000
`define d29 14'b0001100_0000000

`define d30 14'b0000001_0001000
`define d31 14'b0000010_0010000
`define d32 14'b0000010_0010000
`define d33 14'b0000100_0100000
`define d34 14'b0000010_0010000
`define d35 14'b0000111_1111101
`define d36 14'b0011000_0000110
`define d37 14'b0100001_1111100
`define d38 14'b0010010_0000000
`define d39 14'b0001100_0000000

`define d40 14'b0000000_1000100
`define d41 14'b0000001_0001000
`define d42 14'b0000010_0010000
`define d43 14'b0000100_0100000
`define d44 14'b0000010_0010000
`define d45 14'b0000111_1111101
`define d46 14'b0011000_0000110
`define d47 14'b0100001_1111100
`define d48 14'b0010010_0000000
`define d49 14'b0001100_0000000

module dot_matrix(clk, reset, dot_data0, dot_data1, dot_data2, dot_data3,
dot_data4, dot_data5, dot_data6, dot_data7, dot_data8,dot_data9);

	input clk, reset;
	output reg [13:0] dot_data0, dot_data1, dot_data2, dot_data3,dot_data4;
	output reg [13:0] dot_data5, dot_data6, dot_data7, dot_data8,dot_data9;
	reg [2:0] cnt_data;
	reg [6:0] cnt_clk;
	reg clk_6h;
  
	always @(posedge reset or posedge clk) begin
		if(reset==1) begin
			cnt_clk <= 0;
			clk_6h <=0;
		end
		else begin
			if(cnt_clk==6) begin
				cnt_clk <= 0;
				clk_6h <= !clk_6h;
			end
			else begin
				cnt_clk <= cnt_clk+1;
				clk_6h <= clk_6h;
			end
		end
	end

	always @(posedge reset or posedge clk_6h)begin
		if(reset ==1 ) begin
			cnt_data <=0;
		end
		else begin
			if(cnt_data == 3) begin
				cnt_data <= 0;
			end
			else begin
				cnt_data <= cnt_data +1;
			end
		end
	end

	always @(posedge reset or posedge clk_6h)begin	
			case(cnt_data)
				0 : begin
					dot_data0 <= `d0;
					dot_data1 <= `d1;
					dot_data2 <= `d2;
					dot_data3 <= `d3;
					dot_data4 <= `d4;
					dot_data5 <= `d5;
					dot_data6 <= `d6;
					dot_data7 <= `d7;
					dot_data8 <= `d8;
					dot_data9 <= `d9;
				end
				
				1: begin
					dot_data0 <= `d10;
					dot_data1 <= `d11;
					dot_data2 <= `d12;
					dot_data3 <= `d13;
					dot_data4 <= `d14;
					dot_data5 <= `d15;
					dot_data6 <= `d16;
					dot_data7 <= `d17;
					dot_data8 <= `d18;
					dot_data9 <= `d19;
				end
				2: begin
					dot_data0 <= `d20;
					dot_data1 <= `d21;
					dot_data2 <= `d22;
					dot_data3 <= `d23;
					dot_data4 <= `d24;
					dot_data5 <= `d25;
					dot_data6 <= `d26;
					dot_data7 <= `d27;
					dot_data8 <= `d28;
					dot_data9 <= `d29;
				end
				3:begin
					dot_data0 <= `d30;
					dot_data1 <= `d31;
					dot_data2 <= `d32;
					dot_data3 <= `d33;
					dot_data4 <= `d34;
					dot_data5 <= `d35;
					dot_data6 <= `d36;
					dot_data7 <= `d37;
					dot_data8 <= `d38;
					dot_data9 <= `d39;
				end
				4:begin
					dot_data0 <= `d40;
					dot_data1 <= `d41;
					dot_data2 <= `d42;
					dot_data3 <= `d43;
					dot_data4 <= `d44;
					dot_data5 <= `d45;
					dot_data6 <= `d46;
					dot_data7 <= `d47;
					dot_data8 <= `d48;
					dot_data9 <= `d49;
				end
				
				default : dot_data9 <= `data_zero;
			endcase
		end

endmodule
