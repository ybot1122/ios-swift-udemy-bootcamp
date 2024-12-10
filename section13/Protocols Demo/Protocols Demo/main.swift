protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("object takes off into air.")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("bird makes new bird in a shell")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("Eagle flaps wings and flies")
    }
    
    func soar() {
        print("Eagle glides in air")
    }
}

class Penguin: Bird {
    func swim() {
        print("penguin paddles thru water")
    }
}

struct Airplane: CanFly {
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myAirplane = Airplane()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myAirplane)

myAirplane.fly()
