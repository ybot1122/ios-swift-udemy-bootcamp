protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegates: [AdvancedLifeSupport] = []
        
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegates.forEach { d in
            d.performCPR()
        }
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegates.append(self)
    }
    
    func performCPR() {
        print("Paramedic Performing chest compessions, 30 per second")
    }
}

class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegates.append(self)
    }
    
    func performCPR() {
        print("Doctor Performing chest compessions, 30 per second")
    }
    
    func useStethescope() {
        print("Listening for heart sounsds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Surgeon sings")
    }
    
    func useElectricDrill() {
        print("Whrr...")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
