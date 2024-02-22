*Update Magicbook*
Dear member, Latihan magicbook sekarang hanya ada di 1 projek ini saja yaa.
Untuk scores-nya, saya reset lagi jadi 0.

Next update, selain technical test,
Saya juga mau update Magicbook-nya supaya ada kuis seputar pertanyaan2 teknis yang sering ditanyakan Ketika interview. 

Berikut panduan untuk mengerjakannya yaa!

---
1. Clone repo ini:
```
git clone https://github.com/denyocrworld/magicbook_pro
```
2. Ketikkan perintah ini di terminal:
```
dart pub get
```
3. Jalankan MagicbookPro di real device android atau windows desktop
4. Login dengan akun member
5. Buka file berikut dan kerjakan sesuai instruksi di dalamnya!
```
onButtonSaveClicK() {
    Navigator.push(
        Get.currentContext,
        MaterialPageRoute(builder: (context) => DashboardView()),
    );
}
```

Lebih baik lagi, kita bisa membuat custom navigation kita sendiri.
```
onButtonSaveClicK() {
    Get.to(DashboardView());
}
```


## Reuseable Widget
Saat ini fokus utama kami adalah membuat Reuseable Widget terkait Form. Intinya kami ingin mempermudah pembuatan Form di Flutter, yang terkadang itu terlalu rumit jika dibandingkan dengan pembuatan Form di HTML misalnya.

Dengan Hyper UI, kamu bisa membuat Form dengan lebih cepat dan mudah.
Saat ini sudah tersedia:
```
QTextField
QNumberField
QMemoField
QDatePicker
QTimePicker
QImagePicker

QDropdown
QCheckField
QRadioField
QSwitch
QAutoComplete

QImagePicker
QRatingField
QLocationPicker
```
<hr/>

## Screenshots

<img src="https://i.ibb.co/8m30PWv/1.png" style="width: 240px;"/><br/>
<img src="https://i.ibb.co/NjqM6Cd/2.png" style="width: 240px;"/><br/>
<img src="https://i.ibb.co/VmWGt9J/3.png" style="width: 240px;"/><br/>
<hr/>

* snippet update
