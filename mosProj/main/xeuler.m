%Eulers stegmetod för att beräkna ODEX
function [x,v,t] = xeuler(fun,tspan,v0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(2)-t(1);

%Skapar vektor med 0:or, 1st dx för varje steglängd(h).
x = zeros(1,length(t));
v = zeros(1,length(t));

% Startvärde
v(1) = v0;


for i = 1:n
    v(i+1) = v(i) + h*fun(t(i),v(i));
    x(i+1) = x(i) + h*v(i+1);
end


end
