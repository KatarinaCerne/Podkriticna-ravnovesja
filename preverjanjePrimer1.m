R0primer1(3, 2, 4, 1, 1, 2, 0.25, 4); %0.0851
%beta1, beta2, d, ni, r1, r2, q, b
R0primer1(100, 20, 40, 10, 20, 20, 0.25, 40);
tspan = [1,10];
y0 = [2,1,1,0];
y00 = [500,50,100,10];
[t1,y1]=ode45(@primer1, tspan, y0); %konvergira proti ravnovesju

R0primer1(10, 2, 4, 1, 1, 1, 0.5, 4); %0.3390
R0primer1(50, 2, 4, 1, 1, 1, 0.5, 4); %1.6949
R0primer1(29.5, 2, 4, 1, 1, 1, 0.5, 4); %1
[t2,y2]=ode45(@primer2, tspan, y0);
[t4,y4]=ode45(@primer4, tspan, y0);
R0primer1(200,2,4,1,1,1,0.5,4); %6.7797
%beta3 = 200

[t3,y3]=ode45(@primer3,tspan,y0);

% plot(t1,y1(:,1))
% hold on
% plot(t1,y1(:,2))
% hold on
% plot(t1,y1(:,3),'--')
% hold on
% plot(t1,y1(:,4),'--')
% hold off
% 
% 
% plot(t2,y2(:,1))
% hold on
% plot(t2,y2(:,2))
% hold on
% plot(t2,y2(:,3),'--')
% hold on
% plot(t2,y2(:,4),'--')
% hold off
%--------------------------------------------------------------------------

beta1 = 29.5;
beta2 = 2;
d = 4;
ni = 1;
r1 = 1;
r2 = 1;
q = 0.5;
p = 1-q;
b = 4;
beta3 = 200; 
E0=0;
I0=0;
S0=1;
T0=0;

Df = [-(d+ni+r1)-beta3*I0, ni+beta3*I0, 0, r1;
    beta1*S0/S0+ beta2*T0+p*r2-beta3*E0/S0, -(d+r2)+beta3*E0/S0, -beta1*S0/S0, q*r2-beta2*T0/S0;
    beta1*I0/S0, 0, -d-beta1*I0/S0, 0;
    beta2*I0/S0, 0, 0, -d-beta2*I0/S0];

[W,D,V]=eig(Df);
%lastna vrednost je na mestu D(2,2)
%v=V(:,2), w=W(:,2)