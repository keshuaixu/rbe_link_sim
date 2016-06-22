function dx = sdof(x,u,t)
m = 1;
g = 9.81;
l = 1;
J_s = 0.2;
J_a = 0.1;
n = 10;
b = 0.25;
B_s = 0.01;
B_a = 0.01;
K_m = 1;
K_w = 1;
R = 1;
L = 1;
J = J_s + n^2*J_a + m*l^2;
B = B_s + n^2*B_a + b;

x1 = x(1,:);
x2 = x(2,:);
x3 = x(3,:);

vin = u(1,:);
xdot = zeros(3,size(x,2));

xdot(1,:) = x2;
xdot(2,:) = (-B*x2 + K_m*x3*n - m*g*l*sin(x1))/J; 
xdot(3,:) = (vin - K_w*n*x2 - x3*R)/L;

dx = xdot;

end

