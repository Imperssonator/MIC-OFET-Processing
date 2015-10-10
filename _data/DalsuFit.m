function out = DalsuFit()

params = [2.8766E-02,...
          4.8449e-03,...
          -7.0672e-04,...
          -3.2753e-03,...
          -1.0312e-04,...
          -5.1618e-03];
[x,y] = meshgrid(0:0.1:50,0:0.1:5);
z = zeros(size(x));
for i = 1:size(x,1)
    for j = 1:size(x,2)
        xy = [y(i,j) x(i,j) x(i,j)*y(i,j) 1 x(i,j)^2 y(i,j)^2];
        z(i,j) = sum(xy.*params);
    end
end

mesh(x,y,z)

end