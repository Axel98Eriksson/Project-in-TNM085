function dx = xOde() %function describing the deacceleration

m = 0.25;
g = -9.8;
fk = 0.1;


dx = m*g*fk;

end