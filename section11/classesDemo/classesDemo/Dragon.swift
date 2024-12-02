//
//  Dragon'.swift
//  classesDemo
//
//  Created by Toby Liu on 12/1/24.
//

class Dragon: Enemy {
    
    var wingSpan = 2
    
 
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly forwards!")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire for 10 dmg")
    }
}
