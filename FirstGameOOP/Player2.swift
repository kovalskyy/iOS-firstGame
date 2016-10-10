//
//  Player2.swift
//  FirstGameOOP
//
//  Created by Kacper Kowalski on 06.09.2016.
//  Copyright © 2016 Kacper Kowalski. All rights reserved.
//

import Foundation

class Player2: character {
    
    var type: String {
        return "Gul'dan"
    }
    
    convenience init(type: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
    }
    
    
    
    
    
    
}