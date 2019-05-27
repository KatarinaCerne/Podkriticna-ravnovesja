function yprime = primer4(x,Y)
beta1 = 200;
beta2 = 2;
d = 4;
ni = 1;
r1 = 1;
r2 = 1;
q = 0.5;
p = 1-q;
b = 4;
N = Y(1)+Y(2)+Y(3)+Y(4);
yprime = [beta1*Y(3)*Y(2)/N+beta2*Y(4)*Y(2)/N-(d+ni+r1)*Y(1)+p*r2*Y(2);
    ni*Y(1)-(d+r2)*Y(2);
    b-d*Y(3)-beta1*Y(3)*Y(2)/N;
    -d*Y(4)+r1*Y(1)+q*r2*Y(2)-beta2*Y(4)*Y(2)/N];
end