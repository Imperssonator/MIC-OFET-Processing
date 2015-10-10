figure
hold on

minMob = 0.01;
maxMob = 0.12;
minE = 0.2;
maxE = 1;
DSpace = linspace(0,20,200)';
SimMob = linspace(minMob,maxMob,200)';
SimE = linspace(minE,maxE,200)';
Obj = zeros(200,1);

for i = 1:length(DSpace)
     if SimMob(i)>0.03&SimE(i)<0.8
         Obj(i)=SimMob(i)*(0.8-SimE(i));
     end
end

plotyy([DSpace DSpace],[SimMob SimE],DSpace,Obj)

