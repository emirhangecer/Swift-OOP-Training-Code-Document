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
