Zeynep Y�cesoy
030112015
Sinyal Isleme
MATLAB ile Sentezleme


frek.m : Notalar�n frekans kar��l�klar�n� d�nd�ren fonksiyonu i�erir. Dosya tipi, bir matlab dosyasidir.
note.m : Ald��� arg�manlara g�re ��k���nda paketli bir sin�s sinyali olu�turan fonksiyonu i�erir. Dosya tipi, bir matlab dosyasidir.
notalar.png : Notalarin bulundugu resim dosyasi. Dosya tipi, bir resim dosyasidir.
sentez.m : Ses calmak icin gerekli kodlar bulunur.  Dosya tipi, bir matlab dosyasidir.
notalar.txt : M�zi�in notlar�. Dosya tipi, bir metin dosyasidir.

Notalarin arasindaki ili�kisel formul: 2^oktav*(2^((nota_indisi-1)/12)*16.35)
formul tablodaki ilk frekans degeri referans alinarak sutun bazinda *2, satir bazinda 2^((nota_indisi-1)/12) seklindeki artislar do�rultusunda formuluze edildi.


Notolar Do dan Si ye dogru gittikce frekanslari artmaktad�r. Bu frekans artimida her Do sesinde oktavlara bolunmektedir.
Her notanin 1 birimlik oktav artisi frekansin 2 ye katlanmasina sebep olmustur. 
�r:2 oktavlik Do sesi 65,41 frekansa sahipken 3 oktavlik Do sesi 65,41*2=130,8 (yaklasik) frekansa sahip olmustur.

