function [t,y] = testOdeEuler(funPos,funVel,tspan,x0,v0,a0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(2)-t(1);

y = zeros(3,length(t));
% rad 1 : pos
% rad 2 : hastighet
% rad 3 : acc

y(1,1) = x0;
y(2,1) = v0;

for i = 1:n
     y(1,i+1) = y(1,i) + h*fun(t(i),y(1,i)); %från pos till v
     y(2,i+1) = y(2,i) + h*fun(t(i),y(2,i)); % från v till acc
end

end