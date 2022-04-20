//
//  ViewController.swift
//  siparisVer-Cell
//
//  Created by İSMAİL AÇIKYÜREK on 20.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var yemekListesi = [yemekler]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let y1 = yemekler(yemekAdi: "Ayran", yemekFiyatı: "3.00 TL", yemekFotosuAdi: "ayran")
        let y2 = yemekler(yemekAdi: "Baklava", yemekFiyatı: "13.00 TL", yemekFotosuAdi: "baklava")
        let y3 = yemekler(yemekAdi: "Fanta", yemekFiyatı: "23.00 TL", yemekFotosuAdi: "fanta")
        let y4 = yemekler(yemekAdi: "Izgara Somon", yemekFiyatı: "2.00 TL", yemekFotosuAdi: "izgarasomon")
        let y5 = yemekler(yemekAdi: "Izgara Balık", yemekFiyatı: "34.00 TL", yemekFotosuAdi: "izgaratavuk")
        let y6 = yemekler(yemekAdi: "Kadayıf", yemekFiyatı: "65.00 TL", yemekFotosuAdi: "kadayif")
        let y7 = yemekler(yemekAdi: "Kahve", yemekFiyatı: "21.00 TL", yemekFotosuAdi: "kahve")
        let y8 = yemekler(yemekAdi: "Köfte", yemekFiyatı: "25.00 TL", yemekFotosuAdi: "kofte")
        let y9 = yemekler(yemekAdi: "Lazanya", yemekFiyatı: "63.00 TL", yemekFotosuAdi: "lazanya")
        let y10 = yemekler(yemekAdi: "Makarna", yemekFiyatı: "43.00 TL", yemekFotosuAdi: "makarna")
        let y11 = yemekler(yemekAdi: "Pizza", yemekFiyatı: "34.00 TL", yemekFotosuAdi: "pizza")
        let y12 = yemekler(yemekAdi: "Su", yemekFiyatı: "6.00 TL", yemekFotosuAdi: "su")
        let y13 = yemekler(yemekAdi: "Sütlaç", yemekFiyatı: "43.00 TL", yemekFotosuAdi: "sutlac")
        let y14 = yemekler(yemekAdi: "Tiramisu", yemekFiyatı: "22.00 TL", yemekFotosuAdi: "tiramisu")
      
        yemekListesi = [y1,y2,y3,y4,y6,y5,y8,y9,y7,y10,y11,y12,y14,y13]
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}


extension ViewController : UITableViewDataSource,UITableViewDelegate,YemekSiparisVerButonProtocol {
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "odeme" {
            if let veri = sender as? [String] {
                
                let gidilecekVC = segue.destination as! AdresVC
                gidilecekVC.secilenYemek = veri
              
                
            }
        }
    }
    
    
    func butonclicked(indexpath: IndexPath) {
        
        let alert = UIAlertController(title: "Siparişiniz", message: "\(yemekListesi[indexpath.row].yemekAdi!) sepete eklemek istiyor musunuz? ", preferredStyle: UIAlertController.Style.alert)
        let okButon = UIAlertAction(title: "Ekle", style: UIAlertAction.Style.default) { [self] UIAlertAction in
            let gönderilecekYemekFotoAdi =  yemekListesi[indexpath.row].yemekFotosuAdi
            let gönderilecekYemekFiyati =  yemekListesi[indexpath.row].yemekFiyatı
            let gönderilecekYemek = [gönderilecekYemekFiyati,gönderilecekYemekFotoAdi]
        
          
            performSegue(withIdentifier: "odeme", sender: gönderilecekYemek)
           
        }
       
        let iptal = UIAlertAction(title: "iptal", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButon)
        alert.addAction(iptal)
        present(alert, animated: true)
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemekListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hücreCell", for: indexPath) as! hucreCell
        cell.lblyemekAdi.text = yemekListesi[indexPath.row].yemekAdi
        cell.lblyemekFiyati.text = yemekListesi[indexPath.row].yemekFiyatı
        cell.imageView1.image = UIImage(named: "\(yemekListesi[indexPath.row].yemekFotosuAdi!)")
        cell.butonTiklama = self
        cell.indexpath = indexPath
        return cell
    }
   
    
}
