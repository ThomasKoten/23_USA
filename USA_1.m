clear
clc
% 
% syms x a b
% 
% f=1-exp(-power(a*x,b));
% plot(f)

% ata=xlsread('03/P0326.xlsx');
% mean(ata)
% 
% med=median(ata)
% mode(ata)
% var(ata) %rozptyl
% std(ata) %smerodatna odchylka
% histogram(ata)
% figure
% cdfplot(ata)

% data=importdata("P0328.mat");
% 
% X=sum(data)/length(data);
% s2=var(data);
% dol_kvant=quantile(data,0.25);

% %o=nchoosek(5,2)*(0.5^2)*(0.5)^3
% o=binopdf(2,5,0.5)
% %o45=(nchoosek(5,4)*(0.5^4)*(0.5))+(nchoosek(5,5)*(0.5)^5)
% o45=1-binocdf(3,5,0.5)

% binopdf(2,1000,(1/13983816))
% binopdf(3,5,0.8)
% z=1-binocdf(2,5,0.8)
% marias= binopdf(4,7,(8/32))*binopdf(1,1,(1/8)))

% binopdf(2,3,(4/32))
% hygepdf(2,32,4,3)
% vrac=binopdf(22,30,(10000/17000)) %binopdf(8,30,(7000/17000))
% hygepdf(22,17000,10000,30) %hygepdf(8,17000,7000,30)
 
% kost=geopdf(4,(1/6))
% geopdf(4,0.1)
% geocdf(3,0.1)
% 1-geocdf(6,0.1)

nbinpdf(7,3,0.35)
1-nbincdf(6,3,0.35)
nbincdf(7,3,0.35)-nbincdf(2,3,0.35)
