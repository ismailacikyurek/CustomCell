//
//  Yemekler.swift
//  siparisVer-Cell
//
//  Created by İSMAİL AÇIKYÜREK on 20.04.2022.
//

import Foundation

class yemekler {
    var yemekAdi : String?
    var yemekFiyatı : String?
    var yemekFotosuAdi : String?
    
    init() {
        
    }
    
    init(yemekAdi : String,yemekFiyatı : String,yemekFotosuAdi : String) {
        self.yemekAdi = yemekAdi
        self.yemekFiyatı = yemekFiyatı
        self.yemekFotosuAdi = yemekFotosuAdi
    }
    
}
