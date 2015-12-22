function [xx,tt]=note(frekans,vurus) %frekans� ve  vuru�u bilinen notan�n sin�s sinyalini d�nd�ren fonksiyonu tan�mland�
Fs=8192; %�rneklme frekans�na de�er atand�.
tt=0:1/Fs:((0.25-(1/Fs))/2); %t aral��� tan�mland�.
zz=0; %zarf matrisinin ilk de�eri atand�.
   xx=sin(2*pi*frekans*tt); %xx,sin�s sinyali fonksiyonu tan�mland�.
if length(xx)==length(zz)  % 
       zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))];
end
end

% [x,y]=note(110,1/8)
% plot(y,x)
% 
% zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))]
%    plot(y,zz1)
%     
% zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))]
% plot(y,zz2)
% zz3=zz1.*zz2
% carp=x.*zz3
% plot(y,carp)