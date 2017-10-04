param q;
param v;

param x = ((2*q*v)/(q+1))^(1/3);
param y = ((q*v)*2^(1/3))/((q+1)*((q*v)/(q+1))^(2/3));
param z = ((q+1)*(((2*q*v)/(q+1))^(1/3)))/18;

minimize heatLoss: 
	q*(2*y*z + 2*x*z + x*y) + x*y
subject to cons:
	x*y*z = v;