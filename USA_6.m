clc
clear
close all

% % H0: x1=x2=x3=x4 HA: alespoň jeden se nerovná
% %Hypotézu H0 na hladině významnosti 5% je zamítnuta
% x1=[18,19,19,19,20,21,21,22,22,23,23,24,24,24,25,25,25,26,26,26,27,28];
% x2=[17,18,18,19,19,20,21,21,22,22,22,23,23,23,23,24,24,25,25,26,26,27,28,29] ;
% x3=[16,17,18,18,18,19,20,20,20,20,21,21,21,22,23,23,23,24,25,26,27,27,28,28,29,31];
% x4=[14,15,16,16,17,18,19,20,22,22,22,23,24,25,25,27,27,27,28,28,28,31,31,33,34];
% 
% skup1(1:22)=1;
% skup2(1:24)=2;
% skup3(1:26)=3;
% skup4(1:25)=4;
% data=[x1,x2,x3,x4]';
% group=[skup1,skup2,skup3,skup4]';
% 
% [p,stats]=vartestn(data,group,'on','classical')
% [p,stats]=vartestn(data,group,'on','robust')
%[p,anovatab,stats]=anova1(data,group,'on')

% %26
% X=importdata("08\P0826.mat");
% % H0: m1=m2=m3=m4=m5
% group1(1:100)=1;
% group2(1:100)=2;
% group3(1:100)=3;
% group4(1:100)=4;
% group5(1:100)=5;
% group=[group1,group2,group3,group4,group5]';
% %[p,anovatab,stats]=anova1(X,group,'on')

%28
X=importdata("08\P0828.mat");
%H0: m1=m2=m3=m4=m5 HA: alespoň jedna se nerovná
group1(1:100)=1;
group2(1:100)=2;
group3(1:100)=3;
group4(1:100)=4;
group5(1:100)=5;
group=[group1,group2,group3,group4,group5]';
[p,anovatab,stats]=anova1(X,group,"on"); %Hypotézu na hladině 5% nepříjímáme p=0.012
[comparison,means]=multcompare(stats)

%11 cv.19
% H0: data jsou v norm+ HA: data nejsou v normě
t=[37,54,81,123,156,213,254,289,345,512,731];

 [h,p,stats,critval]=lillietest(t,0.05)
