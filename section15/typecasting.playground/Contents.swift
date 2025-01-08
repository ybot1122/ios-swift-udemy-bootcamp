import Foundation

class Animal {
    var name: String
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print ("breathing underwater")
    }
}

let a = Human(n: "a")
let b = Human (n: "b")
let c = Fish(n: "Nemo")

let neighbours = [a, b, c]
let neighbour1 = neighbours[0]

if neighbour1 is Human {
    print("Neighbor index 0 is human")
}


func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            
            let fish = animal as! Fish
            fish.breatheUnderWater()
        }
    }
}

findNemo(from: neighbours)

let fish = neighbours[1] as? Fish
fish?.breatheUnderWater()

if let fishy = neighbours[1] as? Fish {
    fish?.breatheUnderWater()
}
