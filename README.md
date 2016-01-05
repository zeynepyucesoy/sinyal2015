Zeynep Yücesoy
030112015
Sinyal Isleme
MATLAB ile Sentezleme


frek.m : Notalarýn frekans karþýlýklarýný döndüren fonksiyonu içerir. Dosya tipi, bir matlab dosyasidir.
note.m : Aldýðý argümanlara göre çýkýþýnda paketli bir sinüs sinyali oluþturan fonksiyonu içerir. Dosya tipi, bir matlab dosyasidir.
notalar.png : Notalarin bulundugu resim dosyasi. Dosya tipi, bir resim dosyasidir.
sentez.m : Ses calmak icin gerekli kodlar bulunur.  Dosya tipi, bir matlab dosyasidir.
notalar.txt : Müziðin notlarý. Dosya tipi, bir metin dosyasidir.

Notalarin arasindaki iliþkisel formul: 2^oktav*(2^((nota_indisi-1)/12)*16.35)
formul tablodaki ilk frekans degeri referans alinarak sutun bazinda *2, satir bazinda 2^((nota_indisi-1)/12) seklindeki artislar doðrultusunda formuluze edildi.


Notolar Do dan Si ye dogru gittikce frekanslari artmaktadýr. Bu frekans artimida her Do sesinde oktavlara bolunmektedir.
Her notanin 1 birimlik oktav artisi frekansin 2 ye katlanmasina sebep olmustur. 
Ör:2 oktavlik Do sesi 65,41 frekansa sahipken 3 oktavlik Do sesi 65,41*2=130,8 (yaklasik) frekansa sahip olmustur.

