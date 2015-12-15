Zeynep Yücesoy
030112015
Sinyal Isleme
MATLAB ile sentezleme


frek.m : Istenilen nota ve oktavlarina gore frekansi donduren frek fonksiyonu yazildi.
note.m : Frekansi ve olcusu bilinen notanin sin sinyalini olusturan fonksiyonu yazildi.
notalar.png : Notalarin bulundugu resim dosyasi.
sentez.m : Bos dosya

Notalarin arasindaki iliþkisel formul: 2^oktav*(2^((nota_indisi-1)/12)*16.35)
formul tablodaki ilk frekans degeri referans alinarak sutun bazinda *2, satir bazinda 2^((nota_indisi-1)/12) seklindeki artislar doðrultusunda formuluze edildi.


Notolar Do dan Si ye dogru gittikce frekanslari artmaktadýr. Bu frekans artimida her Do sesinde oktavlara bolunmektedir.
Her notanin 1 birimlik oktav artisi frekansin 2 ye katlanmasina sebep olmustur. 
Ör:2 oktavlik Do sesi 65,41 frekansa sahipken 3 oktavlik Do sesi 65,41*2=130,8 (yaklasik) frekansa sahip olmustur.

