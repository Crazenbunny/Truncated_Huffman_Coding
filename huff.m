function [result,head] = huff(Tr)

[r,~]=size(Tr);

for k=1:r
    a=node;
    a.value=Tr(k,2);
    a.mark=Tr(k,1);
    list2{k,1}=a;
end
[k,~]=size(list2);
result={};

while(k>1)
    [k,~]=size(list2); 
    b=list2{k-1,1};
    c=list2{k,1};

    b.binary=1;
    c.binary=0;
    s=b.value+c.value;
    d=node;
    d.value=s;
    d.child_b=b;
    d.child_s=c;
    b.parent=d;
    c.parent=d;
    result{end+1,1}=b;
    result{end+1,1}=c;
    list2(k,:)=[];
    list2(k-1,:)=[];
    list2=sort_cell(list2,d);
    [k,~]=size(list2);
end
head=list2{1,1};
end

