//
//  Storage.swift
//  Demo
//
//  Created by Ludovic Ollagnier on 04/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import Foundation

class Storage {

    private var storageArray = [Restaurant]()

    var allRestaurants: [Restaurant] {
        return storageArray
    }

    func add(_ restaurant: Restaurant) {
        storageArray.append(restaurant)
    }
}
