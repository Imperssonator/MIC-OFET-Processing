FL = zeros(18,1);

for i = 1:length(DEV)
    disp(i)
    load(DEV(i).Bin);
    disp('loaded')
    Lengths = [];
    Fibers = MS(:,:,1)+MS(:,:,2)+MS(:,:,3)+MS(:,:,4);
    Fibers = Fibers~=0;
    REGS = regionprops(Fibers,'MajorAxisLength');
    Lengths = [Lengths REGS(:).MajorAxisLength];
    FL(i,1) = mean(Lengths);
end