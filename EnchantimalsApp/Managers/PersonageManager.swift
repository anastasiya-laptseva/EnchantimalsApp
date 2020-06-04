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
    let images = ["Andie", "Bevy", "Blyss", "Bree", "Bren", "Cailey", "Cambrie", "Cameo", "Cherish",  "Ciesta", "Clarita", "Danessa", "Dinah", "Dolche", "Ekaterina", "Fanci", "Felicity", "Fluffy", "Gillian", "Hawna", "Haydie",  "Hedda", "Hixbi", "Jessa", "Karina", "Larissa", "Liora", "Lluella", "Lorna", "Mayla", "Merit", "Naddie", "Ohana", "Patter", "Patterson", "Pawbry", "Pekki", "Petya", "Preena", "Prue", "Raelin", "Redward", "Saffi", "Sage", "Sancha", "Sandella", "Sashay", "Sela", "Sharlotte", "Starling", "Sybill", "Tadley", "Tamika", "Tanzie", "Taylie", "Winsley", "Zelena"]
    
    private init() {}
    
    func getImage(id: Int) -> String {
        let number = id - 1
        if number < 0 || number >= images.count {
            return ""
        }
        
        return images[number]
    }
}
