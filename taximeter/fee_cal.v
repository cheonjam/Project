module fee_cal(clk, reset, normal, premium, one, ten, baek, cheon, man, sibman, meter);
	input clk, reset, normal, premium, meter;
	output reg [3:0] one, ten, baek;
	output reg [3:0] cheon, man, sibman;

	reg flag;
	reg clk_out;
	reg [3:0] count;
	reg [1:0] status;


	always @(posedge clk)begin
		count <= count + 1;
		if(count==5)begin
			clk_out <= 1;
		end
		if(count==10)begin
			clk_out <= 0;
			count <= 0;
		end
	end
	
	always @(posedge clk) begin
		if(flag==1)
			flag<=0;
		if(reset==1) begin
			status <= 2'b00;
		end
		else if(normal==1) begin
			status <= 2'b01;
			flag<=1;
		end
		else if(premium==1) begin
			status <= 2'b10;
			flag<=1;
		end
	end
	
		
	always @(posedge meter) begin
		case(status)
			2'b00 : begin
					one<=0;
					ten<=0;
					baek<=0;
					cheon<=0;
					man<=0;
					sibman<=0;
			end
			2'b01 : begin
				if(flag==1) begin
					one<=0;
					ten<=0;
					baek<=8;
					cheon<=2;
					man<=0;
					sibman<=0;
				end
				else begin
					baek <= baek+1;
					if(baek==9) begin
						baek<=0;
						cheon <= cheon+1;
						if(cheon==9) begin
							cheon<=0;
							man<=man+1;
							if(man==9) begin
								man<=0;
								sibman<=sibman+1;
							end
						end
					end
				end
			end
		
			2'b10 : begin
				if(flag==1) begin
					one<=0;
					ten<=0;
					baek<=0;
					cheon<=3;
					man<=0;
					sibman<=0;
				end
				else begin
					baek <= baek+3;
					if(baek==7) begin
						baek<=0;
						cheon <= cheon+1;
						if(cheon==9) begin
							cheon<=0;
							man<=man+1;
							if(man==9) begin
								man<=0;
								sibman<=sibman+1;
							end
						end
					end
					else if(baek==8) begin
						baek<=1;
						cheon <= cheon+1;
						if(cheon==9) begin
							cheon<=0;
							man<=man+1;
							if(man==9) begin
								man<=0;
								sibman<=sibman+1;
							end
						end
					end
					else if(baek==9) begin
						baek<=2;
						cheon <= cheon+1;
						if(cheon==9) begin
							cheon<=0;
							man<=man+1;
							if(man==9) begin
								man<=0;
								sibman<=sibman+1;
							end
						end
					end
				end
			end
		endcase

	end
	

endmodule
