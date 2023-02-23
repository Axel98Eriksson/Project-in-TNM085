%Funktion som beskriver skillnaden i Y-led

function dy = odeY(ang)

fk = 0.07;
m = 0.25;
g = -9.82;

dy = (cos(ang)-fk);

end