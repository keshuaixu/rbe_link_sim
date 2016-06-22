%% Question 3.1
[XEuler, teu] = forSim(@sdof,[-pi/2 0 0]',zeros(1,30),10,30,@eulerMet);
[XRK4, trk] = forSim(@sdof,[-pi/2 0 0]',zeros(1,30),10,30,@rungeKutta4);

%% Euler
figure(1);
plot(teu, XEuler);
%% RK4
figure(2);
plot(trk, XRK4);

%% Pros and cons of RK4 compared to Euler
% Pros - Better approximation when used with same step size. More robust. In figure 1,
% bad linear approximation of Euler method caused the values to explode.
%
% Cons - More computational expensive.
