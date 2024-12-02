//
//  enemy.swift
//  classesDemo
//
//  Created by Toby Liu on 12/1/24.
//

class Enemy {
    
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
    
}
