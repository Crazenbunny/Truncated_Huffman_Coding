function [out] = root_mean(tblock,rblock)
[m,n,~]=size(tblock);
temp=double(0);
for i=1:m
    for j=1:n
        temp=temp+(double(tblock(i,j))-double(rblock(i,j)))^2;
    end
end
temp=temp/(m*n);
out=temp^0.5;
end

