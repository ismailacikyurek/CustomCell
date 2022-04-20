//
//  AdresVC.swift
//  siparisVer-Cell
//
//  Created by İSMAİL AÇIKYÜREK on 20.04.2022.
//

import UIKit


class AdresVC: UIViewController {
    @IBOutlet weak var lblodenecekTutar: UILabel!
    @IBOutlet weak var imageView2: UIImageView!
   
    var secilenYemek : [String]?
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        
        lblodenecekTutar.text = "Ödenecek Tutar : \(secilenYemek!.first!)"
       
        imageView2.image = UIImage(named: "\(secilenYemek!.last!)")
        btn.layer.cornerRadius = 30
    }
    

   

}
