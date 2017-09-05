module bcd_seg(clk, one, ten, baek, cheon, man, sibman, one_meter, ten_meter, baek_meter, bus, segout, common);
	input clk, bus;
	input [3:0] one, ten, baek, cheon, man, sibman;
	input [3:0] one_meter, ten_meter, baek_meter;

	output reg [7:0] segout, common;

	reg [2:0] cnt;
	reg [7:0] one_seg, ten_seg, baek_seg, cheon_seg, man_seg, sibman_seg;
	reg [7:0] onemeter_seg, tenmeter_seg, baekmeter_seg;
	
	always @(*)begin
		case(one)
			4'b0000: one_seg = 8'b0011_1111;
			4'b0001: one_seg = 8'b0000_0110;
			4'b0010: one_seg = 8'b0101_1011;
			4'b0011: one_seg = 8'b0100_1111;
			4'b0100: one_seg = 8'b0110_0110;
			
			4'b0101: one_seg = 8'b0110_1101;
			4'b0110: one_seg = 8'b0111_1101;
			4'b0111: one_seg = 8'b0010_0111;
			4'b1000: one_seg = 8'b0111_1111;
			4'b1001: one_seg = 8'b0110_0111;
			
			default : one_seg = 8'b0000_0000;
		endcase
		case(ten)
			4'b0000: ten_seg = 8'b0011_1111;
			4'b0001: ten_seg = 8'b0000_0110;
			4'b0010: ten_seg = 8'b0101_1011;
			4'b0011: ten_seg = 8'b0100_1111;
			4'b0100: ten_seg = 8'b0110_0110;
			
			4'b0101: ten_seg = 8'b0110_1101;
			4'b0110: ten_seg = 8'b0111_1101;
			4'b0111: ten_seg = 8'b0010_0111;
			4'b1000: ten_seg = 8'b0111_1111;
			4'b1001: ten_seg = 8'b0110_0111;


			
			default : ten_seg = 8'b0000_0000;
		endcase 
		case(baek)
			4'b0000: baek_seg = 8'b0011_1111;
			4'b0001: baek_seg = 8'b0000_0110;
			4'b0010: baek_seg = 8'b0101_1011;
			4'b0011: baek_seg = 8'b0100_1111;
			4'b0100: baek_seg = 8'b0110_0110;
			
			4'b0101: baek_seg = 8'b0110_1101;
			4'b0110: baek_seg = 8'b0111_1101;
			4'b0111: baek_seg = 8'b0010_0111;
			4'b1000: baek_seg = 8'b0111_1111;
			4'b1001: baek_seg = 8'b0110_0111;
			
			default : baek_seg = 8'b0000_0000;
		endcase 
		case(cheon)
			4'b0000: cheon_seg = 8'b0011_1111;
			4'b0001: cheon_seg = 8'b0000_0110;
			4'b0010: cheon_seg = 8'b0101_1011;
			4'b0011: cheon_seg = 8'b0100_1111;
			4'b0100: cheon_seg = 8'b0110_0110;
			
			4'b0101: cheon_seg = 8'b0110_1101;
			4'b0110: cheon_seg = 8'b0111_1101;
			4'b0111: cheon_seg = 8'b0010_0111;
			4'b1000: cheon_seg = 8'b0111_1111;
			4'b1001: cheon_seg = 8'b0110_0111;
			
			default : cheon_seg = 8'b0000_0000;
		endcase 
		case(man)
			4'b0000: man_seg = 8'b0011_1111;
			4'b0001: man_seg = 8'b0000_0110;
			4'b0010: man_seg = 8'b0101_1011;
			4'b0011: man_seg = 8'b0100_1111;
			4'b0100: man_seg = 8'b0110_0110;
			
			4'b0101: man_seg = 8'b0110_1101;
			4'b0110: man_seg = 8'b0111_1101;
			4'b0111: man_seg = 8'b0010_0111;
			4'b1000: man_seg = 8'b0111_1111;
			4'b1001: man_seg = 8'b0110_0111;
			
			default : man_seg = 8'b0000_0000;
		endcase 
		case(sibman)
			4'b0000: sibman_seg = 8'b0011_1111;
			4'b0001: sibman_seg = 8'b0000_0110;
			4'b0010: sibman_seg = 8'b0101_1011;
			4'b0011: sibman_seg = 8'b0100_1111;
			4'b0100: sibman_seg = 8'b0110_0110;
			
			4'b0101: sibman_seg = 8'b0110_1101;
			4'b0110: sibman_seg = 8'b0111_1101;
			4'b0111: sibman_seg = 8'b0010_0111;
			4'b1000: sibman_seg = 8'b0111_1111;
			4'b1001: sibman_seg = 8'b0110_0111;
			
			default : sibman_seg = 8'b0000_0000;
		endcase 
		
		case(one_meter)
			4'b0000: onemeter_seg = 8'b0011_1111;
			4'b0001: onemeter_seg = 8'b0000_0110;
			4'b0010: onemeter_seg = 8'b0101_1011;
			4'b0011: onemeter_seg = 8'b0100_1111;
			4'b0100: onemeter_seg = 8'b0110_0110;
			
			4'b0101: onemeter_seg = 8'b0110_1101;
			4'b0110: onemeter_seg = 8'b0111_1101;
			4'b0111: onemeter_seg = 8'b0010_0111;
			4'b1000: onemeter_seg = 8'b0111_1111;
			4'b1001: onemeter_seg = 8'b0110_0111;
			
			default : onemeter_seg = 8'b0000_0000;
		endcase
		case(ten_meter)
			4'b0000: tenmeter_seg = 8'b0011_1111;
			4'b0001: tenmeter_seg = 8'b0000_0110;
			4'b0010: tenmeter_seg = 8'b0101_1011;
			4'b0011: tenmeter_seg = 8'b0100_1111;
			4'b0100: tenmeter_seg = 8'b0110_0110;
			
			4'b0101: tenmeter_seg = 8'b0110_1101;
			4'b0110: tenmeter_seg = 8'b0111_1101;
			4'b0111: tenmeter_seg = 8'b0010_0111;
			4'b1000: tenmeter_seg = 8'b0111_1111;
			4'b1001: tenmeter_seg = 8'b0110_0111;
			
			default : tenmeter_seg = 8'b0000_0000;
		endcase
		case(baek_meter)
			4'b0000: baekmeter_seg = 8'b0011_1111;
			4'b0001: baekmeter_seg = 8'b0000_0110;
			4'b0010: baekmeter_seg = 8'b0101_1011;
			4'b0011: baekmeter_seg = 8'b0100_1111;
			4'b0100: baekmeter_seg = 8'b0110_0110;
			
			4'b0101: baekmeter_seg = 8'b0110_1101;
			4'b0110: baekmeter_seg = 8'b0111_1101;
			4'b0111: baekmeter_seg = 8'b0010_0111;
			4'b1000: baekmeter_seg = 8'b0111_1111;
			4'b1001: baekmeter_seg = 8'b0110_0111;
			
			default : baekmeter_seg = 8'b0000_0000;
		endcase 
	end

	always @(posedge clk)begin
		if(bus == 1)begin
			cnt <= cnt + 1;
			if(cnt == 0)begin
				common <= 8'b0111_1111;
				segout <= one_seg;
			end
			if(cnt == 1)begin
				common <= 8'b1011_1111;
				segout <= ten_seg;
			end
			if(cnt == 2)begin
				common <= 8'b1101_1111;
				segout <= baek_seg;
			end
			if(cnt == 3)begin
				common <= 8'b1110_1111;
				segout <= cheon_seg;
			end
			if(cnt == 4)begin
				common <= 8'b1111_0111;
				segout <= man_seg;
			end
			if(cnt == 5)begin
				common <= 8'b1111_1011;
				segout <= sibman_seg;
				cnt<=0;
			end
		end
	
		else if(bus == 0)begin
			cnt <= cnt + 1;
			if(cnt == 0)begin
				common <= 8'b0111_1111;
				segout <= onemeter_seg;
			end
			if(cnt == 1)begin
				common <= 8'b1011_1111;
				segout <= tenmeter_seg;
			end
			if(cnt == 2)begin
				common <= 8'b1101_1111;
				segout <= baekmeter_seg;
				cnt<=0;
			end
		end
	end
endmodule
