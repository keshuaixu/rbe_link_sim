function [X,t] = forSim(f,x0,U,T,N,update)
X = zeros(size(x0,1),N+1);
t = zeros(1,N+1);
dt = T/(N);
X(:,1) = x0;
for i = 2:N+1
    t(i) = (i-1)*dt;
    X(:,i) = update(f, X(:,i-1), U(:,i-1), t(i-1), dt);
end
end

