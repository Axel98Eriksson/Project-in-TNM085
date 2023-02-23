%Eulers stegmetod för att beräkna ODEY

function [y,v,t] = yeuler(fun,tspan,y0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(2)-t(1);

%Skapar vektor med 0:or, 1st dy för varje steglängd(h).
y = zeros(1,length(t));
v = zeros(1,length(t));

%skapa vinklar
maxTheta = 0.02;


% Startvärde
y(1) = y0;


for i = 1:n
    angle = angleFromPos(y(i),h,maxTheta,length(y));
    v(i+1) = v(i) + h*fun(angle);
    y(i+1) = y(i) + h*v(i+1);
end
end