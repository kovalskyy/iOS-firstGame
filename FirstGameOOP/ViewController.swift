//
//  ViewController.swift
//  FirstGameOOP
//
//  Created by Kacper Kowalski on 05.09.2016.
//  Copyright © 2016 Kacper Kowalski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var player1Img: UIImageView!
    
    
    @IBOutlet weak var player2Img: UIImageView!
    
    
    @IBOutlet weak var onAttackBtnTappedP2: UIButton!
    
    
    @IBOutlet weak var onAttackBtnTappedP1: UIButton!
    
    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var restartBtn: UIButton!
    

    var player: Player1!
    var enemy: Player2!
    let delay = 2.0
    var timer = NSTimer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player1(name: "Vuko", hp: 230, attackPwr: 30)
        
        enemy = Player2(startingHp: 200, attackPwr: 35)
        
    }

    
    @IBAction func onAttackBtnTappedP1(sender: AnyObject) {
    
        onAttackBtnTappedP2.hidden = true
        
        
        
        if enemy.attemptAttack(player.attackPwr) {
            
            printLbl.text = " Attacked \(enemy.type) for \(player.attackPwr) HP "
            
            timer = NSTimer.scheduledTimerWithTimeInterval(delay, target: self, selector: #selector(freezeAttack), userInfo: nil, repeats: false)
            
        }
    
    
        if !enemy.isAlive {
            printLbl.text = " 300 Spartans has won!"
            player2Img.hidden = true
            restartBtn.hidden = false
            
            
            
           
            }
        
        
        }
    
    
    @IBAction func onAttackBtnTappedP2(sender: AnyObject) {
        
        onAttackBtnTappedP1.hidden = true
        
       if player.attemptAttack(enemy.attackPwr) {
            
            printLbl.text = " Attacked \(player.name) for \(enemy.attackPwr) HP "
        
        timer = NSTimer.scheduledTimerWithTimeInterval(delay, target: self, selector: #selector(freezeAttack), userInfo: nil, repeats: false)
        
       }
        
        
    
            if !player.isAlive {
            printLbl.text = " Horde has won!"
            player1Img.hidden = true
            restartBtn.hidden = false
                

    
              
                }
                
                
        }
    

    @IBAction func onRestartBtnTapped(sender: UIButton) {
        
        if isGameOver() {
            restartGame()
        }
        
        
    }
    
    
    
    
    func restartGame () {
        
    
            
        printLbl.text = " Let's do it one more time - Fight!"
        self.viewDidLoad()
        player2Img.hidden = false
        onAttackBtnTappedP2.hidden = false
        player1Img.hidden = false
        onAttackBtnTappedP1.hidden = false
        restartBtn.hidden = true
        
        
    
    
    }
    
    func isGameOver () -> Bool {
        if player.hp <= 0 || enemy.hp <= 0 {
            
          
            
            return true
            
        } else {
            return false
        }
        
        
        
    }
    
  
    func freezeAttack () {
        
        onAttackBtnTappedP2.hidden = false
        onAttackBtnTappedP1.hidden = false
        
            
        
            
        
    
    
        
    }
        
        
    


    


}

