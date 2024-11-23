import UIKit

struct Town {
    let name: String
    var citizens : [String]
    var resources : [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defenses increased")
    }
    
    mutating func harvestRice() {
        resources["Rice"] = 100
    }
}

var myTown = Town(
    name: "TobyLand",
    citizens: ["Keanu", "John"],
    resources: ["Grain": 100]
)

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"] ?? 0) of grain")

myTown.citizens.append("Keanu Reeves")
print(myTown.citizens.count)

myTown.fortify()

var ghostTown = Town(name: "Ghosty Ghost", citizens: [], resources: ["Tumbleweed": 1])

ghostTown.harvestRice()
print(ghostTown.resources)
