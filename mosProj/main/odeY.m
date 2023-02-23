%Funktion som beskriver skillnaden i Y-led

function dy = odeY(y,n,maxTheta)
m = 0.25;
g = -9.82;
fk = 0.07;

angle = 0;

angle = angleFromPos(y,n,maxTheta);


dy = m*g*(cos(angle)-fk);

end