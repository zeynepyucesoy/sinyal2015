  function ff=frek(nota,oktav)  %arg�manlar� nota ve oktav olan frek fonksiyonu olu�turdum 
  notalar={'do','dod', 're', 'mib' ,'mi' ,'fa', 'fad', 'sol', 'sold', 'la', 'sib', 'si','sus'}; %notalar dizisi olu�turup notalar� ekledim.  
  referans=16.35;  %do notas�n�n 0.oktavdaki de�erini referans ald�m.  
  p=length(notalar); %p de�i�kenini notalar dizisinin uzunlu�una e�itledim.  
  if nargin<2 %arg�manlar�n say�s� 2 den k���kse  
       oktav=4; %oktav� 4 e e�itle  
  end  
 for i=0:8 %oktav i�in bir for olu�turdum ve her seferinde bir artt�rd�m.  
    if i==oktav %i'nin de�eri benim giri� yapt���m oktav'�n de�erine e�itse  
        for j=1:p %notalar dizindeki elemanlar i�in for d�ng�s� olu�turdum  
             if  size(nota)==size(notalar{j}) %arg�man olan nota boyutu e�it ise notalar dizisindeki j.elemana  
                if nota==notalar{j}%arg�man olan nota, notalar dizisindeki j. elemana e�itse  
                    if j==p%arg�man olan nota notalar dizisindeki 13. elemana e�itse  
                        ff=0; %frekans� 0 a e�itle.  
                    else 
                        ff=2^i*(2^((j-1)/12)*referans);%frekans� hesapl�yorum  
                    end  
                end   
            end  
         end  
     end  
  end  
  end  


