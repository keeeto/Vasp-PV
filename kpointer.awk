BEGIN{};
function ceiling(x)
	{
	return (x == int(x)) ? x : int(x)+1
	};
{if(NR==3) {x1 = $1; y1 = $2; z1 = $3}};
{if(NR==4) {x2 = $1; y2 = $2; z2 = $3}};
{if(NR==5) {x3 = $1; y3 = $2; z3 = $3}};
END{ xlen = sqrt(x1**2 + x2**2 + x3**2);
     ylen = sqrt(y1**2 + y2**2 + y3**2);
     zlen = sqrt(z1**2 + z2**2 + z3**2);
     print ceiling((1/xlen)/0.04), ceiling((1/ylen)/0.04), ceiling((1/zlen)/0.04)}
