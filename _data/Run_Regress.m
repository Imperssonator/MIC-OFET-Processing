REG = struct();

PCs = 5;
PolyDeg = 3;
CVMAE = zeros(PCs,PolyDeg);
MAE = zeros(size(CVMAE));

for i = 1:PCs
    for j = 1:PolyDeg
        REG(i,j).r = MultiPolyRegress(Score(:,1:i),MOB,j);
        CVMAE(i,j) = REG(i,j).r.CVMAE;
        MAE(i,j) = REG(i,j).r.MAE;
    end
end


        