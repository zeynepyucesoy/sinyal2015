  function ff=frek(nota,oktav)  %argümanlarý nota ve oktav olan frek fonksiyonu oluþturdum 
  notalar={'do','dod', 're', 'mib' ,'mi' ,'fa', 'fad', 'sol', 'sold', 'la', 'sib', 'si','sus'}; %notalar dizisi oluþturup notalarý ekledim.  
  referans=16.35;  %do notasýnýn 0.oktavdaki deðerini referans aldým.  
  p=length(notalar); %p deðiþkenini notalar dizisinin uzunluðuna eþitledim.  
  if nargin<2 %argümanlarýn sayýsý 2 den küçükse  
       oktav=4; %oktavý 4 e eþitle  
  end  
 for i=0:8 %oktav için bir for oluþturdum ve her seferinde bir arttýrdým.  
    if i==oktav %i'nin deðeri benim giriþ yaptýðým oktav'ýn deðerine eþitse  
        for j=1:p %notalar dizindeki elemanlar için for döngüsü oluþturdum  
             if  size(nota)==size(notalar{j}) %argüman olan nota boyutu eþit ise notalar dizisindeki j.elemana  
                if nota==notalar{j}%argüman olan nota, notalar dizisindeki j. elemana eþitse  
                    if j==p%argüman olan nota notalar dizisindeki 13. elemana eþitse  
                        ff=0; %frekansý 0 a eþitle.  
                    else 
                        ff=2^i*(2^((j-1)/12)*referans);%frekansý hesaplýyorum  
                    end  
                end   
            end  
         end  
     end  
  end  
  end  


