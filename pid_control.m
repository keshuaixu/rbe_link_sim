function [ dx ] = pid_control( x, Kp, Ki, Kd )
persistent i_term;
if (isempty(i_term))
    i_term = x(1,:) * 0; 
end
i_term = i_term + x(1,:);
dx = Kp*(-x(1,:)) + Kd*(-x(2,:)) + Ki*(-i_term);

end

