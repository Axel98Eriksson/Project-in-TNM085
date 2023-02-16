function [t,y] = odeEuler(fun,tspan,y0, n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
h = t(2)-t(1);

y = zeros(1,length(t));

y(1) = y0;

for i = 1:n
    flag = y(i) + h*fun(t(i),y(i));
    if flag < 0
        break;
    end
    y(i+1) = flag;
end

end