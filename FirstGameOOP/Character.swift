//
//  Character.swift
//  FirstGameOOP
//
//  Created by Kacper Kowalski on 05.09.2016.
//  Copyright © 2016 Kacper Kowalski. All rights reserved.
//

import Foundation


class character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 20
    
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
        
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
             return false
        } else {
            return true
                
            }
        }
    }
    
    
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
    
        return true
    
    
    }



}