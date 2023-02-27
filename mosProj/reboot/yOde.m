function [dy] = yOde(pos,a)

    g = 9.8;
    m = 0.25;
    fk = 0.1;
    direction = -1; % negativ riktning då y > 0
    c = 1/25;

    if pos<0
        pos = abs(pos);
        direction = 1; %positiv riktning då y < 0
    end
    
%     dy = 1/100*(exp(pos)*direction*g*m-(direction*fk*g*m))-1/100;
%       v = direction*(c*(exp(pos)*m*g)-c);
%       ff = (m*g*fk*(-direction));

    v = direction*(c*(exp(pos)*m*g)-c);
    dy = v+(a*fk*(-direction)*g);
end