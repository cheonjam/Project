module taximeter(clk, segout, common, reset, normal, premium, bus, segout, common, dot_d, dot_scan, lcd_e, lcd_rs, lcd_rw, lcd_data);
	input clk, reset, normal, premium, bus;
	output lcd_rs, lcd_rw, lcd_e;
	output [7:0] lcd_data;
	output [7:0] segout, common;
	output [13:0] dot_d;
	output [9:0] dot_scan;
	
	wire meter;
	wire clk_onehz;
	wire [3:0]one, ten, baek, cheon, man, sibman;
	wire [3:0]one_meter, ten_meter, baek_meter;
	
	wire [13:0] dot_data0, dot_data1, dot_data2;
	wire [13:0] dot_data3, dot_data4, dot_data5;
	wire [13:0] dot_data6, dot_data7, dot_data8, dot_data9;
	
	clk_div(
		.clk_in(clk),
		.clk_out(clk_onehz));
		
	fee_cal(
		.clk(clk_onehz),
		.reset(reset),
		.normal(normal),
		.premium(premium),
		.one(one),
		.ten(ten),
		.baek(baek),
		.cheon(cheon),
		.man(man),
		.sibman(sibman),
		.meter(meter));

	meter_cal(
		.clk(clk_onehz),
		.reset(reset),
		.normal(normal),
		.premium(premium),
		.meter(meter),
		.one_meter(one_meter),
		.ten_meter(ten_meter),
		.baek_meter(baek_meter));

	bcd_seg(
		.clk(clk),
		.one(one),
		.ten(ten),
		.baek(baek),
		.cheon(cheon),
		.man(man),
		.sibman(sibman),
		.one_meter(one_meter),
		.ten_meter(ten_meter),
		.baek_meter(baek_meter),
		.bus(bus),
		.segout(segout),
		.common(common));
		
	dot_matrix(
		.clk(clk_onehz),
		.reset(reset),
		.dot_data0(dot_data0),
		.dot_data1(dot_data1),
		.dot_data2(dot_data2),
		.dot_data3(dot_data3),
		.dot_data4(dot_data4),
		.dot_data5(dot_data5),
		.dot_data6(dot_data6),
		.dot_data7(dot_data7),
		.dot_data8(dot_data8),
		.dot_data9(dot_data9));
		
	dot_disp(
		.clk(clk),
		.reset(reset),
		.dot_data0(dot_data0),
		.dot_data1(dot_data1),
		.dot_data2(dot_data2),
		.dot_data3(dot_data3),
		.dot_data4(dot_data4),
		.dot_data5(dot_data5),
		.dot_data6(dot_data6),
		.dot_data7(dot_data7),
		.dot_data8(dot_data8),
		.dot_data9(dot_data9),
		.dot_d(dot_d),
		.dot_scan(dot_scan));
		
		
	lcd_text(
		.clk(clk_onehz),
		.control(bus),
		.reset(reset),
		.normal(normal),
		.premium(premium),
		.lcd_e(lcd_e),
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_data(lcd_data));
		
		
endmodule