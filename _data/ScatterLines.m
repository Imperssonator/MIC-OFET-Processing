for i = 1:17
    X1 = [XY(i,1),XY(i,1)];
    Y1 = [XY(i,2),XY(i,2)];
    Z1 = [0, Mobs(i)];
    plot3(X1,Y1,Z1)
end