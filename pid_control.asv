function [ dx ] = pid_control( x, Kp, Ki, Kd )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
persistent i_term;
if (isempty(i_term))
    i_term = x(1,:) * 0; 
end
i_term = i_term + x(1,:);
dx = Kp*(-x(1,:)) + Kd*(-x(2,:)) + Ki*(-i_term);

end

