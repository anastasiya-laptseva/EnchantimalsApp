//
//  PersonageManager.swift
//  EnchantimalsApp
//
//  Created by Anastasiya Laptseva on 6/2/20.
//  Copyright © 2020 Anastasiya Laptseva. All rights reserved.
//

import UIKit

class PersonageManager {
    
    static let shared = PersonageManager()
    let images = ["Blyss", "Bren", "Cameo", "Cherish", "Clarita", "Dolche", "Ekaterina", "Fanci", "Felicity", "Gillian", "Hixbi", "Jessa", "Karina", "Liora", "Lorna", "Merit", "Ohana", "Pekki", "Petya", "Preena", "Prue", "Raelin", "Saffi", "Sancha", "Sandella", "Starling", "Tanzie", "Taylie", "Winsley", "Zelena"]
    
    private init() {}
    
    func getImage(id: Int) -> String {
        let number = id - 1
        if number < 0 || number >= images.count {
            return ""
        }
        
        return images[number]
    }
}
