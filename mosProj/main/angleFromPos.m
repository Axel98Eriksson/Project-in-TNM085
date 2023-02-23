function angle = angleFromPos(pos,h,maxTheta)

angles = zeros()

angles = 0+maxTheta:h:pi-maxTheta;
board = -0.5:h:0.5;
angle = 0;
for i = 1:length(board)
    if board(i) >= pos
        angle = angles(i);
        break
    end
end