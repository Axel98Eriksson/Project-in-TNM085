function [x,vx,y,vy] = calcStop(x,vx,y,vy,n)

g = 9.8;
m = 0.25;
fk = 0.1;


for i = 1:n

    v = sqrt((vx(i)*vx(i))+(vy(i)*vy(i))); %saknas mg?
    
%     vproj = ((m*g*v)/(v*v))*v;

    ff = m*-g*fk;

    

    if v+ff <= 0
        vx(i:n+1) = 0;
        vy(i:n+1) = 0;

        x(i:n+1) = x(i);
        y(i:n+1) = y(i);
        break;
    end
end