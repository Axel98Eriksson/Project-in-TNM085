function null = animation(x,y)

for i = 1:length(x)
    h = plot(y(i),x(i),'o r');            % draw something on the trajectory
    axis([-0.5 0.5 0 8])
    pause(0.01)                                % wait a minute
    delete(h)                                 % delete it
end
hold off


end