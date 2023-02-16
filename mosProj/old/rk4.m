function [x,y] = rk4(dydx,x0,xf,y0,h)

x = x0:h:xf ;
y = zeros(1,length(x));
y(1)= y0;   

for i = 1:(length(x)-1)
    k_1 = dydx(x(i),y(i));
    k_2 = dydx(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = dydx((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = dydx((x(i)+h),(y(i)+k_3*h));
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
end

end
