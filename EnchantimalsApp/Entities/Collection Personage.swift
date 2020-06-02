//
//  Collection Personage.swift
//  EnchantimalsApp
//
//  Created by Anastasiya Laptseva on 6/2/20.
//  Copyright © 2020 Anastasiya Laptseva. All rights reserved.
//

import UIKit

class PersonageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func setPersonage(name: String, imageName: String) {
        label.text = name
        imageView.image = UIImage(named: imageName)
    }
}
