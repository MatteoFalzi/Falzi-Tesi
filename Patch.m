clc
clear
close all

Rgram=load('Dati\Data_20181015_01_004-009\Data_20181015_01_004-009_cat_norm.mat');
Patches=zeros(100,200,4875);
Mrgram=cell2mat(struct2cell(Rgram));


ymin=160;
ymax=ymin+199;

xmin=80;
xmax=xmin+99;

z=1;

for x=1:29
   for y=1:98 
        if (y==1 & z==1)   
            Patches(:,:,z)=Mrgram(1:100,1:200);
            z=z+1;
        elseif(y==1 & z~=1)
            Patches(:,:,z)=Mrgram(xmin:xmax,1:200);
            z=z+1;
             
            ymin=160;
            ymax=ymin+199;
           
            xmin=xmin+100;
            xmax=xmax+100;
        else 
            Patches(:,:,z)=Mrgram(xmin:xmax,ymin:ymax);
            z=z+1;
             
            ymin=ymin+200;
            ymax=ymax+200;
            
        end 
    end    
    
    
end 

