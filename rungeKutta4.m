function X_next = rungeKutta4(f,X_i,U_i,t_i,dt)
k1 = f(X_i, U_i, t_i);
k2 = f(X_i + k1*dt/2, U_i, t_i + dt/2);
k3 = f(X_i + k2*dt/2, U_i, t_i + dt/2);
k4 = f(X_i + k3*dt/2, U_i, t_i + dt);
X_next = X_i + (dt/6)*(k1 + 2*k2 + 2*k3 + k4);
end

