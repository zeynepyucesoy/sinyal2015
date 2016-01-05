%% Fonksiyon tanýmlandý.
function [x,t]=note(f,olcu) %frekansi ve suresi bilinen notanin sinüs sinyalini donduren fonksiyon tanimlandi.
%% Degerler tanimlandi.
fs=8192; %örnekleme frekansi

topla=0; % toplan 0'a esitlendi.
harmonik={1 0.8 0.4 0.1}; % harmonik dizisi
t=0:1/fs:olcu-(1/fs); %t araligi
%% harmonikleri hesaplamak için;
for h=1:length(harmonik)
   x=harmonik{h}*sin(2*pi*f*t*h); %h.harmonik hesabi
   topla=topla+x;%harmonikler toplandi.
end
%% Zarf paketini oluþturmak icin;
   z1=linspace(0,1.5,length(t)/4); %attack suresi:1/4lük (t)surede 0'dan 1.5 katýna kadar arttý
   z2=linspace(1.5,1,length(t)/8); %decay suresi:sonraki 1/8lik (t)surede normal genliðine geri dondu.
   z3=linspace(1,1,length(t)/2);  %sustain suresi:sonraki 1/2lik sürede normal genliðinde devam etti.
   z4=linspace(1,0,length(t)/8); %release suresi:sonraki 1/8lik sürede normal genliðinden azalarak 0'a gitti.
   zarf=[z1 z2 z3 z4]; % zarf paketi olusturuldu.
   x=topla.*zarf;
end