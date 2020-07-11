function [out] = SNR(tblock,rblock)
[m,n,~]=size(tblock);
tblock=double(tblock);
rblock=double(rblock);
down=0;
up=0;
for i=1:m
    for j=1:n
        down=down+(tblock(i,j)-rblock(i,j))^2;
        up=up+(tblock(i,j))^2;
    end
end
out=up/down;
end

