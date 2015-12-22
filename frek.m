function ff= frek(nota,oktav)
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'};%notalar� bir matrise at�yoruz t�m notalar� ayn� boyutta olacak �ekilde.
%c=Do# e=Mi Bemol(Bb) f=Fa# g=Sol# b=Si Bemol
p=length(notalar);%matristeki notalar�n say�s�
referans=16.35;%referans olarak belirlenen frekans
if nargin<2 %girilen arguman say�s�n�n 2'den az olma durumu
  oktav=4;
     
    for okt=0:8 %her oktavda notalar� hesaplamak i�in for d�ng�s� kuland�m.
        if okt==oktav %e�er d�ng�den gelen oktav de�eri istenen oktav de�erine e�itse
            for j=1:p%dizideki notalar�n indexlerini d�nd�ren for d�ng�s�
                if size(nota)==size(notalar{j})
                if nota==notalar{j}%arg�man olarak girilen nota ad� dizinin j.eleman�yla ayn� ise
                ff=2^okt*(2^((j-1)/12)*referans); %frenkans hesaplan�r
                if size(nota)==size(notalar{13})%arg�man olan nota boyutu e�it ise notalar dizisindeki 13.elemana
                  if nota==notalar{13}%arg�man olan nota notalar dizisindeki 13. elemana e�itse
                      ff=0; %frekans� 0 a e�itle.
                  end
                  end
                end
                end  
                
            end
        
        end
    end
    
end


%f=frek('Dod',2) %fonksiyonu �a��r�yor
