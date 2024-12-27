import Foundation
import UIKit

let fruits = ["Apple", "pear", "orange"]

let fruitsSet: Set = ["Apple", "pear", "orange"]

for fruit in fruits {
    print(fruit)
}

for fruit in fruitsSet {
    print(fruit)
}


let contacts = ["Adam": 1234, "James": 4992, "Amy": 019284]

for person in contacts {
    print(person.value)
}

let word = "dadaskdjadlkjsldjalkjakdd30ojvmnca"
for letter in word {
    print(letter)
}

let halfOpenRange = 1..<5
let closedRange = 1...5

for _ in halfOpenRange {
    print("loop runnning")
}

var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1

/*
while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting...")
}

 */
