function [out] = sort_cell(Tr,cell)
[m,~]=size(Tr);
 flag=0;
for i=1:m
    a=Tr{i};
    if (cell.value<a.value)
        out{i,1}=a;
    end
    
    if cell.value>a.value
        flag=i;
        out{i,1}=cell;
        break
    end
end

if flag==0
    out{m+1,1}=cell;
end
if flag>0
    for j=flag+1:m+1
       out{j,1}=Tr{j-1,1};
    end
end

end

