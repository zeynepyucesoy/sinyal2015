function [x,t]=note(f,dur);   % note fonksiyonu tan�mland�
t=0:1/(100*f):dur;     %t aral��� tan�mland�
x=sin(2*pi*f*t);    %sin sinyali tan�mland�
end