function angle = angleFromPos(pos,n,maxTheta)

angles = 0+maxTheta:1/n:pi-maxTheta;
board = -0.5:1/n:0.5;

angle = 0;

for i = 1:length(board)
    if board(i) >= pos
        angle = angles(i);
        break
    end
end