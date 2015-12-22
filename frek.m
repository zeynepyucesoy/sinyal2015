function ff= frek(nota,oktav)
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'};%notalarý bir matrise atýyoruz tüm notalarý ayný boyutta olacak þekilde.
%c=Do# e=Mi Bemol(Bb) f=Fa# g=Sol# b=Si Bemol
p=length(notalar);%matristeki notalarýn sayýsý
referans=16.35;%referans olarak belirlenen frekans
if nargin<2 %girilen arguman sayýsýnýn 2'den az olma durumu
  oktav=4;
     
    for okt=0:8 %her oktavda notalarý hesaplamak için for döngüsü kulandým.
        if okt==oktav %eðer döngüden gelen oktav deðeri istenen oktav deðerine eþitse
            for j=1:p%dizideki notalarýn indexlerini döndüren for döngüsü
                if size(nota)==size(notalar{j})
                if nota==notalar{j}%argüman olarak girilen nota adý dizinin j.elemanýyla ayný ise
                ff=2^okt*(2^((j-1)/12)*referans); %frenkans hesaplanýr
                if size(nota)==size(notalar{13})%argüman olan nota boyutu eþit ise notalar dizisindeki 13.elemana
                  if nota==notalar{13}%argüman olan nota notalar dizisindeki 13. elemana eþitse
                      ff=0; %frekansý 0 a eþitle.
                  end
                  end
                end
                end  
                
            end
        
        end
    end
    
end


%f=frek('Dod',2) %fonksiyonu çaðýrýyor
