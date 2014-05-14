%Funktion zur Datenextraktion aus einem Cell-Array. Die Daten werden als
%Vektoren ausgegeben.

function [ v1,v2,v3,v4,v5,v6,v7,v8,v9 ] = cell2vec( data )
v1= zeros (1,10);
v2= zeros (1,10);
v3= zeros (1,10);
v4= zeros (1,10);
v5= zeros (1,10);
v6= zeros (1,10);
v7= zeros (1,10);
v8= zeros (1,10);
v9= zeros (1,10);
for kk=1:10
   v1(kk)=str2double(cell2mat(data{kk}));
   v2(kk)=str2double(cell2mat(data{kk+10}));
   v3(kk)=str2double(cell2mat(data{kk+30}));
   v4(kk)=str2double(cell2mat(data{kk+40}));
   v5(kk)=str2double(cell2mat(data{kk+50}));
   v6(kk)=str2double(cell2mat(data{kk+60}));
   v7(kk)=str2double(cell2mat(data{kk+70}));
   v8(kk)=str2double(cell2mat(data{kk+80}));
   v9(kk)=str2double(cell2mat(data{kk+90}));   
end 
end

