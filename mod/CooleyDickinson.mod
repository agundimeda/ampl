reset;

var x1;
var x2;
var x3;
var x4;
var x5;
var x6;
var x7;
var x8;
var x9;
var x10;
var x11;
var x12;
var x13;

minimize volunteers:
	x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13;

subject to con1: x1 <= 4;
subject to con2: x1+x2 <= 4;
subject to con3: x1+x2+x3 <= 6;
subject to con4: x2+x3+x4 <= 6;
subject to con5: x3+x4+x5 <= 8;
subject to con6: x4+x5+x6 <= 8;
subject to con7: x5+x6+x7 <= 6;
subject to con8: x6+x7+x8 <= 6;
subject to con9: x7+x8+x9 <= 4;
subject to con10: x8+x9+x10 <= 4;
subject to con11: x9+x10+x11 <= 6;
subject to con12: x10+x11+x12 <= 6;
subject to con13: x11+x12+x13 <= 8;
subject to cons14: x12 + x13 <= 8;

option solver cplex;
solve;

display volunteers;
