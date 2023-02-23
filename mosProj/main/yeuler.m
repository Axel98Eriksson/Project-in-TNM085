%Eulers stegmetod för att beräkna ODEY

function [y,v,t] = yeuler(fun,tspan,y0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n);
h = t(2)-t(1);

y = zeros(1,n);
v = zeros(1,n);

% Startvärde
y(1) = y0;
maxTheta = 0.2;

% for i = 1:n
%     v(i+1) = v(i) + h*fun(y(i));
%     y(i+1)= y(i) + h*v(i+1); 
% end


for i = 1:n-1
    angle = angleFromPos(y(i),length(y),maxTheta);
    v(i+1) = v(i) + h*fun(angle,length(y),maxTheta);
    y(i+1) = y(i) + h*v(i+1);
end

end