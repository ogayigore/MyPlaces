//
//  StarageManager.swift
//  MyPlaces
//
//  Created by Игорь Огай on 17.08.2020.
//  Copyright © 2020 Игорь Огай. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}

