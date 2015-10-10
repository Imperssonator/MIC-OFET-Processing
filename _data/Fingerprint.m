G = IMS.Gray;
% M = mean(double(G(:)));
% Var = std(double(G(:)));
% GNorm = (G-M)/Var;
% G100 = GNorm*1+0;

% imtool(G100)
[Gx, Gy] = imgradientxy(G100);
[Gmag, Gdir] = imgradient(Gx, Gy);

imtool(Gmag/max(max(Gmag)))
imtool((Gdir+180)/360)

C = IMS.Clean;

OrientMap(Gdir,C)

% XY = Gx.*Gy;
% XY = XY*2;
% XYSq = (Gx.^2).*(Gy.^2);
% 
% i = 5;
% XYi = filter2(ones(i),XY);
% XYSqi = filter2(ones(i),XYSq);
% THETA = 0.5*atand(XYSqi./XYi);
% % imtool(THETA)