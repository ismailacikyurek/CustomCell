//
//  huceCell.swift
//  siparisVer-Cell
//
//  Created by İSMAİL AÇIKYÜREK on 20.04.2022.
//

import UIKit

protocol YemekSiparisVerButonProtocol {
    func butonclicked(indexpath : IndexPath)
}


class hucreCell: UITableViewCell {
    
    
    @IBOutlet weak var sipatrisBtn: UIButton!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var lblyemekAdi: UILabel!
    @IBOutlet weak var lblyemekFiyati: UILabel!
    
    var butonTiklama : YemekSiparisVerButonProtocol?
    var indexpath : IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
 
    

    @IBAction func BtnSiparis(_ sender: Any) {
        butonTiklama?.butonclicked(indexpath: indexpath!)
        
    
    }
    
}
