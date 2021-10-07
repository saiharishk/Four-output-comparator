module hw19 (gt,eq,ae,lt, A,B);
input [7:0] A,B;
output gt,eq,ae,lt;

wire [7:0] b1;
wire [3:0] b2;
wire b_gt,b_eq,b_lt,lt3;

assign b_gt = (A>B);
assign b_eq = (A==B);
assign b_lt = (A<B);

assign b1 = b_gt?(A-B):(B-A);
assign lt3 = (b1<8'd3);

assign b2 = b_eq?{4'd4}:{4'd1};

assign {gt,eq,lt,ae} = lt3?b2:{b_gt,b_eq,b_lt,1'b0};


endmodule
