%% degerleri tanimland�, dosyadan deger okutuldu.
Fs=3600; % ornekleme frekans�na deger atand�.
 gecikme=round(Fs/10); % echo i�in gecikme suresi tan�mland�.
 notalar=[]; % notalar matrisi icin ilk deger atand�.
 duraklama=zeros(1,round(Fs/100)); %duraklama suresi 
 oktdegis=3; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-3,+3]. 
 dosya=fopen('notalar.txt','r'); %text dosyas�n� acar,'r':okumak i�in. 
 [nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %virg�l ile ayr�lm�s degiskenler okundu. 
 fclose(dosya); %text dosyas� kapat�ld�. 
 frekans=zeros(1,length(nota)); 
 %% programda oktav degistigi zaman;
 if oktdegis~=0 %oktdegis degiskeninde degisiklik yap�ld�g�nda  
   for j=1:length(oktav) %notalar.text'ten cekilen oktav degerleri dongu icerisinde degistirilecek. 
         oktav(j)=oktav(j)+oktdegis;  
   end 
 end 
 %% Notalar matrisi i�inde notlar�n sinyalini olusturmak icin;
 for i=1:length(nota) 
     frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cag�r�larak frekans degerleri hesapland�.  
     [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu cag�r�larakta sin sinyalleri cizildi. 
     notalar=[notalar sindalga duraklama]; %notalar�n sinyalleri aras�na bosluk eklenerek notalar matrisinde birlestirildi.
 end  
 %% echo eklemek icin;
 for i=1:length(notalar) %gecikme notalar uzunlugunu asmad�g� surece islenecek sart.
     if (i+gecikme)<length(notalar) %Fs, 10'da biri s�resince geciktirilip(gecikme)
                                     %++genli�i %30 oran�nda d���r�lerek kendisi ile topland�.
         notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i);  
     end 
 end 
 %% Sinyallerin tepe degerini normalize etmek icin;
 notalar = notalar/max(abs(notalar)); 
 %% Notalarin grafigini cizip, muzigi caldirmak icin;
 plot(notalar) 
 sound(notalar,Fs); 
