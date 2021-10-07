# Four output comparator

A four output comparator has been designed using the verilog dataflow modelling style. For a given 2 inputs A and B, the outputs are - greater, equal, lesser and almost equal. The output almost equal is set if the difference between the two inputs is less than 3.

Example outputs:  
	A=5 B=1 then gt,eq,lt = 100, ae=0  
	A=8 B=10 then gt,eq,lt = 000, ae=1  
	A=150 B=148 then gt,eq,lt = 000, ae=1  
	A=140 B=150 then gt,eq,lt = 001, ae=0
