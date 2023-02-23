function angle = angleFromPos(pos,n,maxTheta)

angles = zeros(1,n);
board = zeros(1,n);

angles() = 0+maxTheta:pi-maxTheta;
board() = -0.5:0.5;

angle = 0;
for i = 1:length(board)
    if board(i) >= pos
        angle = angles(i);
        break
    end
end