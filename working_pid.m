f = @(t,x,u) sdof(x,u,t);
u = @(x,t) pid_control(x,3,0.00001,0.1);
[X,U,t] = dynSim(f,u,[-pi/2 0 0]',10,0.1);
subplot(2,1,1); plot(t,X); xlabel('t');ylabel('x');
subplot(2,1,2); plot(t,U); xlabel('t');ylabel('u');