Fs=3600; %8192 
 gecikme=round(Fs/10); 
 notalar=[]; 
 duraklama=Fs/10000; %duraklama suresi 
 oktdegis=3; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-3,+3]. 
 dosya=fopen('notalar.txt','r'); %text dosyasýný acar,'r':okumak için. 
 [nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %bosluk ile ayrýlmýs degiskenler okundu. 
 fclose(dosya); %text dosyasý kapatýldý. 
 frekans=zeros(1,length(nota)); 
 if oktdegis~=0 %oktdegis degiskeninde degisiklik yapýlmasý durumunda islenecek sart.  
   for j=1:length(oktav) %text'ten cekilen oktav degerleri dongu icerisinde degistirilecek. 
         oktav(j)=oktav(j)+oktdegis;  
   end 
 end 
 for i=1:length(nota) 
     frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cagýrýlarak frekans degerleri hesaplandý.  
     [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu cagýrýlarakta sin sinyalleri cizildi. 
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
