reset;

var corn;
var oats;
var wheat;

var mix1 = (0.9*corn + 0.1*oats + 0.0*wheat);
var mix2 = (0.7*corn + 0.2*oats + 0.1*wheat);
var mix3 = (0.5*corn + 0.3*oats + 0.2*wheat);

maximize profit:
	27*mix1 + 21*mix2 + 14*mix3;

subject to cornlimit: corn <= 1800;
subject to oatslimit: oats <= 1000; 
subject to wheatlimit: wheat <= 600;

option solver cplex;
solve;

display profit;

display mix1;
display mix2;
display mix3;