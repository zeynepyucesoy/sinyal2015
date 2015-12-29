fs=8192; %�rnekleme frekans�n� tan�mlad�m
duraklama=fs*(1/100); %duraklama tan�mlad�m
oktav_degeri=0; %oktav degerinde degisiklik olmama durumu.
oktavdegis=0; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-1,+1].
notalar={}; %notalar dizisi olu�turdum
dosya=fopen('notalar.txt'); %notalar.txt dosyas�n� okumak a�ar.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %notalar.txt deki de�erleri okur
fclose(dosya);%dosyay� kapat�r.

if oktav_degeri~=oktavdegis %oktdegis degiskeninde degisiklik yap�lmas� durumunda islenecek sart. 
    for j=1:length(oktav) %text'ten cekilen oktav degerleri dongu icerisinde degistirilecek.
        oktav(j)=oktav(j)+oktavdegis; %oktav� artt�r�r
    end
end

for i=1:length(nota)
f=frek(nota{i},oktav(i)); %notalar.txt deki notalar�n frekanslar�n� hesaplar
[topla,t]=note(f,olcu{i}); %frekans ve olcuye g�re sinyal olu�turur.
t=0:1/fs:olcu{i}-(1/fs); %t aral��� tan�mlad�m.
notalar{i}=f; %notalar dizisinin ilk eleman�na frekans
notalar{i+1}=duraklama; %ikinci eleman�na duraklama s�resini atad�m.
plot(t,f,t,duraklama) %frekans ve duraklama s�resini �izdirdim.
plot(t,f,t,echo,t,duraklama) %frekans, echo ve duraklama s�resini �izdirdim.
sound(echo)%ses �almak i�in
end