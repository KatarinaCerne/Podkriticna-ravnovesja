function yprime = primer2(x,Y)
beta1 = 500;
beta2 = 20;
d = 40;
ni = 10;
r1 = 10;
r2 = 20;
q = 0.5;
p = 1-q;
b = 40;
N = Y(1)+Y(2)+Y(3)+Y(4);
yprime = [beta1*Y(3)*Y(2)/N+beta2*Y(4)*Y(2)/N-(d+ni+r1)*Y(1)+p*r2*Y(2);
    ni*Y(1)-(d+r2)*Y(2);
    b-d*Y(3)-beta1*Y(3)*Y(2)/N;
    -d*Y(4)+r1*Y(1)+q*r2*Y(2)-beta2*Y(4)*Y(2)/N];
end