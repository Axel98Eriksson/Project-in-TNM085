%Funktion som beskriver skillnaden i X-led

function a = odeX(u,t)

m = 0.25;
g = -9.82;
fk = 0.07;

a = m*g*fk;


end