Fs=3600; %8192 
 gecikme=round(Fs/10); 
 notalar=[]; 
 duraklama=Fs/10000; %duraklama suresi 
 oktdegis=3; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-3,+3]. 
 dosya=fopen('notalar.txt','r'); %text dosyas�n� acar,'r':okumak i�in. 
 [nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %bosluk ile ayr�lm�s degiskenler okundu. 
 fclose(dosya); %text dosyas� kapat�ld�. 
 frekans=zeros(1,length(nota)); 
 if oktdegis~=0 %oktdegis degiskeninde degisiklik yap�lmas� durumunda islenecek sart.  
   for j=1:length(oktav) %text'ten cekilen oktav degerleri dongu icerisinde degistirilecek. 
         oktav(j)=oktav(j)+oktdegis;  
   end 
 end 
 for i=1:length(nota) 
     frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cag�r�larak frekans degerleri hesapland�.  
     [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu cag�r�larakta sin sinyalleri cizildi. 
     notalar=[notalar sindalga duraklama]; 
 end   
 for i=1:length(notalar) 
     if (i+gecikme)<length(notalar) 
         notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i);  
     end 
 end 
 notalar = notalar/max(abs(notalar)); 
 plot(notalar) 
 sound(notalar,Fs); 
