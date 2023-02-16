function yout = (F,t0,h,tfinal,y0)
    y = y0;
    yout = y;

    for t = t0 : h : tfinal-h
        
        s = F(t,y);
        y = y + h*s;
        yout = [yout, y];
    end    
