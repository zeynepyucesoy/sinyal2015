function [x,t]=note(f,dur);   % note fonksiyonu tanýmlandý
t=0:1/(100*f):dur;     %t aralýðý tanýmlandý
x=sin(2*pi*f*t);    %sin sinyali tanýmlandý
end