//
//  Restaurant.swift
//  Demo
//
//  Created by Ludovic Ollagnier on 04/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import Foundation

struct Restaurant: Equatable {

    let name: String
    let address: String
    var isFast: Bool
    var grade: Float

    static func ==(lhs: Restaurant, rhs: Restaurant) -> Bool {

        if lhs.name == rhs.name && lhs.address == rhs.address {
            return true
        }
        return false
    }
}
