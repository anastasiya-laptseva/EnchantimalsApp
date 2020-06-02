//
//  OnePersonageViewController.swift
//  EnchantimalsApp
//
//  Created by Anastasiya Laptseva on 6/2/20.
//  Copyright © 2020 Anastasiya Laptseva. All rights reserved.
//

import UIKit

class OnePersonageViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var person: Personage?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let pers = person else {
            return
        }
        setPersonage(name: pers.name, imageName: PersonageManager.shared.getImage(id: pers.id))
        // Do any additional setup after loading the view.
    }
    
    func setPersonage(name: String, imageName: String) {
        nameLabel.text = name
        imageView.image = UIImage(named: imageName)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
