import UIKit

var greeting = "Hello, playground"
func loveCalculator() {
    
    let love = Int.random(in: 0...100)
    
    
    switch love {
    case ..<20:
        print("less than 20")
    case 20..<80:
        print("20 to 80")
    case 80...100:
        print("80 to 100")
    default:
        print("idk")
    }
}

loveCalculator()
loveCalculator()
loveCalculator()
loveCalculator()
loveCalculator()
