//
//  enemy.swift
//  classesDemo
//
//  Created by Toby Liu on 12/1/24.
//

class Enemy {
    
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func takeDamage(amount: Int) {
        health = health - amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
    
}
