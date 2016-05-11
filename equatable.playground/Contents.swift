//: Playground - noun: a place where people can play

import Cocoa

class Patient: Equatable {
    
    let name: String
    let fingerAvulsion: Bool
    
    init(name: String, fingerAvulsion: Bool) {
    
    self.name = name
    self.fingerAvulsion = fingerAvulsion
        
    }
    
    
}

func ==(lhs: Patient, rhs: Patient) -> Bool {
    
    return lhs.name == rhs.name && lhs.fingerAvulsion == rhs.fingerAvulsion
}

let person1 = Patient(name: "Axton", fingerAvulsion: true)
let person2 = Patient(name: "Grimm", fingerAvulsion: false)
let person3 = Patient(name: "Thatcher", fingerAvulsion: true)
let person4 = Patient(name: "Knox", fingerAvulsion: false)

if person1 == person3 {
    print("FingerAvulsion")
} else {
    print("FingerAvulsion False")
}


