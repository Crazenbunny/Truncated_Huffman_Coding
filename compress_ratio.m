function [ratio] = compress_ratio(encode)
[~,n,~]=size(encode);
temp=double(0);
for i=1:n
    temp=temp+double(length(encode{1,i}));
end
ratio=(64*8)/temp;
end

