reset;

var c11;
var c12;

var c21;
var c22;

var gas = c11 + c12;
var hho = c21 + c22;

maximize profit:
	248*gas + 199*hho;

subject to crudeone: c11 + c21 <= 5000; 
subject to crudetwo: c12 + c22 <= 10000;

subject to gasrating: 2*c11 - 3*c12 >=0;
subject to hhorating: 4*c21 - c22 >= 0;
	
option solver knitro;
solve;

display profit;

display gas;
	display c11; display c12;
display hho;
	display c21; display c22;


