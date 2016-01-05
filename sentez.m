%% degerleri tanimlandý, dosyadan deger okutuldu.
Fs=3600; % ornekleme frekansýna deger atandý.
 gecikme=round(Fs/10); % echo için gecikme suresi tanýmlandý.
 notalar=[]; % notalar matrisi icin ilk deger atandý.
 duraklama=zeros(1,round(Fs/100)); %duraklama suresi 
 oktdegis=3; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-3,+3]. 
 dosya=fopen('notalar.txt','r'); %text dosyasýný acar,'r':okumak için. 
 [nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %virgül ile ayrýlmýs degiskenler okundu. 
 fclose(dosya); %text dosyasý kapatýldý. 
 frekans=zeros(1,length(nota)); 
 %% programda oktav degistigi zaman;
 if oktdegis~=0 %oktdegis degiskeninde degisiklik yapýldýgýnda  
   for j=1:length(oktav) %notalar.text'ten cekilen oktav degerleri dongu icerisinde degistirilecek. 
         oktav(j)=oktav(j)+oktdegis;  
   end 
 end 
 %% Notalar matrisi içinde notlarýn sinyalini olusturmak icin;
 for i=1:length(nota) 
     frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cagýrýlarak frekans degerleri hesaplandý.  
     [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu cagýrýlarakta sin sinyalleri cizildi. 
     notalar=[notalar sindalga duraklama]; %notalarýn sinyalleri arasýna bosluk eklenerek notalar matrisinde birlestirildi.
 end  
 %% echo eklemek icin;
 for i=1:length(notalar) %gecikme notalar uzunlugunu asmadýgý surece islenecek sart.
     if (i+gecikme)<length(notalar) %Fs, 10'da biri süresince geciktirilip(gecikme)
                                     %++genliði %30 oranýnda düþürülerek kendisi ile toplandý.
         notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i);  
     end 
 end 
 %% Sinyallerin tepe degerini normalize etmek icin;
 notalar = notalar/max(abs(notalar)); 
 %% Notalarin grafigini cizip, muzigi caldirmak icin;
 plot(notalar) 
 sound(notalar,Fs); 
