//
//  File.swift
//  FirstGameOOP
//
//  Created by Kacper Kowalski on 06.09.2016.
//  Copyright © 2016 Kacper Kowalski. All rights reserved.
//

import Foundation

class Player1: character {
    
    private var _name = "Vuko"
        
        var name: String {
            get {
            return _name
                
            }
        }
        
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
        
        
    }
    
    
        
        
    
        
        
        
    
}