clc
clear

%5.4
% x=-10:1:10
% 
% z=normpdf(x,0,1)
% subplot(2,2,1)
% plot(z)
% z=normpdf(x,1,2)
% subplot(2,2,2)
% plot(z)
% z=normpdf(x,4,1)
% subplot(2,2,3)
% plot(z)
% z=normpdf(x,4,2)
% subplot(2,2,4)
% plot(z)

% norminv(0.2,5,2)
% norminv(0.5,5,2)
% normcdf(3.5,5,2)
% normcdf(8,5,2)

% g=normcdf(5,0,3)-normcdf(-2,0,3)
% binocdf(2.5,3,0.7)
% 
% norminv(0.7258,0,1)
% norminv(1-0.2118,0,1)
% 0.6*sig=57.2-mu
% 0.8*sig=59.6-mu

%6.2
% %7. Zjistit z rovnoměrného rozdělení x(střední hodnota) a s2(rozptyl)
% %   CLV platí n=1000
% % průměr N(1/2,1/12000)(mu,sigma2)
% 1-normcdf(0.520,1/2,1/sqrt(12000))

% x=90;
% s=10;
% %součet n=64
% %N(64*90,64*100)
% 1-normcdf(6000,5760,80)

% x=3
% s=2
% %součet N(400*3,400*4)
% normcdf(1000,1200,40)

% x=3.5;
% s=0;
% for i=1:6
%     s=s+power(i-3.5,2)/6;
% end
% %součet N(350,3500/12)
% normcdf(380.5,350,sqrt(3500/12))-normcdf(319.5,350,sqrt(3500/12))

% 1-binocdf(104.5,600,1/6)
% EX=600*1/6;
% DX=(600/6)*5/6;
% 1-normcdf(104.5,EX,sqrt(DX))
