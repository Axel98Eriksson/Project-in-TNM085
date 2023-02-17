%Eulers stegmetod för att beräkna ODEY

function [y,v,t] = yeuler(fun,tspan,y0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n);
h = t(2)-t(1);

y = zeros(1,length(t));
v = zeros(1,length(t));

% Startvärde
y(1) = y0;

for i = 1:n-1
    v(i+1) = v(i) + h*fun(y(i));
    y(i+1)= y(i) + h*v(i+1);
    
end

end