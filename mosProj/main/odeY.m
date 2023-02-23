%Funktion som beskriver skillnaden i Y-led

function dy = odeY(y,pos)

fk = 0.07;
m = 0.25;
g = -9.82;

angle = posToTheta(y,pos);

dy = m*g*(angle+fk);

end