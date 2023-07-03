clc
clear
close all

%H0: mi1=mi2=...=mi6  HA: neplatí H0
data=[ones(1,11),ones(1,8)*2,ones(1,14)*3,ones(1,5)*4,ones(1,7)*5,ones(1,5)*6];
E(1:6)=50/6;

%[h,pval,stats]=chi2gof(data,[0,1.5,2.5,3.5,4.5,5.5,7],E)

%lambda[zákazníci/hodina]
%E=lambda*t
%H0:data z Poissona HA: nejsou
% data=[0,0,0,ones(1,10),ones(1,15)*2,ones(1,12)*3,ones(1,17)*4,ones(1,10)*5,ones(1,11)*6,...
%     ones(1,9)*7,ones(1,5)*8,ones(1,5)*9,ones(1,4)*10,ones(1,5)*11];
% E=mean(data);
% [h,pval,stats]=chi2gof(data,'CDF',{@poisscdf,4.73})

%  X=xlsread("11\P1103.xlsx");
% LM=fitlm(X(:,1),X(:,2),"linear") %y ~ 3x+0.595

% x=[2,5,8,11,5,10,6]; y=[6,11,15,22,25,27,30];
% LM=fitlm(x,y,"linear")
% plot(LM)

X=xlsread("11\P1112.xlsx");
x=X(:,1);
y=X(:,2);
modelfun=@(a,x)a(1)./x+a(2);
beta=[1,1];
NLM=fitnlm(x,y,modelfun,beta)


