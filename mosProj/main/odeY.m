%Funktion som beskriver skillnaden i Y-led

function dy = odeY(y)
m = 0.25;
g = -9.82;
fk = 0.07;
theta = 0.1;

dy = m*g*fk*y*sin(theta);

end