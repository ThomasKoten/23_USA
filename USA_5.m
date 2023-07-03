clc
clear

%5
x=[8.8, 8.9, 9.0, 8.7, 9.3, 9.0, 8.7, 8.8, 9.4, 8.6, 8.9];
%H0=8.8 l/100km HA!=8.8 l /100km
% 1 výběr, data z norm rozdělení => ttest
%[h,p,ci,stav]=ttest(x,8.8,0.05);
%4)h=0 přijímáme nulovou hypotézu
%   p=0.1455 nezamítáme nulovou hypotézu p>0.05
%6)Na hladině významnosti 5% přijímam hypotézu H0, že střední hodnota je
%rovna 8.8 l/100km

% x=importdata("08\P0801.mat");
% % H0=2.25g2 HA!=2.25g2
% %H0: sigma^2<=2.25 HA:sigma^2>2.25   nulová musí obsahovat rovnost!!
% %1 výběr
% [h,p,ci,~]=vartest(x,2.25,0.05);
% %h=0 přijímáme nulovou hypotézu
% %p=0.7595>0.05
% %Na hladine významnosti 5% přijímáme hypotézu H0, že rozptyl je roven 2.25

% %H0: mi=30000h  HA: mi!=30000
% %Na hladine významnosti 5% zamítáme hypotézu H0, že stř. hodnota je roven
% %30000 h
% n=50;
% x=27400;
% sigma=5400;
% z=sqrt(n)*(x-30000)/sigma
% tinv(0.025,49)
% tinv(0.975,49)
% pival=2*tcdf(z,49)

x=[35.0,36.0,36.3,36.8,37.2,37.6,38.3,39.1,39.3,39.6,39.8;
     37.2,38.1,38.2,37.9,37.6,38.3,39.2,39.4,39.7,39.9,39.9];
%cv.7
% %H0: mi1=mi2 HA: mi1!=mi2
% %p<0.05 => zamítáme
% %Na hladine významnosti 5% zamítáme hypotézu H0 o shodě parametrů p=0.0024
% %Na hladině významnosti 5% zamítáme hypotézu H0, p=0.0012. Prokázali jsme
% %snížení parametru po tepelné úpravě
% [h,p1,ci1,stav]=ttest(x(1,:),x(2,:),0.05)
% [h,p2,ci2,stav]=ttest(x(1,:),x(2,:),0.05,"left")

%cv.19
%[h,p,ci,stav]=ttest2(x(1,:),x(2,:),0.05,"both","equal")

%cv.23
%H0: xM=yM  HA: xM!=yM
%Přijímame hypotézu H0, že mediány jsou shodné
% x=[12,14,16,18,19,19,21,23,25,27,31,35,39,42];
% y=[15,18,21,24,27,29,32,35];
% [p,h,stats]=ranksum(x,y)

%cv.24
%H0: p1==p2 HA: p1!=p2
%H0: p1+0.1<=p2
n1=1240;
n2=741;
p1=325/1240;
p2=287/741;
%Na hladině významnosti 5% je zamítáme H0 shodnosti na vesnici a ve městě
T=(p1-p2)/sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
pvalue=2*min(normcdf(T,0,1),1-normcdf(T,0,1))


