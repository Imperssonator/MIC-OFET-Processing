function out = AIC(n,MSE,p)

out = n*(log(2*pi*MSE)+1)+2*p;

end