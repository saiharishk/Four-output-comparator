module tb();

reg [7:0] A,B;
wire gt,eq,ae,lt;

hw19 TB (gt,eq,ae,lt, A,B);

initial
	begin
		A=8'd5;B=8'd1;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
		A=8'd8;B=8'd10;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
		A=8'd150;B=8'd148;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
		A=8'd140;B=8'd150;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
		A=8'd150;B=8'd140;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
		A=8'd148;B=8'd150;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
		A=8'd50;B=8'd50;#1;$display("A=%d, B=%d :: gt,eq,lt=%b, ae=%b",A,B,{gt,eq,lt},ae);
	end
endmodule


