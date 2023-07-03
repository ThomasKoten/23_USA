clc
clear

%4.6
% binopdf(8,10,0.5)
% hygepdf(8,32,16,10) % nchoosek(16,8)*nchoosek(16,2)/nchoosek(32,10)
% (nchoosek(4,2)*nchoosek(4,3)*nchoosek(4,2)*nchoosek(4,1)*nchoosek(16,8))/nchoosek(32,10)
% mnpdf([2,2,3,1,2],[4/32,4/32,4/32,4/32,16/32])

 %4.7
% poisspdf(0,2)%10/100 * 20
% poisspdf(2,2)
% 1-poisscdf(5.5,2)

% lambda=5/10
% t=50
% poisscdf(11.5,25)
% poisspdf(20,25)
% 1-poisscdf(25.5,25)

%4.8
% h=hygepdf(2,49,6,6)
% binopdf(2,6,6/49)
% poisspdf(2,36/49)

% lambda=1500/1000
% poisspdf(4,lambda)
% poisspdf(0,lambda)*1000

%5
% x=importdata("05/P0512.mat");
% lambda=1/expfit(x)
% 
% x=importdata("05\P0517b.xlsx").List1(:,1)';
% cens=zeros(1,79);
% cens(80)=1;
% freq=ones(1,79);
% freq(80)=21;
% x(80)=10000;
% expfit(x,0.05,cens,freq)

%5.3
% x=importdata("05\P0521.mat");
% a=wblfit(x)

% a=79/100;
% cens(1:79)=0;
% freq(1:79)=1;
% x=importdata("05\P0521b.xlsx").List1(:,1);
% x(80)=10000;
% cens(80)=1;
% freq(80)=21;
% wblfit(x,0.05,cens', freq')

