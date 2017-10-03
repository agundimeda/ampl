reset;

var low;
var mid;

minimize cost:
	130000*low + 180000*mid;

subject to space:
	(1/20)*low + (1/15)*mid <= 10;

subject to budget: 130000*low + 180000*mid <= 20000000;

subject to lowlimit: 60 <= low <= 100;
subject to midlimit: 30 <= mid <= 70;

subject to adviser: low >= (1/2)*mid + 50;

option solver cplex;
solve;

display low;
display mid;