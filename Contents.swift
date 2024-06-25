import UIKit

class Araba {
    
    var renk:String?
    var hız:Int?
    var calısıyorMu:Bool?
    

    
    init(renk: String, hız: Int, calısıyorMu: Bool) {
        self.renk = renk
        self.hız = hız
        self.calısıyorMu = calısıyorMu
    }
    
    func calistir(){
        calısıyorMu = true
        hız = 5
    }
    
    func durdur(){
        calısıyorMu = false
        hız = 0
    }
    
    func bilgiAl(){
        print("-----------------")
        print("Renk: \(renk!)")
        print("hız: \(hız!)")
        print("Çalışıyor mu: \(calısıyorMu!)")

    }
}
var bmw = Araba(renk: "kırmızı", hız: 100, calısıyorMu: true)

bmw.renk = "kırmızı"
bmw.hız = 100
bmw.calısıyorMu = true

bmw.bilgiAl()
bmw.durdur()
bmw.calistir()
bmw.bilgiAl()

var sahin = Araba(renk: "beyaz", hız: 0, calısıyorMu: false)

sahin.renk = "beyaz"
sahin.hız = 0
sahin.calısıyorMu = false

sahin.bilgiAl()


class Fonksiyonlar {
    //Geri dönüş değeri olmayan (void)
    func iltifat1(){
        let sonuc = "Seni seviom Beyza"
        print(sonuc)
    }
    //Geri dönüş değeri olan (return)
    func iltifat2() -> String {
        let sonuc = "Seni seviom Beyza"
        return sonuc
    }
    //Parametre girişi olan
    func iltifat3(isim:String){
        let sonuc = "Seni seviom \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1: Int, sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading
    func carpma(sayi1: Int, sayi2:Int) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    func carpma(sayi1: Double, sayi2:Double) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    func carpma(sayi1: Int, sayi2:Int, isim:String) {
        print("Çarpma : \(sayi1 * sayi2) - işlemi yapan: \(isim)")
    }
}

let beyza = Fonksiyonlar()

beyza.iltifat1()

let gelenSonuc = beyza.iltifat2()
print("Gelen Sonuç: \(gelenSonuc)")

beyza.iltifat3(isim: "Beyza")

let gelenToplam = beyza.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam: \(gelenToplam)")

beyza.carpma(sayi1: 20, sayi2: 10)

beyza.carpma(sayi1: 10, sayi2: 10, isim: "beyza")

//Static Değişkenler ve metodlar

class Asinifi {
    var x = 10
    
    func metod() {
        print("metod çalıştı")
    }
}

let a = Asinifi()

print(a.x)

a.metod()


//Enumeration

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretiHesapla(boyut: KonserveBoyut, adet: Int){
    switch boyut {
    case .kucuk: print("Fiyat \(adet * 13)₺")
    case .orta: print("Fiyat \(adet * 24)₺")
    case .buyuk: print("Fiyat \(adet * 45)₺")
    }
}

ucretiHesapla(boyut: .orta, adet: 100)

//Composition
class Kategoriler {
    
    var kategori_id: Int?
    var kategori_ad: String?
    
    init(kategori_id: Int, kategori_ad: String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id: Int?
    var yönetmen_ad: String?
    
    init(yonetmen_id: Int, yönetmen_ad: String) {
        self.yonetmen_id = yonetmen_id
        self.yönetmen_ad = yönetmen_ad
    }
}

class Filmler{
    
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id: Int, film_ad: String, film_yil: Int, kategori: Kategoriler, yonetmen: Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yönetmen_ad: "Nuri Bilge Ceylan")
let y2 = Yonetmenler(yonetmen_id: 2, yönetmen_ad: "Quantin Trantino")
let y3 = Yonetmenler(yonetmen_id: 3, yönetmen_ad: "Christoper Nolan")


let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2006, kategori: k1, yonetmen: y2)

print("Film id: \(f1.film_id!)")
print("Film ad: \(f1.film_ad!)")
print("Film yıl: \(f1.film_yil!)")
print("Film kategori: \(f1.kategori!.kategori_ad!)")
print("Film yönetmeni: \(f1.yonetmen!.yönetmen_ad!)")

