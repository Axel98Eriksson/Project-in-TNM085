function [dy] = yOde(pos,a)

    g = 9.8;
    m = 0.25;
    fk = 0.07;
    c = 1/5;


    if pos >= 0
       dy = m*(a - c*exp(pos)*g*fk);
    else
        dy = m*(a + c*exp(pos)*g*fk);
    end

%    2023-03-02
%     if pos >= 0 && a >= 0
%        dy = m*(a - c*exp(pos)*g*fk);
%     elseif pos >= 0
%        dy = m*(-a - c*exp(pos)*g*fk);
%     elseif a >= 0
%        dy = m*(a + c*exp(abs(pos))*g*fk);
%     else 
%        dy = m*(-a + c*exp(abs(pos))*g*fk);
%     end



    
%     dy = 1/100*(exp(pos)*direction*g*m-(direction*fk*g*m))-1/100;
%       v = direction*(c*(exp(pos)*m*g)-c);
%       ff = (m*g*fk*(-direction));

%     v = direction*(c*(exp(pos)*m*g)-c);

%     dy = v+(a*fk*(-direction)*g);

%     dy = m*(a + direction*c*exp(pos)*g);
end