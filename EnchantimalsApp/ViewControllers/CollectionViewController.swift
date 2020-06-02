//
//  CollectionViewController.swift
//  EnchantimalsApp
//
//  Created by Anastasiya Laptseva on 6/2/20.
//  Copyright © 2020 Anastasiya Laptseva. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    var personage = [Personage(id: 1, name: "Blyss"),
                     Personage(id: 2, name: "Bren"),
                     Personage(id: 3, name: "Cameo"),
                     Personage(id: 4, name: "Cherish"),
                     Personage(id: 5, name: "Clarita"),
                     Personage(id: 6, name: "Dolche"),
                     Personage(id: 7, name: "Ekaterina"),
                     Personage(id: 8, name: "Ekaterina"),
                     Personage(id: 9, name: "Felicity"),
                     Personage(id: 10, name: "Gillian"),
                     Personage(id: 11, name: "Hixbi"),
                     Personage(id: 12, name: "Jessa"),
                     Personage(id: 13, name: "Karina"),
                     Personage(id: 14, name: "Liora"),
                     Personage(id: 15, name: "Lorna"),
                     Personage(id: 16, name: "Merit"),
                     Personage(id: 17, name: "Ohana"),
                     Personage(id: 18, name: "Pekki"),
                     Personage(id: 19, name: "Petya"),
                     Personage(id: 20, name: "Preena"),
                     Personage(id: 21, name: "Prue"),
                     Personage(id: 22, name: "Raelin"),
                     Personage(id: 23, name: "Saffi"),
                     Personage(id: 24, name: "Sancha"),
                     Personage(id: 25, name: "Sandella"),
                     Personage(id: 26, name: "Starling"),
                     Personage(id: 27, name: "Tanzie"),
                     Personage(id: 28, name: "Taylie"),
                     Personage(id: 29, name: "Winsley"),
                     Personage(id: 30, name: "Zelena")]
    let sectionCount = 2
    let segueId = "onePerson"
    var selectedPersonage: Personage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueId {
            guard let onePersonage = segue.destination as? OnePersonageViewController else { return }
            onePersonage.person = selectedPersonage
        }
    }

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedPersonage = personage[indexPath.section*sectionCount+indexPath.row]
        self.performSegue(withIdentifier: segueId, sender: self)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return personage.count/sectionCount
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return sectionCount
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PersonageCollectionViewCell else {
            return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        }
        let person = personage[indexPath.section*sectionCount+indexPath.row]
        cell.setPersonage(name: person.name, imageName: PersonageManager.shared.getImage(id: person.id))
//        SaveManager.shared.backgroundSwitch(controller: self, navigation: nil, views: [cell])
        return cell
    }
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

