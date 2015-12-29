fs=8192; %örnekleme frekansýný tanýmladým
duraklama=fs*(1/100); %duraklama tanýmladým
oktav_degeri=0; %oktav degerinde degisiklik olmama durumu.
oktavdegis=0; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-1,+1].
notalar={}; %notalar dizisi oluþturdum
dosya=fopen('notalar.txt'); %notalar.txt dosyasýný okumak açar.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %notalar.txt deki deðerleri okur
fclose(dosya);%dosyayý kapatýr.

if oktav_degeri~=oktavdegis %oktdegis degiskeninde degisiklik yapýlmasý durumunda islenecek sart. 
    for j=1:length(oktav) %text'ten cekilen oktav degerleri dongu icerisinde degistirilecek.
        oktav(j)=oktav(j)+oktavdegis; %oktavý arttýrýr
    end
end

for i=1:length(nota)
f=frek(nota{i},oktav(i)); %notalar.txt deki notalarýn frekanslarýný hesaplar
[topla,t]=note(f,olcu{i}); %frekans ve olcuye göre sinyal oluþturur.
t=0:1/fs:olcu{i}-(1/fs); %t aralýðý tanýmladým.
notalar{i}=f; %notalar dizisinin ilk elemanýna frekans
notalar{i+1}=duraklama; %ikinci elemanýna duraklama süresini atadým.
plot(t,f,t,duraklama) %frekans ve duraklama süresini çizdirdim.
plot(t,f,t,echo,t,duraklama) %frekans, echo ve duraklama süresini çizdirdim.
sound(echo)%ses çalmak için
end