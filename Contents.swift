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
}

let beyza = Fonksiyonlar()

beyza.iltifat1()

let gelenSonuc = beyza.iltifat2()
print("Gelen Sonuç: \(gelenSonuc)")
