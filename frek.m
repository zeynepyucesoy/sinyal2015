function ff=frek(nota,oktav) %girilen nota ve oktav degerine gore frekans hesaplayan fonksiyon tanimi
notalar={'C' 'c' 'D' 'd' 'E' 'F' 'f' 'G' 'g' 'A' 'a' 'B'};%A=La,a(A#,Bb)=#La,B=Si,
%C=Do,c(C#,Db)=#Do,D=Re,d(D#,Eb)=#Re,E=Mi,F=Fa,f(F#,Gb)=#Fa,G=Sol,g(G#,Ab)=#Sol
referans=16.35;    %formul icin ilk deger atamasi
p=length(notalar); %notalar dizisinin eleman sayisi 
for okt=0:8        %okt(oktav) degerini 0'dan 8(dahil)'e kadar artýrma islemi
    if okt==oktav  %girilen oktav degerinin okt degeriyle esitlenmesi halinde
        for j=1:p  %++dizi eleman indisinin artýrýmý
            if nota==notalar{j} %girilen notanin dizideki indisinin bulunmasi
                ff=2^okt*(2^((j-1)/12)*referans); %oktav ve nota indisine bagli olarak
            end                                   %++frekansi hesaplayan formul
        end
    end
end
end